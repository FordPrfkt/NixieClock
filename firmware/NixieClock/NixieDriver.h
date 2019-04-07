#ifndef NIXIEDRIVER_H
#define NIXIEDRIVER_H

class NixieDriver
{
public:
    NixieDriver();
    void begin(void);
    void end(void);
    void clear(void);
    void setAnimateDigits(bool animate);
    void setLEDBrightness(byte percent);
    void setTubesEnabled(bool enabled);
    boolean getTubesEnabled(void);
    void show(byte tens1, byte ones1, byte tens2, byte ones2, byte tens3, byte ones3, bool dp1, bool dp2, bool dp3);
    void update(void);

private:
    byte outBuf[8];
    byte digit[6];
    byte actDigit[6];
    bool decimalPoints[3];
    bool animate;
    bool updated;
};

#endif
