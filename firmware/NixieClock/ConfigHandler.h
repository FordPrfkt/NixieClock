#ifndef CONFIGDATA_H
#define CONFIGDATA_H

#define STRING_LEN 40
#define NUMBER_LEN 32
#define CHCKBOX_LEN 4
#define CONFIG_VERSION "NixieV1"

#include <IotWebConf.h>

class ConfigHandler : IotWebConf
{
  public:
    ConfigHandler(const char *thingName, const char *wifiInitialApPassword, const char *Version, DNSServer &dnsServer, WebServer &server);
    using IotWebConf::init;
    using IotWebConf::doLoop;
    using IotWebConf::getState;
    using IotWebConf::setWifiConnectionCallback;
    using IotWebConf::setConfigSavedCallback;
    using IotWebConf::handleCaptivePortal;
    using IotWebConf::handleConfig;
    using IotWebConf::handleNotFound;
    using IotWebConf::setStatusPin;
    using IotWebConf::setupUpdateServer;
    String GetNTPServerName();
    int GetNTPUpdateInterval();
    int GetTimezone();
    bool GetDLS();
    int GetLEDBrightness();
    bool GetAnimateDigits();
    bool GetTouchEnabled();
    int GetDisplayOnTime();
    
  private:
    WebServer &server;
    char ntpServerName[STRING_LEN];
    char ntpUpdateRate[NUMBER_LEN];
    char ntpTimeZone[NUMBER_LEN];
    char ntpDaylightSaving[CHCKBOX_LEN];
    char ledBrightness[NUMBER_LEN];
    char animateDigits[CHCKBOX_LEN];
    char enableTouch[CHCKBOX_LEN];
    char displayOnDuration[NUMBER_LEN];
    IotWebConfParameter ntpServerParam;
    IotWebConfParameter ntpUpdateRateParam;
    IotWebConfParameter ntpTimezoneParam;
    IotWebConfParameter ntpDLSParam;
    IotWebConfParameter ledBrtParam;
    IotWebConfParameter stayOnParam;
    IotWebConfParameter enableTouchParam;
    IotWebConfParameter animateParam;
    IotWebConfSeparator separator1;
    IotWebConfSeparator separator2;
    boolean formValidator(void);
};

#endif
