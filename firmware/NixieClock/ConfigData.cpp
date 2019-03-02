#include <NtpClientLib.h>
#include "ConfigData.h"

ConfigData::ConfigData(String thingName, String wifiInitialApPassword, String Version, DNSServer &dnsServer,
        WebServer &webserver) :
        thngName(thingName), passwrd(wifiInitialApPassword), version(Version), server(webserver), IotWebConf(
                this->thngName.c_str(), &dnsServer, &webserver, this->passwrd.c_str(), this->version.c_str()), ntpServerParam(
                IotWebConfParameter("NTP Server", "ntpServerParam", this->ntpServerName, STRING_LEN, "text",
                        "NTP Server", this->ntpServerName, "")), ntpUpdateRateParam(
                IotWebConfParameter("NTP Update Rate", "ntpUpdateRateParam", this->ntpUpdateRate, NUMBER_LEN, "number",
                        "1..120 Minutes", this->ntpUpdateRate, "min='1' max='120' step='1'")), ntpTimezoneParam(
                IotWebConfParameter("Time Zone", "ntpTimezoneParam", this->ntpTimeZone, NUMBER_LEN, "number",
                        "-11..+13 Hours", this->ntpTimeZone, "min='-11' max='13' step='1'")), ntpDLSParam(
                IotWebConfParameter("Enable Daylight Saving", "ntpDLSParam", this->ntpDaylightSaving, NUMBER_LEN,
                        "checkbox", "", this->ntpDaylightSaving, "")), ledBrtParam(
                IotWebConfParameter("LED Brightness", "ledBrtParam", this->ledBrightness, NUMBER_LEN, "number",
                        "0..100 %", this->ledBrightness, "min='0' max='100' step='1'")), stayOnParam(
                IotWebConfParameter("Display duration", "stayOnParam", this->displayOnDuration, NUMBER_LEN, "number",
                        "1..60 Min.", this->displayOnDuration, "min='1' max='60' step='1'")), enableTouchParam(
                IotWebConfParameter("Enable Touch Sensor", "enableTouchParam", this->enableTouch, NUMBER_LEN,
                        "checkbox", "", this->enableTouch, "")), animateParam(
                IotWebConfParameter("Animate Digits", "animateDigitsParam", this->animateDigits, NUMBER_LEN, "checkbox",
                        "", this->animateDigits, "")), separator1(IotWebConfSeparator()), separator2(
                IotWebConfSeparator())
{
    snprintf(ntpServerName, STRING_LEN, "%s", DEFAULT_NTP_SERVER);
    snprintf(ntpTimeZone, NUMBER_LEN, "%d", DEFAULT_NTP_TIMEZONE);
    snprintf(ntpUpdateRate, NUMBER_LEN, "%d", 15);
    snprintf(ntpDaylightSaving, CHCKBOX_LEN, "%d", 0);

    addParameter(&ntpServerParam);
    addParameter(&ntpUpdateRateParam);
    addParameter(&ntpTimezoneParam);
    addParameter(&ntpDLSParam);
    addParameter(&separator1);
    addParameter(&ledBrtParam);
    addParameter(&animateParam);
    addParameter(&separator2);
    addParameter(&enableTouchParam);
    addParameter(&stayOnParam);
    //setFormValidator(&ConfigData::formValidator);
}

String ConfigData::GetNTPServerName()
{
    return String(ntpServerName);
}

int ConfigData::GetNTPUpdateInterval()
{
    return atol(ntpUpdateRate) * 60;
}

int ConfigData::GetTimezone()
{
    return atol(ntpTimeZone);
}

bool ConfigData::GetDLS()
{
    if (strcmp(ntpDaylightSaving, "1") == 0)
    {
        return true;
    }
    else
    {
        return false;
    }
}

int ConfigData::GetLEDBrightness()
{
    return atoi(ledBrightness);
}

bool ConfigData::GetAnimateDigits()
{
    if (strcmp(animateDigits, "1") == 0)
    {
        return true;
    }
    else
    {
        return false;
    }
}

bool ConfigData::GetTouchEnabled()
{
    if (strcmp(enableTouch, "1") == 0)
    {
        return true;
    }
    else
    {
        return false;
    }
}

int ConfigData::GetDisplayOnTime()
{
    return atoi(displayOnDuration);
}

boolean ConfigData::formValidator()
{
    Serial.println("Validating form.");
    char charBuf[5];

    boolean valid = true;
    long updateInterval = 0;
    long timeOffset = 0;
    byte ledBrt = 0;

    server.arg(ledBrtParam.getId()).toCharArray(charBuf, 5);

    ledBrt = atoi(charBuf);
    if (ledBrt > 100)
    {
        ledBrtParam.errorMessage = "Please provide a value between 0 and 100 %";
        valid = false;
    }

    server.arg(ntpUpdateRateParam.getId()).toCharArray(charBuf, 5);
    updateInterval = atol(charBuf);
    updateInterval *= 60000;
    if ((updateInterval > 7200000) || (updateInterval < 60000))
    {
        ntpUpdateRateParam.errorMessage = "Please provide a value between 1 and 120 minutes";
        valid = false;
    }

    int l = server.arg(ntpServerParam.getId()).length();
    if (l < 5)
    {
        ntpServerParam.errorMessage = "Please provide at least 5 characters";
        valid = false;
    }

    server.arg(ntpTimezoneParam.getId()).toCharArray(charBuf, 5);
    timeOffset = atol(charBuf);

    if ((timeOffset > 13) || (timeOffset < -11))
    {
        ntpTimezoneParam.errorMessage = "Please provide a value between -11 and +13 hours";
        valid = false;
    }

    return valid;
}

