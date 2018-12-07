#include <ESP8266WiFi.h>
#include <ESP8266WebServer.h>
#include <DNSServer.h>
#include <IotWebConf.h>
#include <WiFiUdp.h>
#include <NTPClient.h>
#include <TaskScheduler.h>
#include <TaskSchedulerDeclarations.h>
#include "NixieDriver.h"
#include "Webserver.h"

ADC_MODE(ADC_VCC);

#define PIN_HV_ON 5
#define PIN_HV_STAT 0
#define PIN_TOUCH 4
#define PIN_LED 12

// -- Configuration specific key. The value should be modified if config structure was changed.
#define CONFIG_VERSION "NixieV1"

// -- Status indicator pin.
//      First it will light up (kept LOW), on Wifi connection it will blink,
//      when connected to the Wifi it will turn off (kept HIGH).
#define STATUS_PIN LED_BUILTIN

#define STRING_LEN 40

void convert(byte data, byte *tens, byte *ones);

// -- Callback method declarations.
void configSaved();
void wifiConnected();
boolean formValidator();
void t1Callback();
void t2Callback();

// -- Initial name of the Thing. Used e.g. as SSID of the own Access Point.
const char thingName[] = "NixieClock";

// -- Initial password to connect to the Thing, when it creates an own Access Point.
const char wifiInitialApPassword[] = "smrtTHNG8266";

char ntpServerName[STRING_LEN];
char ntpUpdateRate;
char ledBrightness;
char animateDigits;
char enableTouch;
char displayOnDuration;

WiFiUDP ntpUDP;
NTPClient timeClient(ntpUDP);
DNSServer dnsServer;
ESP8266WebServer server(80);

IotWebConf iotWebConf(thingName, &dnsServer, &server, wifiInitialApPassword, CONFIG_VERSION);
IotWebConfParameter ntpServerParam = IotWebConfParameter("NTP Server", "ntpServerParam", ntpServerName, STRING_LEN);
IotWebConfParameter ntpUpdateRateParam = IotWebConfParameter("NTP Update Rate", "ntpUpdateRateParam", &ntpUpdateRate, sizeof(ntpUpdateRate), "number", "1..120 Minutes", NULL, "min='1' max='120' step='1'");
IotWebConfSeparator separator1 = IotWebConfSeparator();
IotWebConfParameter ledBrtParam = IotWebConfParameter("LED Brightness", "ledBrtParam", &ledBrightness, sizeof(ledBrightness), "number", "0..100 %", NULL, "min='0' max='100' step='1'");
IotWebConfParameter animateParam = IotWebConfParameter("Animate Digits", "animateParam", &animateDigits, sizeof(animateDigits), "checkbox", "0..1", NULL, "min='0' max='1' step='1'");
IotWebConfSeparator separator2 = IotWebConfSeparator();
IotWebConfParameter enableTouchParam = IotWebConfParameter("Enable Touch Sensor", "enableTouchParam", &enableTouch, sizeof(enableTouch), "checkbox", "0..1", NULL, "min='0' max='1' step='1'");
IotWebConfParameter stayOnParam = IotWebConfParameter("Display duration", "stayOnParam", &displayOnDuration, sizeof(displayOnDuration), "number", "1..60 Min.", NULL, "min='1' max='60' step='1'");

Scheduler runner;
NixieDriver nxDrv;

//Tasks
Task t1(5000, TASK_FOREVER, &t1Callback);
Task t2(25, TASK_FOREVER, &t2Callback);

byte ctr;

void t1Callback() { 
  byte hrTens;
  byte hrOnes;
  byte mnTens;
  byte mnOnes;
  byte scTens;
  byte scOnes;
  
//  timeClient.update();
   ctr++;
   ctr %= 10;
  
  convert(timeClient.getHours(), &hrTens, &hrOnes);
  convert(timeClient.getMinutes(), &mnTens, &mnOnes);
  convert(timeClient.getSeconds(), &scTens, &scOnes);
//  nxDrv.show(hrTens, hrOnes, mnTens, mnOnes, scTens, scOnes, false, false, false, true);
  nxDrv.show(ctr, ctr, ctr, ctr, ctr, ctr, false, false, false, false);
}

void t2Callback() {
   nxDrv.update();
}

void setup() {
  char connectTimeout = 0;
  
  pinMode(PIN_LED, OUTPUT);
  pinMode(PIN_HV_ON, OUTPUT);
  pinMode(PIN_HV_STAT, INPUT);
  pinMode(PIN_TOUCH, INPUT);

  Serial.begin(115200);

  //Throw out some version and status information 
  Serial.println();
  Serial.print("Start. CPU Info:\n");
  Serial.printf("Chip-ID: %d\n", ESP.getChipId());
  Serial.printf("CPU Freq.: %d MHz\n", ESP.getCpuFreqMHz());
  Serial.printf("Core Version: %s\n", ESP.getCoreVersion().c_str());
  Serial.printf("SDK Version: %s\n", ESP.getSdkVersion());
  Serial.print("------------------\n");
  Serial.printf("Sketch Size: %d Bytes\n", ESP.getSketchSize());
  Serial.printf("Remaining Sketch Space: %d Bytes\n", ESP.getFreeSketchSpace());
  Serial.print("------------------\n");
  Serial.printf("Reset Reason: %s\n", ESP.getResetReason().c_str());
  Serial.print("------------------\n");

  //Set up IOTConfig
  Serial.print("\nStarting IOTConf...");
  iotWebConf.setStatusPin(STATUS_PIN);
  iotWebConf.addParameter(&ntpServerParam);
  iotWebConf.addParameter(&ntpUpdateRateParam);
  iotWebConf.addParameter(&separator1);
  iotWebConf.addParameter(&ledBrtParam);
  iotWebConf.addParameter(&animateParam);
  iotWebConf.addParameter(&separator2);
  iotWebConf.addParameter(&enableTouchParam);
  iotWebConf.addParameter(&stayOnParam);
  iotWebConf.setWifiConnectionCallback(&wifiConnected);
  iotWebConf.setConfigSavedCallback(&configSaved);
  iotWebConf.setFormValidator(&formValidator);

  // Initializing the configuration.
  iotWebConf.init();

  // Set up required URL handlers on the web server.
  server.on("/", handleRoot);
  server.on("/config", []{ iotWebConf.handleConfig(); });
  server.onNotFound([](){ iotWebConf.handleNotFound(); });
  Serial.print("OK\n");

  nxDrv.begin(); 
  runner.init();
  runner.addTask(t1);
  runner.addTask(t2);

  digitalWrite(PIN_HV_ON, LOW);
  analogWrite(PIN_LED, 125);
  
  Serial.print("Nixie-Clock started\n");

/*  
  digitalWrite(PIN_HV_ON, HIGH);

  t1.enable();
  t2.enable();*/
}

void loop() {
  // -- doLoop should be called as frequently as possible.
  iotWebConf.doLoop();
  runner.execute();
}

/**
 * Handle web requests to "/" path.
 */
void handleRoot()
{
  // -- Let IotWebConf test and handle captive portal requests.
  if (iotWebConf.handleCaptivePortal())
  {
    // -- Captive portal request were already served.
    return;
  }
  String s = "<!DOCTYPE html><html lang=\"en\"><head><meta name=\"viewport\" content=\"width=device-width, initial-scale=1, user-scalable=no\"/>";
  s += "<title>IotWebConf 03 Custom Parameters</title></head><body>Hello world!";
  s += "<ul>";
 /* s += "<li>String param value: ";
  s += stringParamValue;
  s += "<li>Int param value: ";
  s += atoi(intParamValue);
  s += "<li>Float param value: ";
  s += atof(floatParamValue);*/
  s += "</ul>";
  s += "Go to <a href='config'>configure page</a> to change values.";
  s += "</body></html>\n";

  server.send(200, "text/html", s);
}

void wifiConnected()
{
  if (IOTWEBCONF_STATE_ONLINE == iotWebConf.getState())
  {
    timeClient.begin();
  }
  else
  {
    timeClient.end();
  }
}

void configSaved()
{
  Serial.println("Configuration was updated.");
}

boolean formValidator()
{
  Serial.println("Validating form.");
  boolean valid = true;

  int l = server.arg(ntpServerParam.getId()).length();
  if (l < 3)
  {
    ntpServerParam.errorMessage = "Please provide at least 3 characters for this test!";
    valid = false;
  }

  return valid;
}

void convert(byte data, byte *tens, byte *ones)
{
  *tens = (data / 10);
  *ones = (data % 10);

  if (0 == *ones)
  {
    *ones = 10;
  }
  
  if (0 == *tens)
  {
    *tens = 10;    
  }
  *tens -= 1;
  *ones -= 1;  
}
