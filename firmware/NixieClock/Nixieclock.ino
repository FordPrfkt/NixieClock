#include <Arduino.h>
#include <ESP8266WiFi.h>
#include <ESP8266Webserver.h>
#include <ESP8266HTTPUpdateServer.h>
#include <DNSServer.h>
#include <NtpClientLib.h>
#include <TaskScheduler.h>
#include <TaskSchedulerDeclarations.h>
#include "ConfigData.h"
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
#define INITIAL_PASSWORD "smrtTHNG8266"

boolean syncEventTriggered = false; // True if a time even has been triggered
boolean beginNTP;
boolean ntpActive = false;
NTPSyncEvent_t ntpEvent; // Last triggered event
byte ctr;

WiFiUDP ntpUDP;
DNSServer dnsServer;
ESP8266WebServer server(80);
ESP8266HTTPUpdateServer httpUpdater;
ConfigData configData(THING_NAME, INITIAL_PASSWORD, CONFIG_VERSION, dnsServer, server);
Scheduler runner;
NixieDriver nxDrv;

//Tasks
Task t1(5000, TASK_FOREVER, &t1Callback);
Task t2(25, TASK_FOREVER, &t2Callback);

// -- Callback method declarations.
void wifiConnected();
void t1Callback();
void t2Callback();
void processSyncEvent(NTPSyncEvent_t ntpEvent);
void updateParameters(void);

void convert(byte data, byte *tens, byte *ones);

void t1Callback()
{
    byte hrTens;
    byte hrOnes;
    byte mnTens;
    byte mnOnes;
    byte scTens;
    byte scOnes;

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

void setup()
{
    wdt_disable();
    wdt_enable(5000);

    pinMode(PIN_TOUCH, INPUT);

    Serial.begin(115200);

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

    configData.init();
    configData.setWifiConnectionCallback(wifiConnected);
    configData.setConfigSavedCallback(updateParameters);
    configData.setStatusPin(STATUS_PIN);
    configData.setupUpdateServer(&httpUpdater);

    // Set up required URL handlers on the web server.
    server.on("/", handleRoot);
    server.on("/config", [&]
    {   configData.handleConfig();});
    server.onNotFound([&]()
    {   configData.handleNotFound();});

    nxDrv.begin();
    updateParameters();

    runner.init();
    runner.addTask(t1);
    runner.addTask(t2);

    Serial.print("Nixie-Clock started\n");
    Serial.print("------------------\n\n");
    /*

     t1.enable();
     t2.enable();*/
}

void loop()
{
    // -- doLoop should be called as frequently as possible.
    runner.execute();
    configData.doLoop();
    if (syncEventTriggered)
    {
        processSyncEvent(ntpEvent);
        syncEventTriggered = false;
    }

    if (beginNTP)
    {
        NTP.begin(configData.GetNTPServerName(), configData.GetTimezone(), configData.GetDLS(), 0, &ntpUDP);
        beginNTP = false;
        ntpActive = true;
    }
}

/**
 * Handle web requests to "/" path.
 */
void handleRoot()
{
    // -- Let IotWebConf test and handle captive portal requests.
    if (configData.handleCaptivePortal())
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

void wifiConnected()
{
    if (IOTWEBCONF_STATE_ONLINE == configData.getState())
    {
        beginNTP = true;
    }
    else
    {
        NTP.stop();
        ntpActive = false;
    }
}

void updateParameters(void)
{
    nxDrv.setLEDBrightness(configData.GetLEDBrightness());
    nxDrv.setAnimateDigits(configData.GetAnimateDigits());
    /* TODO: DisplayOnDuration, TouchEnabled */

    if (ntpActive == true)
    {
        NTP.setNtpServerName(configData.GetNTPServerName());
        NTP.setInterval(configData.GetNTPUpdateInterval());
        NTP.setTimeZone(configData.GetTimezone());
        NTP.setDayLight(configData.GetDLS());
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
