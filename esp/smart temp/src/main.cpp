 #include <Arduino.h>
#include <WiFi.h>
#include <Preferences.h>
#include <WebServer.h>
#include <ArduinoJson.h>
#include <math.h>

Preferences preferences;
WebServer server(80);

// ---------------- PINS ----------------
static const int PIN_NTC = 4;
static const int PIN_BUTTON = 5;
static const int PIN_LED_WIFI = 6;
static const int PIN_LED_GREEN_BATTERY = 7;
static const int PIN_LOWER_RELAY = 15;
static const int PIN_UPPER_RELAY = 16;

// ---------------- NTC CONFIG ----------------
static const float SERIES_RESISTOR = 10000.0f;
static const float NOMINAL_RESISTANCE = 10000.0f;
static const float NOMINAL_TEMPERATURE = 25.0f + 273.15f;
static const float BETA_COEFFICIENT = 3435.0f;
static const float ADC_MAX = 4095.0f;
static const float VCC = 3.3f;

// ---------------- BUTTON TIMING ----------------
static const unsigned long LONG_PRESS_MS = 10000;
static const unsigned long SHORT_PRESS_MIN_MS = 50;

// ---------------- GLOBALS ----------------
bool wifiConnected = false;
bool buttonWasPressed = false;
unsigned long buttonPressStart = 0;
bool longPressHandled = false;
bool apModeStarted = false;
int lastTemperature = 0;
String savedSsid;
String savedPass;

// ---------------- STORAGE ----------------
void loadWiFiCredentials() {
  preferences.begin("wifi-store", false);

  savedSsid = preferences.isKey("ssid") ? preferences.getString("ssid", "") : "";
  savedPass = preferences.isKey("pass") ? preferences.getString("pass", "") : "";

  preferences.end();

  Serial.print("Saved SSID: ");
  Serial.println(savedSsid.isEmpty() ? "(none)" : savedSsid);
}

void saveWiFiCredentials(const String& ssid, const String& pass) {
  preferences.begin("wifi-store", false);
  preferences.putString("ssid", ssid);
  preferences.putString("pass", pass);
  preferences.end();

  savedSsid = ssid;
  savedPass = pass;

  Serial.println("WiFi credentials saved");
}

void clearWiFiCredentials() {
  preferences.begin("wifi-store", false);
  preferences.clear();
  preferences.end();

  savedSsid = "";
  savedPass = "";

  Serial.println("WiFi credentials cleared");
}

// ---------------- TEMP ----------------
float readTemperatureC() {
  int adc = analogRead(PIN_NTC);

  if (adc <= 0 || adc >= 4095) {
    return NAN;
  }

  float vo = adc * (VCC / ADC_MAX);

  if (vo <= 0.01f || vo >= (VCC - 0.01f)) {
    return NAN;
  }

  // Assumes:
  // 3.3V -> 10k resistor -> ADC -> NTC -> GND
  float rt = SERIES_RESISTOR * vo / (VCC - vo);

  float invT = (1.0f / NOMINAL_TEMPERATURE) +
               ((1.0f / BETA_COEFFICIENT) * log(rt / NOMINAL_RESISTANCE));

  float tk = 1.0f / invT;
  float tc = tk - 273.15f;

  lastTemperature = (int)round(tc);

  return tc;
}
void setRelayState(float tempC) {
  if (isnan(tempC)) {
    // Safe state: both OFF
    digitalWrite(PIN_LOWER_RELAY, HIGH); 
    digitalWrite(PIN_UPPER_RELAY, HIGH);
    return;
  }

  if (tempC < 40.0f) {
    // lower heater ON, upper OFF
    digitalWrite(PIN_LOWER_RELAY, LOW);   // active LOW
    digitalWrite(PIN_UPPER_RELAY, HIGH);
  } else {
    // lower heater OFF, upper ON
    digitalWrite(PIN_LOWER_RELAY, HIGH);
    digitalWrite(PIN_UPPER_RELAY, LOW);   // active LOW
  }
}
// ---------------- LEDS ----------------
// void updateBatteryLeds() {
//   digitalWrite(PIN_LED_RED, LOW);
//   digitalWrite(PIN_LED_GREEN_BATTERY, HIGH);
// }

// ---------------- HTTP HELPERS ----------------
void sendJson(int code, JsonDocument& doc) {
  String response;
  serializeJson(doc, response);
  server.send(code, "application/json", response);
}

// ---------------- API ROUTES ----------------
void saveDeviceInfo(const String& deviceName, const String& room) {
  preferences.begin("device-info", false);
  preferences.putString("name", deviceName);
  preferences.putString("room", room);
  preferences.end();
}
void handleStatus() {
  JsonDocument doc;
  doc["ok"] = true;
  doc["mode"] = WiFi.getMode() == WIFI_AP ? "ap" : "sta";
  doc["ap_ssid"] = "ESP_TEMP_SETUP";
  doc["ip"] = WiFi.getMode() == WIFI_AP ? WiFi.softAPIP().toString() : WiFi.localIP().toString();
  doc["macAddress"] = WiFi.macAddress();
  doc["deviceType"] = "water_heater_controller";

  JsonArray components = doc["components"].to<JsonArray>();
  components.add("tempSensor");
  components.add("relay1");
  components.add("relay2");

  float temp = readTemperatureC();
  if (isnan(temp)) {
    doc["temperature"] = nullptr;
  } else {
    doc["temperature"] = temp;
  }

  doc["relay1"] = digitalRead(PIN_LOWER_RELAY) == LOW;
  doc["relay2"] = digitalRead(PIN_UPPER_RELAY) == LOW;

  sendJson(200, doc);
}

void handleSaveWiFi() {
  if (!server.hasArg("plain")) {
    JsonDocument doc;
    doc["ok"] = false;
    doc["message"] = "Missing JSON body";
    sendJson(400, doc);
    return;
  }

  JsonDocument doc;
  DeserializationError err = deserializeJson(doc, server.arg("plain"));
  if (err) {
    JsonDocument res;
    res["ok"] = false;
    res["message"] = "Invalid JSON";
    sendJson(400, res);
    return;
  }

  String ssid = doc["ssid"] | "";
  String password = doc["password"] | "";
  String deviceName = doc["deviceName"] | "";
  String room = doc["room"] | "";

  if (ssid.isEmpty()) {
    JsonDocument res;
    res["ok"] = false;
    res["message"] = "SSID is required";
    sendJson(400, res);
    return;
  }

  saveWiFiCredentials(ssid, password);
  saveDeviceInfo(deviceName, room);

  JsonDocument res;
  res["ok"] = true;
  res["message"] = "WiFi saved. Rebooting...";
  res["macAddress"] = WiFi.macAddress();
  res["deviceType"] = "water_heater_controller";
  sendJson(200, res);

  delay(1000);
  ESP.restart();
}
void handleNotFound() {
  JsonDocument doc;
  doc["ok"] = false;
  doc["message"] = "Route not found";
  sendJson(404, doc);
}

void setupServer() {
  server.on("/status", HTTP_GET, handleStatus);
  server.on("/save-wifi", HTTP_POST, handleSaveWiFi);
  server.onNotFound(handleNotFound);
  server.begin();

  Serial.println("HTTP server started");
}

// ---------------- WIFI ----------------
void startProvisionAP() {
  WiFi.disconnect(true, true);
  delay(500);

  WiFi.mode(WIFI_AP);
  bool ok = WiFi.softAP("ESP_TEMP_SETUP", "12345678");

  Serial.println();
  Serial.println("=== AP MODE ===");
  Serial.print("AP started: ");
  Serial.println(ok ? "YES" : "NO");
  Serial.print("AP IP: ");
  Serial.println(WiFi.softAPIP());

 // digitalWrite(PIN_LED_GREEN_WIFI, HIGH);

  apModeStarted = true;
  setupServer();
}

bool tryConnectWiFi(const String& ssid, const String& pass, unsigned long timeoutMs = 15000) {
  if (ssid.isEmpty()) return false;

  WiFi.mode(WIFI_STA);
  WiFi.begin(ssid.c_str(), pass.c_str());

  Serial.print("Connecting to WiFi");
  unsigned long start = millis();

  while (WiFi.status() != WL_CONNECTED && millis() - start < timeoutMs) {
    Serial.print(".");
    //digitalWrite(PIN_LED_GREEN_WIFI, !digitalRead(PIN_LED_GREEN_WIFI));
    delay(300);
  }

  bool connected = WiFi.status() == WL_CONNECTED;
  //digitalWrite(PIN_LED_GREEN_WIFI, connected ? HIGH : LOW);

  Serial.println();
  if (connected) {
    Serial.println("WiFi connected");
    Serial.print("IP: ");
    Serial.println(WiFi.localIP());
  } else {
    Serial.println("WiFi connect failed");
  }

  return connected;
}

// ---------------- BUTTON ----------------
void handleButton() {
  bool pressed = digitalRead(PIN_BUTTON) == LOW;

  if (pressed && !buttonWasPressed) {
    buttonWasPressed = true;
    buttonPressStart = millis();
    longPressHandled = false;
  }

  if (pressed && buttonWasPressed && !longPressHandled) {
    unsigned long heldMs = millis() - buttonPressStart;

    if (heldMs >= LONG_PRESS_MS) {
      longPressHandled = true;
      Serial.println("Long press detected: clearing WiFi and entering AP mode");
      clearWiFiCredentials();
      startProvisionAP();
    }
  }

  if (!pressed && buttonWasPressed) {
    unsigned long pressDuration = millis() - buttonPressStart;
    buttonWasPressed = false;

    if (!longPressHandled && pressDuration >= SHORT_PRESS_MIN_MS) {
      Serial.println("Short press detected");
      float t = readTemperatureC();
      if (isnan(t)) {
        Serial.println("Temperature read failed");
      } else {
        Serial.print("Temperature: ");
        Serial.print(t, 2);
        Serial.println(" C");
      }
    }
  }
}

// ---------------- SETUP ----------------
void setup() {
  Serial.begin(115200);
  delay(1000);

  pinMode(PIN_BUTTON, INPUT_PULLUP);
 // pinMode(PIN_LED_RED, OUTPUT);
  pinMode(PIN_LED_GREEN_BATTERY, OUTPUT);
  //pinMode(PIN_LED_GREEN_WIFI, OUTPUT);
  pinMode(PIN_NTC, INPUT);
pinMode(PIN_LOWER_RELAY, OUTPUT);
digitalWrite(PIN_LOWER_RELAY, HIGH); // Active LOW
  
pinMode(PIN_UPPER_RELAY, OUTPUT);
digitalWrite(PIN_UPPER_RELAY, HIGH); // Active LOW

  //digitalWrite(PIN_LED_RED, LOW);
  digitalWrite(PIN_LED_GREEN_BATTERY, LOW);
 // digitalWrite(PIN_LED_GREEN_WIFI, LOW);

  analogReadResolution(12);

  Serial.println();
  Serial.println("ESP32-S3 Temp Project Starting...");

  loadWiFiCredentials();
  //updateBatteryLeds();

  if (!savedSsid.isEmpty()) {
    wifiConnected = tryConnectWiFi(savedSsid, savedPass);
    if (!wifiConnected) {
      Serial.println("Falling back to AP mode");
      startProvisionAP();
    }
  } else {
    startProvisionAP();
  }
 
}

// ---------------- LOOP ----------------
void loop() {
  handleButton();
 // updateBatteryLeds();

  if (apModeStarted || WiFi.getMode() == WIFI_AP) {
    server.handleClient();
  }

  static unsigned long lastTempRead = 0;
static float currentTemp = NAN;

if (millis() - lastTempRead >= 3000) {
  lastTempRead = millis();
  currentTemp = readTemperatureC();

  Serial.print("Temp = ");
  if (isnan(currentTemp)) {
    Serial.println("NAN");
  } else {
    Serial.print(currentTemp, 2);
    Serial.println(" C");
  }

  setRelayState(currentTemp);
}
  static unsigned long lastWifiCheck = 0;
  if (millis() - lastWifiCheck >= 3000) {
    lastWifiCheck = millis();

    if (WiFi.getMode() == WIFI_STA) {
      wifiConnected = WiFi.status() == WL_CONNECTED;
     // digitalWrite(PIN_LED_GREEN_WIFI, wifiConnected ? HIGH : LOW);
    }
  }
}