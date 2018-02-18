EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:mc34063
LIBS:tle4267
LIBS:Baseboard-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 3
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L C C?
U 1 1 583D6780
P 3950 2350
F 0 "C?" H 3975 2450 50  0000 L CNN
F 1 "C" H 3975 2250 50  0000 L CNN
F 2 "" H 3988 2200 50  0000 C CNN
F 3 "" H 3950 2350 50  0000 C CNN
	1    3950 2350
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 583D682D
P 3700 2350
F 0 "C?" H 3725 2450 50  0000 L CNN
F 1 "C" H 3725 2250 50  0000 L CNN
F 2 "" H 3738 2200 50  0000 C CNN
F 3 "" H 3700 2350 50  0000 C CNN
	1    3700 2350
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR?
U 1 1 583D6878
P 3550 1750
F 0 "#PWR?" H 3550 1600 50  0001 C CNN
F 1 "+5V" H 3550 1890 50  0000 C CNN
F 2 "" H 3550 1750 50  0000 C CNN
F 3 "" H 3550 1750 50  0000 C CNN
	1    3550 1750
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 583D6892
P 4150 4550
F 0 "#PWR?" H 4150 4300 50  0001 C CNN
F 1 "GND" H 4150 4400 50  0000 C CNN
F 2 "" H 4150 4550 50  0000 C CNN
F 3 "" H 4150 4550 50  0000 C CNN
	1    4150 4550
	1    0    0    -1  
$EndComp
$Comp
L ATTINY861A-P IC?
U 1 1 583E3C4C
P 5350 3700
F 0 "IC?" H 4450 4650 50  0000 C CNN
F 1 "ATTINY861A-P" H 6100 2750 50  0000 C CNN
F 2 "DIP20" H 5400 3700 50  0000 C CIN
F 3 "" H 5350 3700 50  0000 C CNN
	1    5350 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	4250 4100 4150 4100
Wire Wire Line
	4150 4100 4150 4550
Wire Wire Line
	4250 4500 4150 4500
Connection ~ 4150 4500
$Comp
L PCF8563 U?
U 1 1 583E3DFE
P 9950 2800
F 0 "U?" H 9650 3150 50  0000 L CNN
F 1 "PCF8563" H 10050 3150 50  0000 L CNN
F 2 "" H 9950 2800 50  0000 C CNN
F 3 "" H 9950 2800 50  0000 C CNN
	1    9950 2800
	-1   0    0    -1  
$EndComp
$Comp
L CONN_01X06 P?
U 1 1 583E3F33
P 8900 4050
F 0 "P?" H 8900 4400 50  0000 C CNN
F 1 "CONN_01X06" V 9000 4050 50  0000 C CNN
F 2 "" H 8900 4050 50  0000 C CNN
F 3 "" H 8900 4050 50  0000 C CNN
	1    8900 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	6450 3800 7800 3800
Wire Wire Line
	7800 3800 7800 3500
Wire Wire Line
	7800 3500 8700 3500
Wire Wire Line
	6450 4000 7950 4000
Wire Wire Line
	7950 4000 7950 3600
Wire Wire Line
	7950 3600 8700 3600
Wire Wire Line
	6450 4100 8050 4100
Wire Wire Line
	8050 4100 8050 3300
Wire Wire Line
	8050 3300 8700 3300
Wire Wire Line
	6450 3600 7700 3600
Wire Wire Line
	7700 3600 7700 3200
Wire Wire Line
	7700 3200 8700 3200
Wire Wire Line
	8700 3100 7600 3100
Wire Wire Line
	7600 3100 7600 3500
Wire Wire Line
	7600 3500 6450 3500
$Comp
L CONN_01X08 P?
U 1 1 583E53FF
P 8900 3250
F 0 "P?" H 8900 3700 50  0000 C CNN
F 1 "CONN_01X08" V 9000 3250 50  0000 C CNN
F 2 "" H 8900 3250 50  0000 C CNN
F 3 "" H 8900 3250 50  0000 C CNN
	1    8900 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	6450 3400 7500 3400
Wire Wire Line
	7500 3400 7500 3000
Wire Wire Line
	7500 3000 8700 3000
$Comp
L CONN_01X02 P?
U 1 1 583E5507
P 8900 1950
F 0 "P?" H 8900 2100 50  0000 C CNN
F 1 "CONN_01X02" V 9000 1950 50  0000 C CNN
F 2 "" H 8900 1950 50  0000 C CNN
F 3 "" H 8900 1950 50  0000 C CNN
	1    8900 1950
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X02 P?
U 1 1 583E553B
P 8900 2450
F 0 "P?" H 8900 2600 50  0000 C CNN
F 1 "CONN_01X02" V 9000 2450 50  0000 C CNN
F 2 "" H 8900 2450 50  0000 C CNN
F 3 "" H 8900 2450 50  0000 C CNN
	1    8900 2450
	1    0    0    -1  
$EndComp
$EndSCHEMATC
