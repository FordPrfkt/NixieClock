#include <SPI.h>
#include <string.h>

#include "NixieDriver.h"

#define PIN_DATA 14
#define PIN_CLK 13
#define PIN_SS 16

#define FIRST_OFFSET 63
#define SEC_OFFSET 43
#define THRD_OFFSET 23

#define NX_BYTE_FROM_BIT(_x) (_x / 8)

#define NX_1_TENS_BIT(_x) (FIRST_OFFSET - (9 - _x))
#define NX_1_ONES_BIT(_x) ((FIRST_OFFSET - 10) - (9 - _x))

#define NX_2_TENS_BIT(_x) (SEC_OFFSET - (9 - _x))
#define NX_2_ONES_BIT(_x) ((SEC_OFFSET - 10) - (9 - _x))

#define NX_3_TENS_BIT(_x) (THRD_OFFSET - (9 - _x))
#define NX_3_ONES_BIT(_x) ((THRD_OFFSET - 10) - (9 - _x))

#define NX_INC(_x) ((++_x)%=10)

NixieDriver::NixieDriver()
{
  clear();
}

void NixieDriver::begin()
{
  pinMode(PIN_DATA, OUTPUT);
  pinMode(PIN_CLK, OUTPUT);
  pinMode(PIN_SS, OUTPUT);

  digitalWrite(PIN_DATA, LOW);
  digitalWrite(PIN_CLK, LOW);
  digitalWrite(PIN_SS, LOW);
}

void NixieDriver::end()
{
  digitalWrite(PIN_DATA, LOW);
  digitalWrite(PIN_CLK, LOW);
  digitalWrite(PIN_SS, LOW);
}

void NixieDriver::clear()
{
  byte ctr;
  memset(this->outBuf, 0, sizeof(this->outBuf));
  for (ctr = 0; ctr < 6; ctr++)
  {
    this->actDigit[ctr] = 0;
    this->digit[ctr] = 0;
  }
  this->updated = true;
}

void NixieDriver::show(byte tens1, byte ones1, byte tens2, byte ones2, byte tens3, byte ones3, bool dp1, bool dp2, bool dp3, bool animate)
{
  if (true == animate)
  {
    if (tens1 != this->digit[0])
    {
      this->actDigit[0] = tens1;
      NX_INC(this->actDigit[0]);  
    }
    
    if (ones1 != this->digit[1])
    {
      this->actDigit[1] = ones1;
      NX_INC(this->actDigit[1]);  
    }
      
    if (tens2 != this->digit[2])
    {
      this->actDigit[2] = tens2;
      NX_INC(this->actDigit[2]);  
    }
    
    if (ones2 != this->digit[3])
    {
      this->actDigit[3] = ones2;
      NX_INC(this->actDigit[3]);  
    }

    if (tens3 != this->digit[4])
    {
      this->actDigit[4] = tens3;
      NX_INC(this->actDigit[4]);  
    }
    
    if (ones3 != this->digit[5])
    {
      this->actDigit[5] = ones3;
      NX_INC(this->actDigit[5]);  
    }
  }
  else
  {
    this->actDigit[0] = tens1;
    this->actDigit[1] = ones1;
    this->actDigit[2] = tens2;
    this->actDigit[3] = ones2;
    this->actDigit[4] = tens3;
    this->actDigit[5] = ones3;
  }
  
  this->digit[0] = tens1;
  this->digit[1] = ones1;
  this->digit[2] = tens2;
  this->digit[3] = ones2;
  this->digit[4] = tens3;
  this->digit[5] = ones3;

  this->updated = true;    
}

void NixieDriver::update()
{
  byte ctr;
  byte bitNr;
 
  if (this->updated == true)
  {
    memset(this->outBuf, 0, sizeof(this->outBuf)); 

    bitNr = NX_1_TENS_BIT(this->actDigit[0]); 
    this->outBuf[NX_BYTE_FROM_BIT(bitNr)] |= (1 << (bitNr % 8)); 
    bitNr = NX_1_ONES_BIT(this->actDigit[1]); 
    this->outBuf[NX_BYTE_FROM_BIT(bitNr)] |= (1 << (bitNr % 8));

    bitNr = NX_2_TENS_BIT(this->actDigit[2]); 
    this->outBuf[NX_BYTE_FROM_BIT(bitNr)] |= (1 << (bitNr % 8));  
    bitNr = NX_2_ONES_BIT(this->actDigit[3]); 
    this->outBuf[NX_BYTE_FROM_BIT(bitNr)] |= (1 << (bitNr % 8));

    bitNr = NX_3_TENS_BIT(this->actDigit[4]); 
    this->outBuf[NX_BYTE_FROM_BIT(bitNr)] |= (1 << (bitNr % 8));  
    bitNr = NX_3_ONES_BIT(this->actDigit[5]); 
    this->outBuf[NX_BYTE_FROM_BIT(bitNr)] |= (1 << (bitNr % 8));

    for (ctr = 8; ctr-- > 0; )
    {
      shiftOut(PIN_DATA, PIN_CLK, LSBFIRST, this->outBuf[ctr]);
    }    

    digitalWrite(PIN_SS, HIGH);
    digitalWrite(PIN_CLK, LOW);
    digitalWrite(PIN_DATA, LOW);
    delayMicroseconds(2);
    digitalWrite(PIN_SS, LOW);

    this->updated = false;
    for (ctr = 0; ctr < 6; ctr++)
    {
      if (this->actDigit[ctr] != this->digit[ctr])
      {
        NX_INC(this->actDigit[ctr]);
        this->updated = true;
      }    
    }
  }
}
