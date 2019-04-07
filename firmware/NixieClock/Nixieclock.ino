#include <ESP8266WiFi.h>
#include <ESP8266Webserver.h>
#include <ESP8266HTTPUpdateServer.h>
#include <DNSServer.h>
#include <FS.h>
#include <NtpClientLib.h>
#include <TaskScheduler.h>
#include <TaskSchedulerDeclarations.h>

#include "ConfigHandler.h"
#include "NixieDriver.h"

//ADC_MODE(ADC_VCC);

#define PIN_TOUCH 4

// -- Configuration specific key. The value should be modified if config structure was changed.
#define CONFIG_VERSION "NixieV1"

// -- Status indicator pin.
//      First it will light up (kept LOW), on Wifi connection it will blink,
//      when connected to the Wifi it will turn off (kept HIGH).
#define STATUS_PIN LED_BUILTIN

// -- Initial name of the Thing. Used e.g. as SSID of the own Access Point.
#define THING_NAME "NixieClock"

// -- Initial password to connect to the Thing, when it creates an own Access Point.
#define INITIAL_PASSWORD "NixieClock"

// -- Callback method declarations.
void wifiConnected();
void t1Callback();
void t2Callback();
void tDisplayOffCallback();
void handleRoot();
void fileindex();
void bootstrap();
void popper();
void bootstrapmin();
void processSyncEvent(NTPSyncEvent_t ntpEvent);
void updateParameters(void);
void convert(byte data, byte *tens, byte *ones);

Scheduler runner;
Task t1(250, TASK_FOREVER, &t1Callback);
Task t2(25, TASK_FOREVER, &t2Callback);
Task displayOff(1000, TASK_ONCE, &tDisplayOffCallback);

ESP8266WebServer server(80);
ESP8266HTTPUpdateServer httpUpdater;
WiFiUDP ntpUDP;
DNSServer dnsServer;
ConfigHandler configHandler(THING_NAME, INITIAL_PASSWORD, CONFIG_VERSION, dnsServer, server);
NTPSyncEvent_t ntpEvent; // Last triggered event
NixieDriver nxDrv;
boolean syncEventTriggered = false; // True if a time even has been triggered
boolean ntpActive = false;

void t1Callback()
{
    byte hrTens;
    byte hrOnes;
    byte mnTens;
    byte mnOnes;
    byte scTens;
    byte scOnes;
    static byte ctr = 0;

    ctr++;
    ctr %= 10;

    convert(hour(), &hrTens, &hrOnes);
    convert(minute(), &mnTens, &mnOnes);
    convert(second(), &scTens, &scOnes);
//  nxDrv.show(hrTens, hrOnes, mnTens, mnOnes, scTens, scOnes, false, false, false, true);
    nxDrv.show(ctr, ctr, ctr, ctr, ctr, ctr, false, false, false);
}

void t2Callback()
{
    nxDrv.update();
}

void tDisplayOffCallback()
{
    nxDrv.setTubesEnabled(false);
}

void touchInterrupt()
{
    if (false == nxDrv.getTubesEnabled())
    {
        nxDrv.setTubesEnabled(true);
    }
    displayOff.restart();
}

void setup()
{
    wdt_disable();
    wdt_enable(5000);

    pinMode(PIN_TOUCH, INPUT);

    Serial.begin(115200);
    SPIFFS.begin();
    
    runner.init();

    NTP.onNTPSyncEvent([](NTPSyncEvent_t event)
    {   ntpEvent = event; syncEventTriggered = true;});

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

    configHandler.init();
    configHandler.setWifiConnectionCallback(wifiConnected);
    configHandler.setConfigSavedCallback(updateParameters);
    configHandler.setStatusPin(STATUS_PIN);
    configHandler.setupUpdateServer(&httpUpdater);

    // Set up required URL handlers on the web server.
    server.on("/", handleRoot);
    server.on("/", fileindex);
server.on("/index.html", fileindex);
server.on("/bootstrap.min.css", bootstrap);
server.on("bootstrap.min.css", bootstrap);
server.on("/popper.min.js", popper);
server.on("/bootstrap.min.js", bootstrapmin);
server.on("bootstrap.min.js", bootstrapmin);
    server.on("/config", [&]
    {   configHandler.handleConfig();});
    server.onNotFound([&]()
    {   configHandler.handleNotFound();});

    nxDrv.begin();
    updateParameters();

    runner.addTask(t1);
    runner.addTask(t2);
    runner.addTask(displayOff);

    Serial.print("Nixie-Clock started\n");
    Serial.print("------------------\n\n");

     t1.enable();
     t2.enable();
}

void loop()
{
    // -- doLoop should be called as frequently as possible.
    runner.execute();
    configHandler.doLoop();

    if (syncEventTriggered)
    {
        processSyncEvent(ntpEvent);
        syncEventTriggered = false;
    }
}

/**
 * Handle web requests to "/" path.
 */
void handleRoot()
{
    // -- Let IotWebConf test and handle captive portal requests.
    if (configHandler.handleCaptivePortal())
    {
        // -- Captive portal request were already served.
        return;
    }

    String s =
            "<!DOCTYPE html><html lang=\"en\"><head><meta name=\"viewport\" content=\"width=device-width, initial-scale=1, user-scalable=no\"/>";
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

void fileindex()
{
  File file = SPIFFS.open("/index.html", "r");
  size_t sent = server.streamFile(file, "text/html");
}
void bootstrap()
{
  File file = SPIFFS.open("/bootstrap.min.css", "r");
  size_t sent = server.streamFile(file, "text/css");
}
void popper()
{
  File file = SPIFFS.open("/popper.min.js", "r");
  size_t sent = server.streamFile(file, "application/javascript");
}
void bootstrapmin()
{
  File file = SPIFFS.open("/bootstrap.min.js", "r");
  size_t sent = server.streamFile(file, "application/javascript");
}

void wifiConnected()
{
    if (IOTWEBCONF_STATE_ONLINE == configHandler.getState())
    {
        if (ntpActive == false)
        {
            NTP.begin(configHandler.GetNTPServerName(), configHandler.GetTimezone(), configHandler.GetDLS(), 0, &ntpUDP);
            ntpActive = true;
        }
    }
    else
    {
        if (ntpActive == true)
        {
            NTP.stop();
            ntpActive = false;
        }
    }
}

void updateParameters(void)
{
    nxDrv.setLEDBrightness(configHandler.GetLEDBrightness());
    nxDrv.setAnimateDigits(configHandler.GetAnimateDigits());

    if (configHandler.GetTouchEnabled() == true)
    {
        attachInterrupt(digitalPinToInterrupt(PIN_TOUCH), touchInterrupt, FALLING);
        displayOff.setInterval(configHandler.GetDisplayOnTime() * TASK_MINUTE);
        displayOff.restart();
    }
    else
    {
        displayOff.disable();
        detachInterrupt(PIN_TOUCH);

    }

    if (ntpActive == true)
    {
        NTP.setNtpServerName(configHandler.GetNTPServerName());
        NTP.setInterval(configHandler.GetNTPUpdateInterval());
        NTP.setTimeZone(configHandler.GetTimezone());
        NTP.setDayLight(configHandler.GetDLS());
    }
}

void processSyncEvent(NTPSyncEvent_t ntpEvent)
{
    if (ntpEvent)
    {
        Serial.print("Time Sync error: ");
        if (ntpEvent == noResponse)
            Serial.println("NTP server not reachable");
        else if (ntpEvent == invalidAddress)
            Serial.println("Invalid NTP server address");
    }
    else
    {
        Serial.print("Got NTP time: ");
        Serial.println(NTP.getTimeDateString(NTP.getLastNTPSync()));
    }
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
