#include <Arduino.h>
#include <WiFi.h>
#include <Preferences.h>
#include <WebServer.h>
#include <ArduinoJson.h>
#include <math.h>
#include <HTTPClient.h>

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

// ---------------- BACKEND ----------------
// CHANGE THIS TO YOUR COMPUTER / SERVER LOCAL IP
String backendBaseUrl = "http://192.168.1.193:3000";

String registeredDeviceId = "";
String deviceType = "water_heater_controller";
String rulesJsonString = "";
String pendingCommandJsonString = "";

// ---------------- TIMINGS ----------------
unsigned long lastDeviceSyncMs = 0;
unsigned long lastTelemetryMs = 0;
unsigned long lastCommandPollMs = 0;

static const unsigned long DEVICE_SYNC_INTERVAL_MS = 5UL * 60UL * 1000UL; // 5 min
static const unsigned long TELEMETRY_INTERVAL_MS   = 30UL * 1000UL;       // 30 sec
static const unsigned long COMMAND_POLL_INTERVAL_MS = 5UL * 1000UL;       // 5 sec

// ---------------- FORWARD DECLARATIONS ----------------
void saveDeviceInfo(const String& deviceName, const String& room);
void sendJson(int code, JsonDocument& doc);
void setupServer();
void startProvisionAP();
bool tryConnectWiFi(const String& ssid, const String& pass, unsigned long timeoutMs = 15000);
void handleButton();
void updateWifiLed();
float readTemperatureC();

void setRelayByComponent(const String& componentId, const String& action);
void setWholeDeviceAction(const String& action);
bool executePendingCommand(const JsonVariantConst& command);

bool syncDeviceWithBackend();
void sendTelemetry(float tempC);
void reportCommandResult(bool success, const String& resultMessage);

bool evaluateSingleRule(const JsonVariantConst& rule, float tempC);
bool evaluateGroup(const JsonVariantConst& group, float tempC);
void executeGroupActions(const JsonVariantConst& group);
void applyRules(float tempC);

void handleStatus();
void handleSaveWiFi();
void handleNotFound();

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

void saveDeviceInfo(const String& deviceName, const String& room) {
  preferences.begin("device-info", false);
  preferences.putString("name", deviceName);
  preferences.putString("room", room);
  preferences.end();
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

  float rt = SERIES_RESISTOR * vo / (VCC - vo);

  float invT = (1.0f / NOMINAL_TEMPERATURE) +
               ((1.0f / BETA_COEFFICIENT) * log(rt / NOMINAL_RESISTANCE));

  float tk = 1.0f / invT;
  float tc = tk - 273.15f;

  lastTemperature = (int)round(tc);
  return tc;
}

// ---------------- RELAY ACTIONS ----------------
void setRelayByComponent(const String& componentId, const String& action) {
  bool turnOn = action == "turnOn";
  bool turnOff = action == "turnOff";

  if (!turnOn && !turnOff) return;

  if (componentId == "relay1") {
    digitalWrite(PIN_LOWER_RELAY, turnOn ? LOW : HIGH); // active LOW
  } else if (componentId == "relay2") {
    digitalWrite(PIN_UPPER_RELAY, turnOn ? LOW : HIGH); // active LOW
  }
}

void setWholeDeviceAction(const String& action) {
  if (action == "turnOff") {
    digitalWrite(PIN_LOWER_RELAY, HIGH);
    digitalWrite(PIN_UPPER_RELAY, HIGH);
  } else if (action == "turnOn") {
    // Default whole-device ON behavior
    digitalWrite(PIN_LOWER_RELAY, LOW);
    digitalWrite(PIN_UPPER_RELAY, HIGH);
  }
}

bool executePendingCommand(const JsonVariantConst& command) {
  if (command.isNull()) return false;

  String action = command["action"] | "";
  String targetType = command["targetType"] | "device";
  String targetComponentId = command["targetComponentId"] | "";

  if (action.isEmpty()) return false;

  if (targetType == "device") {
    setWholeDeviceAction(action);
    return true;
  }

  if (targetType == "component" && !targetComponentId.isEmpty()) {
    setRelayByComponent(targetComponentId, action);
    return true;
  }

  return false;
}

// ---------------- RULE ENGINE ----------------
bool evaluateSingleRule(const JsonVariantConst& rule, float tempC) {
  if ((rule["enabled"] | true) == false) return false;

  String source = rule["source"] | "";
  String condition = rule["condition"] | "";
  String valueStr = rule["value"] | "";

  if (source != "tempSensor") return false;
  if (isnan(tempC)) return false;

  float value = valueStr.toFloat();

  if (condition == "lessThan") return tempC < value;
  if (condition == "lessThanOrEqual") return tempC <= value;
  if (condition == "greaterThan") return tempC > value;
  if (condition == "greaterThanOrEqual") return tempC >= value;
  if (condition == "equalTo") return abs(tempC - value) < 0.01f;

  return false;
}

bool evaluateGroup(const JsonVariantConst& group, float tempC) {
  if ((group["enabled"] | true) == false) return false;

  JsonArrayConst rules = group["rules"].as<JsonArrayConst>();
  if (rules.isNull() || rules.size() == 0) return false;

  bool result = evaluateSingleRule(rules[0], tempC);

  for (size_t i = 1; i < rules.size(); i++) {
    JsonVariantConst prevRule = rules[i - 1];
    JsonVariantConst currentRule = rules[i];

    String joiner = prevRule["conditionForNextRule"] | "and";
    bool currentValue = evaluateSingleRule(currentRule, tempC);

    if (joiner == "or") {
      result = result || currentValue;
    } else {
      result = result && currentValue;
    }
  }

  return result;
}

void executeGroupActions(const JsonVariantConst& group) {
  JsonArrayConst actions = group["actions"].as<JsonArrayConst>();
  if (actions.isNull()) return;

  for (JsonVariantConst actionObj : actions) {
    String action = actionObj["action"] | "";
    String targetType = actionObj["targetType"] | "device";
    String targetComponentId = actionObj["targetComponentId"] | "";

    if (targetType == "device") {
      setWholeDeviceAction(action);
    } else if (targetType == "component") {
      setRelayByComponent(targetComponentId, action);
    }
  }
}

void applyRules(float tempC) {
  if (rulesJsonString.isEmpty()) {
    // Safe fallback: both OFF
    digitalWrite(PIN_LOWER_RELAY, HIGH);
    digitalWrite(PIN_UPPER_RELAY, HIGH);
    return;
  }

  JsonDocument doc;
  DeserializationError err = deserializeJson(doc, rulesJsonString);
  if (err) {
    Serial.println("rules parse failed");
    digitalWrite(PIN_LOWER_RELAY, HIGH);
    digitalWrite(PIN_UPPER_RELAY, HIGH);
    return;
  }

  JsonArrayConst groups = doc["groups"].as<JsonArrayConst>();
  if (groups.isNull()) {
    digitalWrite(PIN_LOWER_RELAY, HIGH);
    digitalWrite(PIN_UPPER_RELAY, HIGH);
    return;
  }

  bool anyMatched = false;

  for (JsonVariantConst group : groups) {
    if (evaluateGroup(group, tempC)) {
      executeGroupActions(group);
      anyMatched = true;
    }
  }

  if (!anyMatched) {
    // Safe fallback if no rules matched
    digitalWrite(PIN_LOWER_RELAY, HIGH);
    digitalWrite(PIN_UPPER_RELAY, HIGH);
  }
}

// ---------------- BACKEND ----------------
bool syncDeviceWithBackend() {
  if (WiFi.status() != WL_CONNECTED) return false;

  HTTPClient http;
  String url = backendBaseUrl + "/iot/device-sync";

  http.begin(url);
  http.addHeader("Content-Type", "application/json");

  JsonDocument req;
  req["macAddress"] = WiFi.macAddress();

  String body;
  serializeJson(req, body);

  int httpCode = http.POST(body);
  if (httpCode != 200) {
    Serial.print("device-sync failed, code: ");
    Serial.println(httpCode);
    Serial.println(http.getString());
    http.end();
    return false;
  }

  String response = http.getString();
  http.end();

  JsonDocument doc;
  DeserializationError err = deserializeJson(doc, response);
  if (err) {
    Serial.println("device-sync JSON parse failed");
    return false;
  }

  JsonVariant data = doc["data"];
  registeredDeviceId = String((const char*)(data["deviceId"] | ""));
  deviceType = String((const char*)(data["type"] | "water_heater_controller"));

  String rulesStr;
  serializeJson(data["rules"], rulesStr);
  rulesJsonString = rulesStr;

  String pendingStr;
  serializeJson(data["pendingCommand"], pendingStr);
  pendingCommandJsonString = pendingStr;

  Serial.println("device-sync success");
  Serial.print("deviceId: ");
  Serial.println(registeredDeviceId);

  if (!data["pendingCommand"].isNull()) {
    bool executed = executePendingCommand(data["pendingCommand"]);
    if (executed) {
      reportCommandResult(true, "Executed from device-sync");
    }
  }

  return true;
}

void sendTelemetry(float tempC) {
  if (WiFi.status() != WL_CONNECTED) return;
  if (registeredDeviceId.isEmpty()) return;

  HTTPClient http;
  String url = backendBaseUrl + "/iot/telemetry";

  http.begin(url);
  http.addHeader("Content-Type", "application/json");

  JsonDocument req;
  req["deviceId"] = registeredDeviceId;

  if (isnan(tempC)) {
    req["temperature"] = nullptr;
  } else {
    req["temperature"] = tempC;
  }

  JsonObject payload = req["payload"].to<JsonObject>();
  payload["relay1"] = digitalRead(PIN_LOWER_RELAY) == LOW;
  payload["relay2"] = digitalRead(PIN_UPPER_RELAY) == LOW;

  if (isnan(tempC)) {
    payload["tempSensor"] = nullptr;
  } else {
    payload["tempSensor"] = tempC;
  }

  String body;
  serializeJson(req, body);

  int httpCode = http.POST(body);
  Serial.print("telemetry code: ");
  Serial.println(httpCode);
  if (httpCode > 0) {
    Serial.println(http.getString());
  }

  http.end();
}

void reportCommandResult(bool success, const String& resultMessage) {
  if (WiFi.status() != WL_CONNECTED) return;
  if (registeredDeviceId.isEmpty()) return;

  HTTPClient http;
  String url = backendBaseUrl + "/iot/command-result";

  http.begin(url);
  http.addHeader("Content-Type", "application/json");

  JsonDocument req;
  req["deviceId"] = registeredDeviceId;
  req["success"] = success;

  JsonObject result = req["result"].to<JsonObject>();
  result["message"] = resultMessage;
  result["relay1"] = digitalRead(PIN_LOWER_RELAY) == LOW;
  result["relay2"] = digitalRead(PIN_UPPER_RELAY) == LOW;

  String body;
  serializeJson(req, body);

  int httpCode = http.POST(body);
  Serial.print("command-result code: ");
  Serial.println(httpCode);
  if (httpCode > 0) {
    Serial.println(http.getString());
  }

  http.end();
}

// ---------------- LEDS ----------------
void updateWifiLed() {
  static unsigned long lastBlinkMs = 0;
  static bool blinkState = false;

  if (WiFi.getMode() == WIFI_AP) {
    if (millis() - lastBlinkMs >= 500) {
      lastBlinkMs = millis();
      blinkState = !blinkState;
      digitalWrite(PIN_LED_WIFI, blinkState ? HIGH : LOW);
    }
    return;
  }

  if (WiFi.getMode() == WIFI_STA && WiFi.status() == WL_CONNECTED) {
    digitalWrite(PIN_LED_WIFI, HIGH);
    return;
  }

  digitalWrite(PIN_LED_WIFI, LOW);
}

// ---------------- HTTP HELPERS ----------------
void sendJson(int code, JsonDocument& doc) {
  String response;
  serializeJson(doc, response);
  server.send(code, "application/json", response);
}

// ---------------- API ROUTES ----------------
void handleStatus() {
  JsonDocument doc;
  doc["ok"] = true;
  doc["mode"] = WiFi.getMode() == WIFI_AP ? "ap" : "sta";
  doc["ap_ssid"] = "ESP_TEMP_SETUP";
  doc["ip"] = WiFi.getMode() == WIFI_AP ? WiFi.softAPIP().toString() : WiFi.localIP().toString();
  doc["macAddress"] = WiFi.macAddress();
  doc["deviceType"] = "water_heater_controller";

  JsonArray components = doc["components"].to<JsonArray>();

  JsonObject c1 = components.add<JsonObject>();
  c1["id"] = "tempSensor";
  c1["name"] = "Temperature Sensor";
  c1["type"] = "sensor";

  JsonObject c2 = components.add<JsonObject>();
  c2["id"] = "relay1";
  c2["name"] = "Lower Heater";
  c2["type"] = "relay";

  JsonObject c3 = components.add<JsonObject>();
  c3["id"] = "relay2";
  c3["name"] = "Upper Heater";
  c3["type"] = "relay";

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

  registeredDeviceId = "";
  rulesJsonString = "";
  pendingCommandJsonString = "";
  apModeStarted = true;

  WiFi.mode(WIFI_AP);
  bool ok = WiFi.softAP("ESP_TEMP_SETUP", "12345678");

  Serial.println();
  Serial.println("=== AP MODE ===");
  Serial.print("AP started: ");
  Serial.println(ok ? "YES" : "NO");
  Serial.print("AP IP: ");
  Serial.println(WiFi.softAPIP());

  setupServer();
}

bool tryConnectWiFi(const String& ssid, const String& pass, unsigned long timeoutMs) {
  if (ssid.isEmpty()) return false;

  WiFi.mode(WIFI_STA);
  WiFi.begin(ssid.c_str(), pass.c_str());

  Serial.print("Connecting to WiFi");
  unsigned long start = millis();

  while (WiFi.status() != WL_CONNECTED && millis() - start < timeoutMs) {
    Serial.print(".");
    delay(300);
  }

  bool connected = WiFi.status() == WL_CONNECTED;

  Serial.println();
  if (connected) {
    apModeStarted = false;
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
  pinMode(PIN_LED_GREEN_BATTERY, OUTPUT);
  pinMode(PIN_LED_WIFI, OUTPUT);
  pinMode(PIN_NTC, INPUT);
  pinMode(PIN_LOWER_RELAY, OUTPUT);
  pinMode(PIN_UPPER_RELAY, OUTPUT);

  digitalWrite(PIN_LOWER_RELAY, HIGH); // active LOW => off
  digitalWrite(PIN_UPPER_RELAY, HIGH); // active LOW => off
  digitalWrite(PIN_LED_GREEN_BATTERY, LOW);
  digitalWrite(PIN_LED_WIFI, LOW);

  analogReadResolution(12);

  Serial.println();
  Serial.println("ESP32-S3 Temp Project Starting...");

  loadWiFiCredentials();

  if (!savedSsid.isEmpty()) {
    wifiConnected = tryConnectWiFi(savedSsid, savedPass, 15000);
    if (!wifiConnected) {
      Serial.println("Falling back to AP mode");
      startProvisionAP();
    } else {
      syncDeviceWithBackend();
    }
  } else {
    startProvisionAP();
  }
}

// ---------------- LOOP ----------------
void loop() {
  handleButton();

  if (apModeStarted || WiFi.getMode() == WIFI_AP) {
    server.handleClient();
  }

  updateWifiLed();

  static unsigned long lastTempRead = 0;
  static float currentTemp = NAN;
  static bool wasConnected = false;

  if (millis() - lastTempRead >= 1000) {
    lastTempRead = millis();
    currentTemp = readTemperatureC();

    Serial.print("Temp = ");
    if (isnan(currentTemp)) {
      Serial.println("NAN");
    } else {
      Serial.print(currentTemp, 2);
      Serial.println(" C");
    }

    applyRules(currentTemp);
  }

  bool nowConnected = (WiFi.getMode() == WIFI_STA && WiFi.status() == WL_CONNECTED);

  if (nowConnected && !wasConnected) {
    syncDeviceWithBackend();
  }
  wasConnected = nowConnected;

  if (nowConnected) {
    if (registeredDeviceId.isEmpty() || millis() - lastDeviceSyncMs >= DEVICE_SYNC_INTERVAL_MS) {
      lastDeviceSyncMs = millis();
      syncDeviceWithBackend();
    }

    if (millis() - lastCommandPollMs >= COMMAND_POLL_INTERVAL_MS) {
      lastCommandPollMs = millis();
      syncDeviceWithBackend();
    }

    if (millis() - lastTelemetryMs >= TELEMETRY_INTERVAL_MS) {
      lastTelemetryMs = millis();
      sendTelemetry(currentTemp);
    }
  }
}