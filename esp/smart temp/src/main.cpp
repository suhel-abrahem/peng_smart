#include <Arduino.h>
#include <WiFi.h>
#include <Preferences.h>
#include <WebServer.h>
#include <ArduinoJson.h>
#include <math.h>
#include <HTTPClient.h>
#include <SPI.h>
#include <Adafruit_GFX.h>
#include <Adafruit_ST7735.h>
#include <PZEM004Tv30.h>
#include <Adafruit_MAX31865.h>
Preferences preferences;
WebServer server(80);

// ---------------- PINS ----------------

static const int PIN_BUTTON = 5;
static const int PIN_LED_WIFI = 2;

static const int PIN_LOWER_RELAY = 15;
static const int PIN_UPPER_RELAY = 16;
#define TFT_CS    14
#define TFT_DC    27
#define TFT_RST   33
#define TFT_MOSI  23
#define TFT_SCLK  18
#define PIN_PRESSURE 34
#define PZEM_RX_PIN 19
#define PZEM_TX_PIN 21
#define MAX31865_CS   4
#define MAX31865_MISO 32
#define MAX31865_MOSI 23
#define MAX31865_CLK  18

Adafruit_MAX31865 max31865 = Adafruit_MAX31865(
  MAX31865_CS,
  MAX31865_MOSI,
  MAX31865_MISO,
  MAX31865_CLK
);
Adafruit_ST7735 tft = Adafruit_ST7735(TFT_CS, TFT_DC, TFT_MOSI, TFT_SCLK, TFT_RST);
HardwareSerial pzemSerial(2);
PZEM004Tv30 pzem(pzemSerial, PZEM_RX_PIN, PZEM_TX_PIN);
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
float lastPressure = 0.0f;
String savedSsid;
String savedPass;
struct PowerData {
  float voltage;
  float current;
  float power;
  float energy;
};
enum ScreenMode {
  SCREEN_ALL,
  SCREEN_TEMP,
  SCREEN_PRESSURE,
  SCREEN_POWER,
};

ScreenMode currentScreenMode = SCREEN_ALL;
ScreenMode lastScreenMode = SCREEN_ALL;
unsigned long lastScreenSwitchMs = 0;
static const unsigned long SCREEN_SWITCH_INTERVAL_MS = 5000;
static const float MAX_SAFE_TEMP_C = 60.0f;
static const float MAX_SAFE_PRESSURE_BAR = 7.0f;
static const float MAX_SAFE_VOLTAGE = 245.0f;
static const float MIN_SAFE_VOLTAGE = 185.0f;
static const float MAX_SAFE_CURRENT = 20.0f;
bool safetyTripped = false;
String safetyMessage = "";

PowerData lastPowerData = {0, 0, 0, 0};
bool manualOverride = false;
String manualAction = ""; // "turnOff" / "turnOn"
int manualSkipUntilMinute = -1;
// ---------------- BACKEND ----------------

String backendBaseUrl = "http://192.168.1.93:3000";

String registeredDeviceId = "";
String deviceType = "water_heater_controller";
String rulesJsonString = "";
String pendingCommandJsonString = "";

// ---------------- TIMINGS ----------------
unsigned long lastDeviceSyncMs = 0;
unsigned long lastTelemetryMs = 0;
unsigned long lastCommandPollMs = 0;

static const unsigned long DEVICE_SYNC_INTERVAL_MS = 5UL * 60UL * 1000UL; // 5 min
static const unsigned long TELEMETRY_INTERVAL_MS   = 5UL * 1000UL;       // 10 sec
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
void sendTelemetry(float tempC, float pressureBar, PowerData powerData);
void reportCommandResult(bool success, const String& resultMessage);

bool evaluateSingleRule(const JsonVariantConst& rule, float tempC);
bool evaluateGroup(const JsonVariantConst& group, float tempC);
void executeGroupActions(const JsonVariantConst& group);
void applyRules(String jsonRules, float temp, float pressure, PowerData powerData);

bool isDayMatch(JsonArrayConst days);
bool checkTempCondition(JsonObjectConst rule, float temp);
int timeToMinutes(const String& time);
int currentMinutesNow();
bool isMinutesBetween(int nowMin, int fromMin, int toMin);
bool ruleMatchesNow(JsonVariantConst rule, float temp);
int findCurrentActiveScheduleEndMinute(String jsonRules, float temp);
void applyManualAction();
bool handleManualOverride(String jsonRules, float temp);

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
  uint16_t rtd = max31865.readRTD();
  uint8_t fault = max31865.readFault();

  Serial.print("RTD raw: ");
  Serial.println(rtd);

  if (fault) {
    Serial.print("MAX31865 Fault: 0x");
    Serial.println(fault, HEX);

    if (fault & MAX31865_FAULT_HIGHTHRESH) Serial.println("RTD High Threshold");
    if (fault & MAX31865_FAULT_LOWTHRESH)  Serial.println("RTD Low Threshold");
    if (fault & MAX31865_FAULT_REFINLOW)   Serial.println("REFIN- low");
    if (fault & MAX31865_FAULT_REFINHIGH)  Serial.println("REFIN- high");
    if (fault & MAX31865_FAULT_RTDINLOW)   Serial.println("RTDIN- low");
    if (fault & MAX31865_FAULT_OVUV)       Serial.println("Over/Under voltage");

    max31865.clearFault();
    return NAN;
  }

  float tempC = max31865.temperature(100.0, 430.0);

  if (tempC < -50 || tempC > 150) {
    Serial.print("Invalid temp ignored: ");
    Serial.println(tempC);
    return NAN;
  }

  return tempC;
}
PowerData readPowerSensor() {
  PowerData data;

  data.voltage = pzem.voltage();
  data.current = pzem.current();
  data.power   = pzem.power();
  data.energy  = pzem.energy();

  if (isnan(data.voltage)) data.voltage = 0;
  if (isnan(data.current)) data.current = 0;
  if (isnan(data.power))   data.power   = 0;
  if (isnan(data.energy))  data.energy  = 0;

  Serial.print("V: "); Serial.print(data.voltage);
  Serial.print("  I: "); Serial.print(data.current);
  Serial.print("  P: "); Serial.print(data.power);
  Serial.print("  E: "); Serial.println(data.energy);

  return data;
}
float readPressure() {
  int raw = analogRead(PIN_PRESSURE);

  float espVoltage = raw * (3.3 / 4095.0); 
  float sensorVoltage = espVoltage * 2.0; // بسبب 10k + 10k divider

  float pressureBar = (sensorVoltage - 0.5) * (12.0 / 4.0);

  if (pressureBar < 0) pressureBar = 0;

  Serial.print("Raw: ");
  Serial.print(raw);
  Serial.print(" SensorV: ");
  Serial.print(sensorVoltage, 3);
  Serial.print(" Pressure: ");
  Serial.println(pressureBar, 2);

  return pressureBar;
}
void showBootScreen() {
  tft.fillScreen(ST77XX_BLACK);

  tft.setTextWrap(false);

  tft.setTextColor(ST77XX_CYAN, ST77XX_BLACK);
  tft.setTextSize(2);
  tft.setCursor(10, 12);
  tft.print("Peng Smart");

  tft.setTextColor(ST77XX_WHITE, ST77XX_BLACK);
  tft.setTextSize(1);
  tft.setCursor(18, 40);
  tft.print("Water Heater");

  tft.drawLine(0, 58, 127, 58, ST77XX_WHITE);

  tft.setCursor(8, 72);
  tft.print("Starting ESP...");

  delay(700);

  tft.fillRect(8, 90, 112, 12, ST77XX_BLACK);
  tft.setCursor(8, 90);
  tft.print("Loading sensors...");

  delay(700);

  tft.fillRect(8, 90, 112, 12, ST77XX_BLACK);
  tft.setCursor(8, 90);
  tft.print("Checking WiFi...");

  delay(700);
}
void showBootStatus(const String& message) {
  tft.fillRect(0, 90, 128, 25, ST77XX_BLACK);

  tft.setTextColor(ST77XX_YELLOW, ST77XX_BLACK);
  tft.setTextSize(1);
  tft.setCursor(8, 92);
  tft.print(message);
}
// ---------------- SCREEN MODES ----------------



void clearScreen() {
  tft.fillScreen(ST77XX_BLACK);
}

void drawHeader(const char* title) {
  tft.setTextWrap(false);
  tft.setTextColor(ST77XX_CYAN, ST77XX_BLACK);
  tft.setTextSize(2);
  tft.setCursor(6, 6);
  tft.print(title);
  tft.drawLine(0, 28, 127, 28, ST77XX_WHITE);
}

// ---------------- STATIC SCREENS ----------------

void drawAllStatic() {
  clearScreen();
  drawHeader("Heater");

  tft.setTextSize(1);
  tft.setTextColor(ST77XX_WHITE, ST77XX_BLACK);

  tft.setCursor(8, 38);
  tft.print("Temp:");

  tft.setCursor(8, 58);
  tft.print("Press:");

  tft.setCursor(8, 78);
  tft.print("Power:");

  tft.setCursor(8, 98);
  tft.print("Energy:");
}

void drawTempStatic() {
  clearScreen();
  drawHeader("Temp");

  tft.setTextColor(ST77XX_YELLOW, ST77XX_BLACK);
  tft.setTextSize(2);
  tft.setCursor(8, 48);
  tft.print("Water:");
}

void drawPressureStatic() {
  clearScreen();
  drawHeader("Pressure");

  tft.setTextColor(ST77XX_YELLOW, ST77XX_BLACK);
  tft.setTextSize(2);
  tft.setCursor(8, 48);
  tft.print("Pipe:");
}

void drawPowerStatic() {
  clearScreen();
  drawHeader("Power");

  tft.setTextSize(1);
  tft.setTextColor(ST77XX_WHITE, ST77XX_BLACK);

  tft.setCursor(8, 38);
  tft.print("Voltage:");

  tft.setCursor(8, 58);
  tft.print("Current:");

  tft.setCursor(8, 78);
  tft.print("Power:");

  tft.setCursor(8, 98);
  tft.print("Energy:");
}

void drawCurrentScreenStatic() {
  if (currentScreenMode == SCREEN_ALL) {
    drawAllStatic();
  } else if (currentScreenMode == SCREEN_TEMP) {
    drawTempStatic();
  } else if (currentScreenMode == SCREEN_PRESSURE) {
    drawPressureStatic();
  } else if (currentScreenMode == SCREEN_POWER) {
    drawPowerStatic();
  }
}
void drawSafetyScreen() {
  tft.fillScreen(ST77XX_BLACK);

  tft.setTextWrap(false);

  tft.setTextColor(ST77XX_RED, ST77XX_BLACK);
  tft.setTextSize(2);
  tft.setCursor(8, 8);
  tft.print("SYSTEM OFF");

  tft.drawLine(0, 30, 127, 30, ST77XX_WHITE);

  tft.setTextColor(ST77XX_YELLOW, ST77XX_BLACK);
  tft.setTextSize(1);
  tft.setCursor(8, 45);
  tft.print("Safety rule active");

  tft.setTextColor(ST77XX_WHITE, ST77XX_BLACK);
  tft.setCursor(8, 65);
  tft.print("Reason:");

  tft.setTextColor(ST77XX_RED, ST77XX_BLACK);
  tft.setCursor(8, 80);
  tft.print(safetyMessage);

  tft.setTextColor(ST77XX_WHITE, ST77XX_BLACK);
  tft.setCursor(8, 105);
  tft.print("Relays are OFF");
}
void updateScreenMode() {
  if (millis() - lastScreenSwitchMs >= SCREEN_SWITCH_INTERVAL_MS) {
    lastScreenSwitchMs = millis();

    if (currentScreenMode == SCREEN_ALL) {
      currentScreenMode = SCREEN_TEMP;
    } else if (currentScreenMode == SCREEN_TEMP) {
      currentScreenMode = SCREEN_PRESSURE;
    } else if (currentScreenMode == SCREEN_PRESSURE) {
      currentScreenMode = SCREEN_POWER;
    } else {
      currentScreenMode = SCREEN_ALL;
    }

    drawCurrentScreenStatic();
  }
}
// ---------------- VALUE UPDATES ONLY ----------------

void updateAllValues(float tempC, float pressureBar, PowerData p) {
  tft.setTextSize(1);
  tft.setTextColor(ST77XX_BLUE, ST77XX_BLACK);

  tft.fillRect(65, 38, 62, 10, ST77XX_BLACK);
  tft.setCursor(65, 38);
  if (isnan(tempC)) {
    tft.print("N/A");
  } else {
    tft.print(tempC, 1);
    tft.print(" C");
  }

  tft.fillRect(65, 58, 62, 10, ST77XX_BLACK);
  tft.setCursor(65, 58);
  tft.print(pressureBar, 2);
  tft.print(" bar");

  tft.fillRect(65, 78, 62, 10, ST77XX_BLACK);
  tft.setCursor(65, 78);
  tft.print(p.power, 0);
  tft.print(" W");

  tft.fillRect(65, 98, 62, 10, ST77XX_BLACK);
  tft.setCursor(65, 98);
  tft.print(p.energy, 2);
  tft.print(" kWh");
}

void updateTempValue(float tempC) {
  tft.fillRect(8, 78, 120, 32, ST77XX_BLACK);

  tft.setTextColor(ST77XX_BLUE, ST77XX_BLACK);
  tft.setTextSize(3);
  tft.setCursor(8, 78);

  if (isnan(tempC)) {
    tft.print("N/A");
  } else {
    tft.print(tempC, 1);
    tft.setTextSize(2);
    tft.print(" C");
  }
}

void updatePressureValue(float pressureBar) {
  tft.fillRect(8, 78, 120, 32, ST77XX_BLACK);

  tft.setTextColor(ST77XX_BLUE, ST77XX_BLACK);
  tft.setTextSize(3);
  tft.setCursor(8, 78);
  tft.print(pressureBar, 2);

  tft.setTextSize(2);
  tft.print(" bar");
}

void updatePowerValues(PowerData p) {
  tft.setTextSize(1);
  tft.setTextColor(ST77XX_BLUE, ST77XX_BLACK);

  tft.fillRect(75, 38, 53, 10, ST77XX_BLACK);
  tft.setCursor(75, 38);
  tft.print(p.voltage, 1);
  tft.print(" V");

  tft.fillRect(75, 58, 53, 10, ST77XX_BLACK);
  tft.setCursor(75, 58);
  tft.print(p.current, 2);
  tft.print(" A");

  tft.fillRect(75, 78, 53, 10, ST77XX_BLACK);
  tft.setCursor(75, 78);
  tft.print(p.power, 0);
  tft.print(" W");

  tft.fillRect(75, 98, 53, 10, ST77XX_BLACK);
  tft.setCursor(75, 98);
  tft.print(p.energy, 2);
  tft.print(" kWh");
}

void updateCurrentScreenValues(float tempC, float pressureBar, PowerData p) {
  if (currentScreenMode == SCREEN_ALL) {
    updateAllValues(tempC, pressureBar, p);
  } else if (currentScreenMode == SCREEN_TEMP) {
    updateTempValue(tempC);
  } else if (currentScreenMode == SCREEN_PRESSURE) {
    updatePressureValue(pressureBar);
  } else if (currentScreenMode == SCREEN_POWER) {
    updatePowerValues(p);
  }
}
// ---------------- RELAY ACTIONS ----------------
void turnBothRelaysOff() {
  digitalWrite(PIN_LOWER_RELAY, HIGH);
  digitalWrite(PIN_UPPER_RELAY, HIGH);
}

bool checkSafety(float tempC, float pressureBar, PowerData powerData) {
  safetyTripped = false;
  safetyMessage = "";

  if (!isnan(tempC) && tempC >= MAX_SAFE_TEMP_C) {
    safetyTripped = true;
    safetyMessage = "HIGH TEMP";
  }

  if (!isnan(pressureBar) && pressureBar >= MAX_SAFE_PRESSURE_BAR) {
    safetyTripped = true;
    safetyMessage = "HIGH PRESSURE";
  }
if (!isnan(powerData.voltage) && (powerData.voltage >= MAX_SAFE_VOLTAGE))
{
  safetyTripped = true;
  safetyMessage = "HIGH VOLTAGE";
}
if (!isnan(powerData.current)&& powerData.current >= MAX_SAFE_CURRENT)
{
  safetyTripped = true;
  safetyMessage = "HIGH CURRENT";
}



  if (safetyTripped) {
    turnBothRelaysOff();

    Serial.print("SAFETY TRIPPED: ");
    Serial.println(safetyMessage);

    return true;
  }

    return false;
  }

void setRelayByComponent(const String& componentId, const String& action) {
  bool turnOn = action == "turnOn";
  bool turnOff = action == "turnOff";

  if (!turnOn && !turnOff) return;

  Serial.println("== setRelayByComponent ==");
  Serial.print("componentId: ");
  Serial.println(componentId);
  Serial.print("action: ");
  Serial.println(action);

  if (componentId == "relay1") {
    digitalWrite(PIN_LOWER_RELAY, turnOn ? LOW : HIGH); // active LOW
    Serial.print("PIN_LOWER_RELAY state: ");
    Serial.println(digitalRead(PIN_LOWER_RELAY));
  } else if (componentId == "relay2") {
    digitalWrite(PIN_UPPER_RELAY, turnOn ? LOW : HIGH); // active LOW
    Serial.print("PIN_UPPER_RELAY state: ");
    Serial.println(digitalRead(PIN_UPPER_RELAY));
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
int timeToMinutes(const String& time) {
  int h = time.substring(0, 2).toInt();
  int m = time.substring(3, 5).toInt();
  return h * 60 + m;
}

int currentMinutesNow() {
  struct tm timeinfo;
  if (!getLocalTime(&timeinfo)) return -1;
  return timeinfo.tm_hour * 60 + timeinfo.tm_min;
}

bool isMinutesBetween(int nowMin, int fromMin, int toMin) {
  if (fromMin <= toMin) {
    return nowMin >= fromMin && nowMin < toMin;
  }

  return nowMin >= fromMin || nowMin < toMin;
}

bool ruleMatchesNow(JsonVariantConst rule, float temp) {
  String from = rule["activeFrom"] | "";
  String to = rule["activeTo"] | "";

  if (from.isEmpty() || to.isEmpty()) {
    return false;
  }

  int nowMin = currentMinutesNow();
  if (nowMin < 0) {
    return false;
  }

  int fromMin = timeToMinutes(from);
  int toMin = timeToMinutes(to);

  if (!isMinutesBetween(nowMin, fromMin, toMin)) {
    return false;
  }

  JsonArrayConst days = rule["days"].as<JsonArrayConst>();
  if (!isDayMatch(days)) {
    return false;
  }

  JsonObjectConst ruleObj = rule.as<JsonObjectConst>();
  if (!checkTempCondition(ruleObj, temp)) {
    return false;
  }

  return true;
}

int findCurrentActiveScheduleEndMinute(String jsonRules, float temp) {
  if (jsonRules.isEmpty()) return -1;

  JsonDocument doc;
  DeserializationError err = deserializeJson(doc, jsonRules);
  if (err) return -1;

  JsonArrayConst groups;

  if (doc.is<JsonArray>()) {
    groups = doc.as<JsonArrayConst>();
  } else {
    groups = doc["groups"].as<JsonArrayConst>();
  }

  if (groups.isNull()) return -1;

  for (JsonVariantConst group : groups) {
    JsonArrayConst rules = group["rules"].as<JsonArrayConst>();
    if (rules.isNull() || rules.size() == 0) continue;

    bool matched = true;
    int endMinute = -1;

    for (JsonVariantConst rule : rules) {
      if (!ruleMatchesNow(rule, temp)) {
        matched = false;
        break;
      }

      String to = rule["activeTo"] | "";
      endMinute = timeToMinutes(to);
    }

    if (matched) {
      return endMinute;
    }
  }

  return -1;
}

void applyManualAction() {
  if (manualAction == "turnOff") {
    turnBothRelaysOff();
  } else if (manualAction == "turnOn") {
    // manual ON = upper heater only
    digitalWrite(PIN_LOWER_RELAY, HIGH);
    digitalWrite(PIN_UPPER_RELAY, LOW);
  }
}

bool handleManualOverride(String jsonRules, float temp) {
  if (!manualOverride) return false;

  int nowMin = currentMinutesNow();

  if (manualSkipUntilMinute >= 0 && nowMin >= 0) {
    if (nowMin < manualSkipUntilMinute) {
      applyManualAction();
      Serial.println("Manual override active: skipping current schedule");
      return true;
    }

    manualOverride = false;
    manualAction = "";
    manualSkipUntilMinute = -1;

    Serial.println("Manual override cleared: current schedule ended");
    return false;
  }

  int activeEnd = findCurrentActiveScheduleEndMinute(jsonRules, temp);

  if (activeEnd >= 0) {
    manualOverride = false;
    manualAction = "";
    manualSkipUntilMinute = -1;

    Serial.println("Manual override cleared: next schedule started");
    return false;
  }

  applyManualAction();
  Serial.println("Manual override active outside schedule");
  return true;
}
bool executePendingCommand(const JsonVariantConst& command) {
  if (command.isNull()) return false;

  String action = command["action"] | "";
  String targetType = command["targetType"] | "";
  String targetComponentId = command["targetComponentId"] | "";

  if (action.isEmpty()) return false;

  
  if (targetComponentId == "manual") {
  manualOverride = true;
  manualAction = action;

  float tempNow = readTemperatureC();

  manualSkipUntilMinute = findCurrentActiveScheduleEndMinute(
    rulesJsonString,
    tempNow
  );

  Serial.print("Manual override activated. Action: ");
  Serial.println(manualAction);
  Serial.print("Skip until minute: ");
  Serial.println(manualSkipUntilMinute);

  applyManualAction();

  return true;
}

  // normal commands
  if (!targetComponentId.isEmpty()) {
    setRelayByComponent(targetComponentId, action);
    return true;
  }

  if (targetType == "device" || targetType.isEmpty()) {
    setWholeDeviceAction(action);
    return true;
  }

  return false;
}

// ---------------- RULE ENGINE ----------------
bool isTimeReady() {
  struct tm timeinfo;
  if (!getLocalTime(&timeinfo)) {
    return false;
  }

  // basic sanity check
  return timeinfo.tm_year > (2024 - 1900);
}
bool isDayMatch(JsonArrayConst days) {
  if (days.isNull() || days.size() == 0) return true;

  struct tm timeinfo;
  if (!getLocalTime(&timeinfo)) return false;

  int d = timeinfo.tm_wday; // 0 = Sunday
  const char* mapDays[] = {"sun", "mon", "tue", "wed", "thu", "fri", "sat"};
  String today = mapDays[d];

  for (JsonVariantConst v : days) {
    if (v.as<String>() == today) return true;
  }

  return false;
}

bool isCurrentTimeBetween(const String& from, const String& to) {
  if (!isTimeReady()) {
    Serial.println("Time not ready yet");
    return false;
  }

  struct tm timeinfo;
  if (!getLocalTime(&timeinfo)) {
    Serial.println("getLocalTime failed");
    return false;
  }

  int currentMinutes = timeinfo.tm_hour * 60 + timeinfo.tm_min;

  int fromHour = from.substring(0, 2).toInt();
  int fromMinute = from.substring(3, 5).toInt();
  int toHour = to.substring(0, 2).toInt();
  int toMinute = to.substring(3, 5).toInt();

  int fromTotal = fromHour * 60 + fromMinute;
  int toTotal = toHour * 60 + toMinute;

  bool matched = currentMinutes >= fromTotal && currentMinutes < toTotal;

  Serial.printf(
    "Current: %02d:%02d | Window: %s -> %s | Match: %s\n",
    timeinfo.tm_hour,
    timeinfo.tm_min,
    from.c_str(),
    to.c_str(),
    matched ? "YES" : "NO"
  );

  return matched;
}



bool checkTempCondition(JsonObjectConst rule, float temp) {
  String source = rule["source"] | "";

  // If this is only a time rule, there is no temperature condition.
  if (source != "tempSensor") return true;

  if (isnan(temp)) return false;

  String op = rule["operator"] | "";
  if (op.isEmpty()) {
    op = rule["condition"] | "";
  }

  float val = String(rule["value"] | "0").toFloat();

  if (op == "lessThan") return temp < val;
  if (op == "lessThanOrEqual") return temp <= val;
  if (op == "greaterThan") return temp > val;
  if (op == "greaterThanOrEqual") return temp >= val;
  if (op == "equalTo") return abs(temp - val) < 0.5;

  return true;
}

bool evaluateSingleRule(const JsonVariantConst& rule, float tempC) {
  if ((rule["enabled"] | true) == false) return false;

  String activeFrom = rule["activeFrom"] | "";
  String activeTo = rule["activeTo"] | "";

  if (!activeFrom.isEmpty() && !activeTo.isEmpty()) {
    Serial.println("Evaluating time rule...");
    return isCurrentTimeBetween(activeFrom, activeTo);
  }

  String source = rule["source"] | "";
  String condition = rule["condition"] | "";
  String valueStr = rule["value"] | "";

  Serial.println("Evaluating sensor rule...");
  Serial.print("source: ");
  Serial.println(source);
  Serial.print("condition: ");
  Serial.println(condition);
  Serial.print("value: ");
  Serial.println(valueStr);

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

void applyRules(String jsonRules, float temp, float pressure, PowerData powerData) {
  if (checkSafety(temp, pressure, powerData)) {
    digitalWrite(PIN_LOWER_RELAY, HIGH);
    digitalWrite(PIN_UPPER_RELAY, HIGH);

    Serial.println("🚨 SAFETY TRIGGERED");
    drawSafetyScreen();
    return;
  }

  if (handleManualOverride(jsonRules, temp)) {
    return;
  }

  if (rulesJsonString.isEmpty()) {
    Serial.println("No rulesJsonString -> both relays OFF");
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

  JsonArrayConst groups;

  if (doc.is<JsonArray>()) {
    groups = doc.as<JsonArrayConst>();
  } else {
    groups = doc["groups"].as<JsonArrayConst>();
  }

  if (groups.isNull()) {
    Serial.println("No groups found -> both relays OFF");
    digitalWrite(PIN_LOWER_RELAY, HIGH);
    digitalWrite(PIN_UPPER_RELAY, HIGH);
    return;
  }

  bool anyMatched = false;
  int index = 0;

  for (JsonVariantConst group : groups) {
    Serial.print("Checking group #");
    Serial.println(index++);

    if (evaluateGroup(group, temp)) {
      Serial.println("Group matched -> executing actions");
      executeGroupActions(group);
      anyMatched = true;
    } else {
      Serial.println("Group not matched");
    }
  }

  if (!anyMatched) {
    Serial.println("No groups matched -> both relays OFF");
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

void sendTelemetry(float tempC, float pressureBar, PowerData powerData) {
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
    payload["temperature"] = nullptr;
    payload["tempSensor"] = nullptr;
  } else {
    payload["temperature"] = tempC;
    payload["tempSensor"] = tempC;
  }

  payload["pressureBar"] = pressureBar;

  payload["voltage"] = powerData.voltage;
  payload["current"] = powerData.current;
  payload["power"] = powerData.power;
  payload["energyKwh"] = powerData.energy;

  payload["safetyTripped"] = safetyTripped;
  payload["safetyMessage"] = safetyMessage;

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

  delay(3000);
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
    configTime(3 * 3600, 0, "pool.ntp.org", "time.nist.gov");

Serial.println("Waiting for NTP time...");
for (int i = 0; i < 20; i++) {
  if (isTimeReady()) {
    Serial.println("NTP time ready");
    break;
  }
  delay(500);
  Serial.print(".");
}
Serial.println();
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
 SPI.begin(TFT_SCLK, -1, TFT_MOSI, -1);
 delay(100);
tft.initR(INITR_144GREENTAB);
tft.setRotation(1);
 tft.fillScreen(ST77XX_BLACK);
showBootScreen();
  pinMode(PIN_BUTTON, INPUT_PULLUP);

  pinMode(PIN_LED_WIFI, OUTPUT);
  // pinMode(MAX31865_CS, INPUT);
  pinMode(PIN_LOWER_RELAY, OUTPUT);
  pinMode(PIN_UPPER_RELAY, OUTPUT);

  digitalWrite(PIN_LOWER_RELAY, HIGH); // active LOW => off
  digitalWrite(PIN_UPPER_RELAY, HIGH); // active LOW => off
  
  digitalWrite(PIN_LED_WIFI, LOW);

  analogReadResolution(12);

  Serial.println();
  Serial.println("ESP32-S3 Temp Project Starting...");

  loadWiFiCredentials();

if (!savedSsid.isEmpty()) {
  showBootStatus("Connecting WiFi...");

  wifiConnected = tryConnectWiFi(savedSsid, savedPass, 15000);

  if (!wifiConnected) {
    showBootStatus("AP Mode Started");
    delay(800);

    Serial.println("Falling back to AP mode");
    startProvisionAP();
  } else {
    showBootStatus("WiFi Connected");
    delay(800);

    showBootStatus("Syncing backend...");
    syncDeviceWithBackend();

    showBootStatus("Ready");
    delay(800);
  }
} else {
  showBootStatus("No WiFi saved");
  delay(800);

  showBootStatus("AP Mode Started");
  delay(800);

  startProvisionAP();
}
 tft.fillScreen(ST77XX_BLACK);
pinMode(MAX31865_CS, OUTPUT);
digitalWrite(MAX31865_CS, HIGH);

pinMode(TFT_CS, OUTPUT);
digitalWrite(TFT_CS, HIGH);

max31865.begin(MAX31865_2WIRE);
currentScreenMode = SCREEN_ALL;

drawCurrentScreenStatic();

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
    lastPressure = readPressure();
    Serial.print("Temp = ");
    if (isnan(currentTemp)) {
      Serial.println("NAN");
    } else {
      Serial.print(currentTemp, 2);
      Serial.println(" C");
    }

float energyKwh = 0.0f;
PowerData p = readPowerSensor();
lastPowerData = p;
 energyKwh = p.energy;

    if(checkSafety(currentTemp, lastPressure, lastPowerData)){
      clearScreen();
      drawSafetyScreen();
    }
    else{applyRules(rulesJsonString, currentTemp, lastPressure, lastPowerData);

    updateScreenMode();
    updateCurrentScreenValues(currentTemp, lastPressure, lastPowerData);}
    
  
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
      sendTelemetry(currentTemp,lastPressure,lastPowerData);
    }
  }
  static unsigned long lastTimeDebug = 0;
if (millis() - lastTimeDebug >= 5000) {
  lastTimeDebug = millis();

  struct tm timeinfo;
  if (getLocalTime(&timeinfo)) {
    Serial.printf("NTP Time: %02d:%02d:%02d\n",
                  timeinfo.tm_hour,
                  timeinfo.tm_min,
                  timeinfo.tm_sec);
  } else {
    Serial.println("NTP Time not available yet");
  }
}
}