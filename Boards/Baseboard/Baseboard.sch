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
LIBS:ESP8266
LIBS:w_rtx
LIBS:switches
LIBS:74xx-eu
LIBS:Baseboard-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Nixie-Clock Base Board"
Date "2018-02-19"
Rev "1.0"
Comp "Daniel Walter"
Comment1 "fordprfkt@googlemail.com"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L MC34063AP IC?
U 1 1 58489ED9
P 3800 1850
AR Path="/583D2D00/58489ED9" Ref="IC?"  Part="1" 
AR Path="/58489ED9" Ref="IC1"  Part="1" 
F 0 "IC1" H 3400 1950 50  0000 L BNN
F 1 "MC34063AP" H 3400 1350 50  0000 L BNN
F 2 "Housings_DIP:DIP-8_W7.62mm" H 3800 2000 50  0001 C CNN
F 3 "" H 3800 1850 60  0001 C CNN
	1    3800 1850
	1    0    0    -1  
$EndComp
$Comp
L C C3
U 1 1 58489EE0
P 2900 2250
F 0 "C3" H 2925 2350 50  0000 L CNN
F 1 "100nF" H 2925 2150 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D3.0mm_W2.0mm_P2.50mm" H 2938 2100 50  0001 C CNN
F 3 "" H 2900 2250 50  0000 C CNN
	1    2900 2250
	1    0    0    -1  
$EndComp
$Comp
L CP C4
U 1 1 58489EE7
P 4650 2300
F 0 "C4" H 4675 2400 50  0000 L CNN
F 1 "2µ2" H 4675 2200 50  0000 L CNN
F 2 "Capacitors_THT:CP_Radial_D6.3mm_P2.50mm" H 4688 2150 50  0001 C CNN
F 3 "" H 4650 2300 50  0000 C CNN
	1    4650 2300
	1    0    0    -1  
$EndComp
$Comp
L D D2
U 1 1 58489EEE
P 5150 1950
F 0 "D2" H 5150 2050 50  0000 C CNN
F 1 "1N914" H 5150 1850 50  0000 C CNN
F 2 "Diodes_THT:D_DO-35_SOD27_P10.16mm_Horizontal" H 5150 1950 50  0001 C CNN
F 3 "" H 5150 1950 50  0000 C CNN
	1    5150 1950
	-1   0    0    1   
$EndComp
$Comp
L INDUCTOR_SMALL L1
U 1 1 58489EF5
P 5300 1300
F 0 "L1" H 5300 1400 50  0000 C CNN
F 1 "220µH" H 5300 1250 50  0000 C CNN
F 2 "Inductors_THT:L_Radial_D6.0mm_P4.00mm" H 5300 1300 50  0001 C CNN
F 3 "" H 5300 1300 50  0000 C CNN
	1    5300 1300
	1    0    0    -1  
$EndComp
$Comp
L Q_NMOS_GDS Q1
U 1 1 58489EFC
P 5950 1950
F 0 "Q1" H 6250 2000 50  0000 R CNN
F 1 "IRF740" H 6400 1900 50  0000 R CNN
F 2 "TO_SOT_Packages_THT:TO-220-3_Horizontal" H 6150 2050 50  0001 C CNN
F 3 "" H 5950 1950 50  0000 C CNN
	1    5950 1950
	1    0    0    -1  
$EndComp
$Comp
L Q_PNP_BCE Q2
U 1 1 58489F03
P 5350 2150
F 0 "Q2" H 5650 2200 50  0000 R CNN
F 1 "MPSA55" H 5850 2100 50  0000 R CNN
F 2 "TO_SOT_Packages_THT:TO-92_Inline_Wide" H 5550 2250 50  0001 C CNN
F 3 "" H 5350 2150 50  0000 C CNN
	1    5350 2150
	1    0    0    1   
$EndComp
$Comp
L R R2
U 1 1 58489F0A
P 2700 1850
F 0 "R2" V 2780 1850 50  0000 C CNN
F 1 "1R" V 2700 1850 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 2630 1850 50  0001 C CNN
F 3 "" H 2700 1850 50  0000 C CNN
	1    2700 1850
	0    1    1    0   
$EndComp
$Comp
L GND #PWR01
U 1 1 58489F11
P 2900 2600
F 0 "#PWR01" H 2900 2350 50  0001 C CNN
F 1 "GND" H 2900 2450 50  0000 C CNN
F 2 "" H 2900 2600 50  0000 C CNN
F 3 "" H 2900 2600 50  0000 C CNN
	1    2900 2600
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR02
U 1 1 58489F19
P 4450 2600
F 0 "#PWR02" H 4450 2350 50  0001 C CNN
F 1 "GND" H 4450 2450 50  0000 C CNN
F 2 "" H 4450 2600 50  0000 C CNN
F 3 "" H 4450 2600 50  0000 C CNN
	1    4450 2600
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR03
U 1 1 58489F21
P 4650 2600
F 0 "#PWR03" H 4650 2350 50  0001 C CNN
F 1 "GND" H 4650 2450 50  0000 C CNN
F 2 "" H 4650 2600 50  0000 C CNN
F 3 "" H 4650 2600 50  0000 C CNN
	1    4650 2600
	1    0    0    -1  
$EndComp
$Comp
L CP C1
U 1 1 58489F32
P 4650 1450
F 0 "C1" H 4675 1550 50  0000 L CNN
F 1 "220µF/25V" H 4675 1350 50  0000 L CNN
F 2 "Capacitors_THT:CP_Radial_D8.0mm_P3.50mm" H 4688 1300 50  0001 C CNN
F 3 "" H 4650 1450 50  0000 C CNN
F 4 "Low ESR" H 4650 1700 60  0000 C CNN "Feld4"
	1    4650 1450
	1    0    0    -1  
$EndComp
$Comp
L R R3
U 1 1 58489F39
P 4950 2300
F 0 "R3" V 5030 2300 50  0000 C CNN
F 1 "1k" V 4950 2300 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 4880 2300 50  0001 C CNN
F 3 "" H 4950 2300 50  0000 C CNN
	1    4950 2300
	-1   0    0    1   
$EndComp
$Comp
L D D1
U 1 1 58489F4A
P 6600 1300
F 0 "D1" H 6600 1400 50  0000 C CNN
F 1 "BAV21" H 6600 1200 50  0000 C CNN
F 2 "Diodes_THT:D_DO-35_SOD27_P10.16mm_Horizontal" H 6600 1300 50  0001 C CNN
F 3 "" H 6600 1300 50  0000 C CNN
	1    6600 1300
	-1   0    0    1   
$EndComp
$Comp
L CP C2
U 1 1 58489F52
P 8950 1900
F 0 "C2" H 8975 2000 50  0000 L CNN
F 1 "2µ2 / 250V" H 8975 1800 50  0000 L CNN
F 2 "Capacitors_THT:CP_Radial_D8.0mm_P3.50mm" H 8988 1750 50  0001 C CNN
F 3 "" H 8950 1900 50  0000 C CNN
	1    8950 1900
	1    0    0    -1  
$EndComp
$Comp
L R R1
U 1 1 58489F5D
P 6900 1700
F 0 "R1" V 6980 1700 50  0000 C CNN
F 1 "475k" V 6900 1700 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 6830 1700 50  0001 C CNN
F 3 "" H 6900 1700 50  0000 C CNN
F 4 "1% Metal" V 7050 1700 60  0000 C CNN "Feld4"
	1    6900 1700
	-1   0    0    1   
$EndComp
$Comp
L R R4
U 1 1 58489F64
P 6900 2300
F 0 "R4" V 6980 2300 50  0000 C CNN
F 1 "3k4" V 6900 2300 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 6830 2300 50  0001 C CNN
F 3 "" H 6900 2300 50  0000 C CNN
F 4 "1% Metal" V 6800 2300 60  0000 C CNN "Feld4"
	1    6900 2300
	-1   0    0    1   
$EndComp
$Comp
L C C5
U 1 1 58489F6C
P 6550 2300
F 0 "C5" H 6575 2400 50  0000 L CNN
F 1 "100nF" H 6575 2200 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D3.0mm_W2.0mm_P2.50mm" H 6588 2150 50  0001 C CNN
F 3 "" H 6550 2300 50  0000 C CNN
	1    6550 2300
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR04
U 1 1 58489F7A
P 4950 2600
F 0 "#PWR04" H 4950 2350 50  0001 C CNN
F 1 "GND" H 4950 2450 50  0000 C CNN
F 2 "" H 4950 2600 50  0000 C CNN
F 3 "" H 4950 2600 50  0000 C CNN
	1    4950 2600
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR05
U 1 1 58489F80
P 5450 2600
F 0 "#PWR05" H 5450 2350 50  0001 C CNN
F 1 "GND" H 5450 2450 50  0000 C CNN
F 2 "" H 5450 2600 50  0000 C CNN
F 3 "" H 5450 2600 50  0000 C CNN
	1    5450 2600
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR06
U 1 1 58489F86
P 6050 2600
F 0 "#PWR06" H 6050 2350 50  0001 C CNN
F 1 "GND" H 6050 2450 50  0000 C CNN
F 2 "" H 6050 2600 50  0000 C CNN
F 3 "" H 6050 2600 50  0000 C CNN
	1    6050 2600
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR07
U 1 1 58489F8C
P 6550 2600
F 0 "#PWR07" H 6550 2350 50  0001 C CNN
F 1 "GND" H 6550 2450 50  0000 C CNN
F 2 "" H 6550 2600 50  0000 C CNN
F 3 "" H 6550 2600 50  0000 C CNN
	1    6550 2600
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR08
U 1 1 58489F92
P 6900 2600
F 0 "#PWR08" H 6900 2350 50  0001 C CNN
F 1 "GND" H 6900 2450 50  0000 C CNN
F 2 "" H 6900 2600 50  0000 C CNN
F 3 "" H 6900 2600 50  0000 C CNN
	1    6900 2600
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR09
U 1 1 58489F98
P 8950 2600
F 0 "#PWR09" H 8950 2350 50  0001 C CNN
F 1 "GND" H 8950 2450 50  0000 C CNN
F 2 "" H 8950 2600 50  0000 C CNN
F 3 "" H 8950 2600 50  0000 C CNN
	1    8950 2600
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR010
U 1 1 58489FA6
P 4650 1700
F 0 "#PWR010" H 4650 1450 50  0001 C CNN
F 1 "GND" H 4650 1550 50  0000 C CNN
F 2 "" H 4650 1700 50  0000 C CNN
F 3 "" H 4650 1700 50  0000 C CNN
	1    4650 1700
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR011
U 1 1 58489FB7
P 2750 5450
F 0 "#PWR011" H 2750 5200 50  0001 C CNN
F 1 "GND" H 2750 5300 50  0000 C CNN
F 2 "" H 2750 5450 50  0000 C CNN
F 3 "" H 2750 5450 50  0000 C CNN
	1    2750 5450
	1    0    0    -1  
$EndComp
$Comp
L BARREL_JACK CON1
U 1 1 58489FBD
P 1350 1950
F 0 "CON1" H 1350 2200 50  0000 C CNN
F 1 "BARREL_JACK" H 1350 1750 50  0000 C CNN
F 2 "Connectors:JACK_ALIM" H 1350 1950 50  0001 C CNN
F 3 "" H 1350 1950 50  0000 C CNN
	1    1350 1950
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR012
U 1 1 58489FC4
P 1900 2100
F 0 "#PWR012" H 1900 1850 50  0001 C CNN
F 1 "GND" H 1900 1950 50  0000 C CNN
F 2 "" H 1900 2100 50  0000 C CNN
F 3 "" H 1900 2100 50  0000 C CNN
	1    1900 2100
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR013
U 1 1 58489FE8
P 1500 5450
F 0 "#PWR013" H 1500 5200 50  0001 C CNN
F 1 "GND" H 1500 5300 50  0000 C CNN
F 2 "" H 1500 5450 50  0000 C CNN
F 3 "" H 1500 5450 50  0000 C CNN
	1    1500 5450
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR014
U 1 1 58489FF3
P 2100 4800
F 0 "#PWR014" H 2100 4650 50  0001 C CNN
F 1 "+5V" H 2100 4940 50  0000 C CNN
F 2 "" H 2100 4800 50  0000 C CNN
F 3 "" H 2100 4800 50  0000 C CNN
	1    2100 4800
	1    0    0    -1  
$EndComp
$Comp
L C C10
U 1 1 5848A8D5
P 7850 3850
F 0 "C10" H 7875 3950 50  0000 L CNN
F 1 "100nF" H 7875 3750 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 7888 3700 50  0001 C CNN
F 3 "" H 7850 3850 50  0000 C CNN
	1    7850 3850
	1    0    0    -1  
$EndComp
$Comp
L C C9
U 1 1 5848A8DC
P 7550 3850
F 0 "C9" H 7575 3950 50  0000 L CNN
F 1 "1µF" H 7575 3750 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 7588 3700 50  0001 C CNN
F 3 "" H 7550 3850 50  0000 C CNN
	1    7550 3850
	1    0    0    -1  
$EndComp
$Comp
L R R5
U 1 1 584C4EB9
P 3750 5050
F 0 "R5" V 3830 5050 50  0000 C CNN
F 1 "R" V 3750 5050 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 3680 5050 50  0001 C CNN
F 3 "" H 3750 5050 50  0000 C CNN
	1    3750 5050
	1    0    0    -1  
$EndComp
$Comp
L LED D3
U 1 1 584C4F52
P 3750 5450
F 0 "D3" H 3750 5550 50  0000 C CNN
F 1 "LED" H 3750 5350 50  0000 C CNN
F 2 "LEDs:LED_0805_HandSoldering" H 3750 5450 50  0001 C CNN
F 3 "" H 3750 5450 50  0000 C CNN
	1    3750 5450
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR015
U 1 1 584C5B3F
P 9250 1500
F 0 "#PWR015" H 9250 1250 50  0001 C CNN
F 1 "GND" H 9250 1350 50  0000 C CNN
F 2 "" H 9250 1500 50  0000 C CNN
F 3 "" H 9250 1500 50  0000 C CNN
	1    9250 1500
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR016
U 1 1 584C64CC
P 3750 5700
F 0 "#PWR016" H 3750 5450 50  0001 C CNN
F 1 "GND" H 3750 5550 50  0000 C CNN
F 2 "" H 3750 5700 50  0000 C CNN
F 3 "" H 3750 5700 50  0000 C CNN
	1    3750 5700
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR017
U 1 1 584CB10D
P 7700 4100
F 0 "#PWR017" H 7700 3850 50  0001 C CNN
F 1 "GND" H 7700 3950 50  0000 C CNN
F 2 "" H 7700 4100 50  0000 C CNN
F 3 "" H 7700 4100 50  0000 C CNN
	1    7700 4100
	1    0    0    -1  
$EndComp
$Comp
L ESP-12 U2
U 1 1 5A611EFC
P 8300 5000
F 0 "U2" H 8300 4900 50  0000 C CNN
F 1 "ESP-12" H 8300 5100 50  0000 C CNN
F 2 "ESP8266:ESP-12" H 8300 5000 50  0001 C CNN
F 3 "" H 8300 5000 50  0001 C CNN
	1    8300 5000
	1    0    0    -1  
$EndComp
$Comp
L Conn_01x06 J2
U 1 1 5A6122AC
P 4750 5000
F 0 "J2" H 4750 5300 50  0000 C CNN
F 1 "Display" H 4750 4600 50  0000 C CNN
F 2 "Socket_Strips:Socket_Strip_Straight_1x06_Pitch2.54mm" H 4750 5000 50  0001 C CNN
F 3 "" H 4750 5000 50  0001 C CNN
	1    4750 5000
	-1   0    0    -1  
$EndComp
$Comp
L GND #PWR018
U 1 1 5A6127AE
P 10700 5000
F 0 "#PWR018" H 10700 4750 50  0001 C CNN
F 1 "GND" H 10700 4850 50  0000 C CNN
F 2 "" H 10700 5000 50  0000 C CNN
F 3 "" H 10700 5000 50  0000 C CNN
	1    10700 5000
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR019
U 1 1 5A612B82
P 8300 6000
F 0 "#PWR019" H 8300 5750 50  0001 C CNN
F 1 "GND" H 8300 5850 50  0000 C CNN
F 2 "" H 8300 6000 50  0000 C CNN
F 3 "" H 8300 6000 50  0000 C CNN
	1    8300 6000
	1    0    0    -1  
$EndComp
NoConn ~ 7400 4800
$Comp
L GND #PWR020
U 1 1 5A884BAC
P 9300 5350
F 0 "#PWR020" H 9300 5100 50  0001 C CNN
F 1 "GND" H 9300 5200 50  0000 C CNN
F 2 "" H 9300 5350 50  0000 C CNN
F 3 "" H 9300 5350 50  0000 C CNN
	1    9300 5350
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR021
U 1 1 5A884C0D
P 8300 3950
F 0 "#PWR021" H 8300 3800 50  0001 C CNN
F 1 "+3V3" H 8300 4090 50  0000 C CNN
F 2 "" H 8300 3950 50  0001 C CNN
F 3 "" H 8300 3950 50  0001 C CNN
	1    8300 3950
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR022
U 1 1 5A8857A8
P 7300 4300
F 0 "#PWR022" H 7300 4150 50  0001 C CNN
F 1 "+3V3" H 7300 4440 50  0000 C CNN
F 2 "" H 7300 4300 50  0001 C CNN
F 3 "" H 7300 4300 50  0001 C CNN
	1    7300 4300
	1    0    0    -1  
$EndComp
Text Label 7150 5200 0    60   ~ 0
PWM
Text Label 7150 5300 0    60   ~ 0
CLK
Text Label 7150 5100 0    60   ~ 0
MOSI
$Comp
L +5V #PWR023
U 1 1 5A885BFF
P 5150 4650
F 0 "#PWR023" H 5150 4500 50  0001 C CNN
F 1 "+5V" H 5150 4790 50  0000 C CNN
F 2 "" H 5150 4650 50  0000 C CNN
F 3 "" H 5150 4650 50  0000 C CNN
	1    5150 4650
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR024
U 1 1 5A886026
P 9750 6050
F 0 "#PWR024" H 9750 5800 50  0001 C CNN
F 1 "GND" H 9750 5900 50  0000 C CNN
F 2 "" H 9750 6050 50  0000 C CNN
F 3 "" H 9750 6050 50  0000 C CNN
	1    9750 6050
	1    0    0    -1  
$EndComp
$Comp
L R R9
U 1 1 5A88621E
P 9750 5400
F 0 "R9" V 9830 5400 50  0000 C CNN
F 1 "470R" V 9750 5400 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 9680 5400 50  0001 C CNN
F 3 "" H 9750 5400 50  0000 C CNN
	1    9750 5400
	1    0    0    -1  
$EndComp
$Comp
L R R6
U 1 1 5A886624
P 6800 5500
F 0 "R6" V 6880 5500 50  0000 C CNN
F 1 "470R" V 6800 5500 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 6730 5500 50  0001 C CNN
F 3 "" H 6800 5500 50  0000 C CNN
	1    6800 5500
	1    0    0    -1  
$EndComp
$Comp
L R R7
U 1 1 5A886B2B
P 7300 4500
F 0 "R7" V 7380 4500 50  0000 C CNN
F 1 "10k" V 7300 4500 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 7230 4500 50  0001 C CNN
F 3 "" H 7300 4500 50  0000 C CNN
	1    7300 4500
	1    0    0    -1  
$EndComp
$Comp
L R R8
U 1 1 5A886F28
P 9500 5400
F 0 "R8" V 9580 5400 50  0000 C CNN
F 1 "470R" V 9500 5400 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 9430 5400 50  0001 C CNN
F 3 "" H 9500 5400 50  0000 C CNN
	1    9500 5400
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR025
U 1 1 5A8876E2
P 5050 5400
F 0 "#PWR025" H 5050 5150 50  0001 C CNN
F 1 "GND" H 5050 5250 50  0000 C CNN
F 2 "" H 5050 5400 50  0000 C CNN
F 3 "" H 5050 5400 50  0000 C CNN
	1    5050 5400
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR026
U 1 1 5A887A32
P 6800 6150
F 0 "#PWR026" H 6800 5900 50  0001 C CNN
F 1 "GND" H 6800 6000 50  0000 C CNN
F 2 "" H 6800 6150 50  0000 C CNN
F 3 "" H 6800 6150 50  0000 C CNN
	1    6800 6150
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR027
U 1 1 5A887B7B
P 9500 6050
F 0 "#PWR027" H 9500 5800 50  0001 C CNN
F 1 "GND" H 9500 5900 50  0000 C CNN
F 2 "" H 9500 6050 50  0000 C CNN
F 3 "" H 9500 6050 50  0000 C CNN
	1    9500 6050
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR028
U 1 1 5A88834B
P 7700 3600
F 0 "#PWR028" H 7700 3450 50  0001 C CNN
F 1 "+3V3" H 7700 3740 50  0000 C CNN
F 2 "" H 7700 3600 50  0001 C CNN
F 3 "" H 7700 3600 50  0001 C CNN
	1    7700 3600
	1    0    0    -1  
$EndComp
$Comp
L LM1117-5.0 U1
U 1 1 5A88893D
P 1500 5000
F 0 "U1" H 1350 5125 50  0000 C CNN
F 1 "LM1117-5.0" H 1500 5125 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-223-3_TabPin2" H 1500 5000 50  0001 C CNN
F 3 "" H 1500 5000 50  0001 C CNN
	1    1500 5000
	1    0    0    -1  
$EndComp
$Comp
L LM1117-3.3 U3
U 1 1 5A888BFC
P 2750 5000
F 0 "U3" H 2600 5125 50  0000 C CNN
F 1 "LM1117-3.3" H 2750 5125 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-223-3_TabPin2" H 2750 5000 50  0001 C CNN
F 3 "" H 2750 5000 50  0001 C CNN
	1    2750 5000
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR029
U 1 1 5A88A81A
P 3400 4850
F 0 "#PWR029" H 3400 4700 50  0001 C CNN
F 1 "+3V3" H 3400 4990 50  0000 C CNN
F 2 "" H 3400 4850 50  0001 C CNN
F 3 "" H 3400 4850 50  0001 C CNN
	1    3400 4850
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR030
U 1 1 5A88AC0A
P 3750 4850
F 0 "#PWR030" H 3750 4700 50  0001 C CNN
F 1 "+3V3" H 3750 4990 50  0000 C CNN
F 2 "" H 3750 4850 50  0001 C CNN
F 3 "" H 3750 4850 50  0001 C CNN
	1    3750 4850
	1    0    0    -1  
$EndComp
$Comp
L SW_Push SW1
U 1 1 5A887253
P 6800 5900
F 0 "SW1" H 6850 6000 50  0000 L CNN
F 1 "Reset" H 6800 5840 50  0000 C CNN
F 2 "Buttons_Switches_THT:SW_Tactile_SPST_Angled_PTS645Vx39-2LFS" H 6800 6100 50  0001 C CNN
F 3 "" H 6800 6100 50  0001 C CNN
	1    6800 5900
	0    1    1    0   
$EndComp
$Comp
L SW_Push SW2
U 1 1 5A8875A1
P 9750 5800
F 0 "SW2" H 9800 5900 50  0000 L CNN
F 1 "Flash" H 9750 5740 50  0000 C CNN
F 2 "Buttons_Switches_THT:SW_Tactile_SPST_Angled_PTS645Vx39-2LFS" H 9750 6000 50  0001 C CNN
F 3 "" H 9750 6000 50  0001 C CNN
	1    9750 5800
	0    1    1    0   
$EndComp
Text Label 7150 5000 0    60   ~ 0
CS
$Comp
L Conn_01x03 J1
U 1 1 5A61220C
P 11000 4800
F 0 "J1" H 11000 5000 50  0000 C CNN
F 1 "Serial" H 11000 4600 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Angled_1x03_Pitch2.54mm" H 11000 4800 50  0001 C CNN
F 3 "" H 11000 4800 50  0001 C CNN
	1    11000 4800
	1    0    0    -1  
$EndComp
$Comp
L CP C6
U 1 1 5A88AE7D
P 1000 5200
F 0 "C6" H 1025 5300 50  0000 L CNN
F 1 "10µF" H 1025 5100 50  0000 L CNN
F 2 "Capacitors_Tantalum_SMD:CP_Tantalum_Case-A_EIA-3216-18_Hand" H 1038 5050 50  0001 C CNN
F 3 "" H 1000 5200 50  0001 C CNN
	1    1000 5200
	1    0    0    -1  
$EndComp
$Comp
L CP C7
U 1 1 5A88B064
P 1900 5200
F 0 "C7" H 1925 5300 50  0000 L CNN
F 1 "100µF" H 1925 5100 50  0000 L CNN
F 2 "Capacitors_Tantalum_SMD:CP_Tantalum_Case-B_EIA-3528-21_Hand" H 1938 5050 50  0001 C CNN
F 3 "" H 1900 5200 50  0001 C CNN
	1    1900 5200
	1    0    0    -1  
$EndComp
$Comp
L CP C8
U 1 1 5A88B10A
P 2250 5200
F 0 "C8" H 2275 5300 50  0000 L CNN
F 1 "10µF" H 2275 5100 50  0000 L CNN
F 2 "Capacitors_Tantalum_SMD:CP_Tantalum_Case-A_EIA-3216-18_Hand" H 2288 5050 50  0001 C CNN
F 3 "" H 2250 5200 50  0001 C CNN
	1    2250 5200
	1    0    0    -1  
$EndComp
$Comp
L CP C11
U 1 1 5A88B19B
P 3200 5200
F 0 "C11" H 3225 5300 50  0000 L CNN
F 1 "100µF" H 3225 5100 50  0000 L CNN
F 2 "Capacitors_Tantalum_SMD:CP_Tantalum_Case-B_EIA-3528-21_Hand" H 3238 5050 50  0001 C CNN
F 3 "" H 3200 5200 50  0001 C CNN
	1    3200 5200
	1    0    0    -1  
$EndComp
$Comp
L R R12
U 1 1 5A88CA12
P 7750 1550
F 0 "R12" V 7830 1550 50  0000 C CNN
F 1 "470k" V 7750 1550 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 7680 1550 50  0001 C CNN
F 3 "" H 7750 1550 50  0000 C CNN
	1    7750 1550
	-1   0    0    1   
$EndComp
$Comp
L R R13
U 1 1 5A88CAC3
P 7750 1950
F 0 "R13" V 7830 1950 50  0000 C CNN
F 1 "1k" V 7750 1950 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 7680 1950 50  0001 C CNN
F 3 "" H 7750 1950 50  0000 C CNN
	1    7750 1950
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR031
U 1 1 5A88D194
P 7750 2600
F 0 "#PWR031" H 7750 2350 50  0001 C CNN
F 1 "GND" H 7750 2450 50  0000 C CNN
F 2 "" H 7750 2600 50  0000 C CNN
F 3 "" H 7750 2600 50  0000 C CNN
	1    7750 2600
	1    0    0    -1  
$EndComp
$Comp
L R R14
U 1 1 5A88D41D
P 8250 2350
F 0 "R14" V 8330 2350 50  0000 C CNN
F 1 "4k7" V 8250 2350 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 8180 2350 50  0001 C CNN
F 3 "" H 8250 2350 50  0000 C CNN
	1    8250 2350
	0    -1   -1   0   
$EndComp
$Comp
L +12V #PWR032
U 1 1 5A88E594
P 2000 1700
F 0 "#PWR032" H 2000 1550 50  0001 C CNN
F 1 "+12V" H 2000 1840 50  0000 C CNN
F 2 "" H 2000 1700 50  0001 C CNN
F 3 "" H 2000 1700 50  0001 C CNN
	1    2000 1700
	1    0    0    -1  
$EndComp
$Comp
L +12V #PWR033
U 1 1 5A88E987
P 1000 4850
F 0 "#PWR033" H 1000 4700 50  0001 C CNN
F 1 "+12V" H 1000 4990 50  0000 C CNN
F 2 "" H 1000 4850 50  0001 C CNN
F 3 "" H 1000 4850 50  0001 C CNN
	1    1000 4850
	1    0    0    -1  
$EndComp
$Comp
L BC337 Q4
U 1 1 5A8917A7
P 7850 2350
F 0 "Q4" H 8050 2425 50  0000 L CNN
F 1 "BC337" H 8050 2350 50  0000 L CNN
F 2 "TO_SOT_Packages_THT:TO-92_Inline_Wide" H 8050 2275 50  0001 L CIN
F 3 "" H 7850 2350 50  0001 L CNN
	1    7850 2350
	-1   0    0    -1  
$EndComp
$Comp
L BC327 Q3
U 1 1 5A89195C
P 7450 1750
F 0 "Q3" H 7650 1825 50  0000 L CNN
F 1 "BC327" H 7650 1750 50  0000 L CNN
F 2 "TO_SOT_Packages_THT:TO-92_Inline_Wide" H 7650 1675 50  0001 L CIN
F 3 "" H 7450 1750 50  0001 L CNN
	1    7450 1750
	-1   0    0    1   
$EndComp
Wire Wire Line
	2900 2600 2900 2400
Wire Wire Line
	2900 2050 2900 2100
Wire Wire Line
	4400 2150 4450 2150
Wire Wire Line
	4450 2150 4450 2600
Wire Wire Line
	4400 2050 4650 2050
Wire Wire Line
	4650 2050 4650 2150
Wire Wire Line
	4650 2600 4650 2450
Wire Wire Line
	2850 1850 3200 1850
Wire Wire Line
	3150 1950 3200 1950
Wire Wire Line
	3150 1300 3150 1950
Connection ~ 3150 1850
Wire Wire Line
	4450 1850 4400 1850
Wire Wire Line
	4400 1950 5000 1950
Wire Wire Line
	4950 2150 4950 1950
Connection ~ 4950 1950
Wire Wire Line
	5150 2150 4950 2150
Wire Wire Line
	5300 1950 5750 1950
Connection ~ 4950 2150
Connection ~ 5450 1950
Connection ~ 4650 1300
Wire Wire Line
	5550 1300 6450 1300
Connection ~ 6050 1300
Wire Wire Line
	6750 1300 9300 1300
Wire Wire Line
	8950 1300 8950 1750
Connection ~ 8950 1300
Wire Wire Line
	6900 1850 6900 2150
Wire Wire Line
	6350 2050 7350 2050
Wire Wire Line
	6550 2050 6550 2150
Connection ~ 6900 2050
Wire Wire Line
	3200 2150 3200 2900
Wire Wire Line
	3200 2900 6350 2900
Wire Wire Line
	6350 2900 6350 2050
Connection ~ 6550 2050
Wire Wire Line
	4950 2600 4950 2450
Wire Wire Line
	5450 2600 5450 2350
Wire Wire Line
	6050 2600 6050 2150
Wire Wire Line
	6550 2600 6550 2450
Wire Wire Line
	6900 2600 6900 2450
Wire Wire Line
	8950 2600 8950 2050
Wire Wire Line
	6900 1550 6900 1300
Connection ~ 6900 1300
Wire Wire Line
	4650 1700 4650 1600
Connection ~ 2900 2050
Wire Wire Line
	1650 1950 1900 1950
Wire Wire Line
	1900 1950 1900 2100
Wire Wire Line
	1650 2050 1900 2050
Connection ~ 1900 2050
Wire Wire Line
	2350 2050 3200 2050
Wire Wire Line
	1650 1850 2550 1850
Wire Wire Line
	3750 4850 3750 4900
Wire Wire Line
	3750 5200 3750 5300
Wire Wire Line
	3750 5600 3750 5700
Wire Wire Line
	7550 4000 7550 4050
Wire Wire Line
	7850 4050 7850 4000
Wire Wire Line
	7550 3700 7550 3650
Wire Wire Line
	7850 3650 7850 3700
Wire Wire Line
	9200 4800 10800 4800
Wire Wire Line
	9200 4700 10800 4700
Wire Wire Line
	8300 6000 8300 5900
Wire Wire Line
	9200 5300 9300 5300
Wire Wire Line
	9300 5300 9300 5350
Wire Wire Line
	9200 5000 10050 5000
Wire Wire Line
	9200 5100 9750 5100
Wire Wire Line
	9750 6000 9750 6050
Wire Wire Line
	9750 5100 9750 5250
Wire Wire Line
	9750 5550 9750 5600
Wire Wire Line
	7400 4900 7300 4900
Wire Wire Line
	7300 4900 7300 4650
Wire Wire Line
	7300 4300 7300 4350
Wire Wire Line
	9200 5200 9500 5200
Wire Wire Line
	9500 5200 9500 5250
Wire Wire Line
	6800 4700 7400 4700
Wire Wire Line
	6800 6100 6800 6150
Wire Wire Line
	9500 5550 9500 6050
Wire Wire Line
	8300 3950 8300 4100
Wire Wire Line
	7550 3650 7850 3650
Wire Wire Line
	7700 3600 7700 3650
Connection ~ 7700 3650
Connection ~ 2500 1850
Wire Wire Line
	1200 5000 1000 5000
Wire Wire Line
	1000 4850 1000 5050
Connection ~ 1000 5000
Wire Wire Line
	1800 5000 2450 5000
Wire Wire Line
	1900 5000 1900 5050
Wire Wire Line
	1500 5300 1500 5450
Wire Wire Line
	1000 5350 1000 5400
Wire Wire Line
	1000 5400 1900 5400
Connection ~ 1500 5400
Wire Wire Line
	1900 5400 1900 5350
Wire Wire Line
	2250 5000 2250 5050
Wire Wire Line
	3050 5000 3400 5000
Wire Wire Line
	3200 5000 3200 5050
Connection ~ 2250 5000
Connection ~ 1900 5000
Wire Wire Line
	2750 5300 2750 5450
Wire Wire Line
	2250 5350 2250 5400
Wire Wire Line
	2250 5400 3200 5400
Connection ~ 2750 5400
Wire Wire Line
	3200 5400 3200 5350
Wire Wire Line
	2100 4800 2100 5000
Connection ~ 2100 5000
Wire Wire Line
	3400 5000 3400 4850
Connection ~ 3200 5000
Wire Wire Line
	4950 4800 5050 4800
Wire Wire Line
	5050 4800 5050 5400
Wire Wire Line
	4950 4900 5150 4900
Wire Wire Line
	5150 4900 5150 4650
Wire Wire Line
	6450 5000 7400 5000
Wire Wire Line
	6450 5300 7400 5300
Wire Wire Line
	6450 5100 7400 5100
Wire Wire Line
	10700 4900 10800 4900
Wire Wire Line
	10700 4900 10700 5000
Wire Wire Line
	7350 2050 7350 1950
Wire Wire Line
	2200 950  7750 950 
Wire Wire Line
	7750 950  7750 1400
Wire Wire Line
	7650 1750 7750 1750
Wire Wire Line
	7750 1700 7750 1800
Connection ~ 7750 1750
Wire Wire Line
	7750 2150 7750 2100
Wire Wire Line
	7750 2600 7750 2550
Wire Wire Line
	8050 2350 8100 2350
Wire Wire Line
	8400 2350 8500 2350
Wire Wire Line
	7350 950  7350 1550
Connection ~ 7350 950 
Wire Wire Line
	2000 1700 2000 1850
Connection ~ 2000 1850
Wire Notes Line
	500  3150 11150 3150
Wire Notes Line
	11150 3150 11150 3200
Wire Notes Line
	4350 3150 4350 7800
Text Notes 1000 700  0    60   ~ 0
HV Supply
Text Notes 950  3400 0    60   ~ 0
5V / 3.3V Supply
Text Notes 4600 3400 0    60   ~ 0
WiFi Controller
Wire Wire Line
	10050 5000 10050 5250
Wire Wire Line
	10050 5600 10050 5550
$Comp
L R R10
U 1 1 5A884EDF
P 10050 5400
F 0 "R10" V 10130 5400 50  0000 C CNN
F 1 "R" V 10050 5400 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 9980 5400 50  0001 C CNN
F 3 "" H 10050 5400 50  0000 C CNN
	1    10050 5400
	1    0    0    -1  
$EndComp
Wire Wire Line
	10050 5900 10050 6050
$Comp
L GND #PWR034
U 1 1 5A887C9F
P 10050 6050
F 0 "#PWR034" H 10050 5800 50  0001 C CNN
F 1 "GND" H 10050 5900 50  0000 C CNN
F 2 "" H 10050 6050 50  0000 C CNN
F 3 "" H 10050 6050 50  0000 C CNN
	1    10050 6050
	1    0    0    -1  
$EndComp
$Comp
L LED D4
U 1 1 5A8851F7
P 10050 5750
F 0 "D4" H 10050 5850 50  0000 C CNN
F 1 "Status" H 10050 5650 50  0000 C CNN
F 2 "LEDs:LED_0805_HandSoldering" H 10050 5750 50  0001 C CNN
F 3 "" H 10050 5750 50  0000 C CNN
	1    10050 5750
	0    -1   -1   0   
$EndComp
Text GLabel 10200 4900 2    60   Input ~ 0
HV_Off
Wire Wire Line
	9200 4900 10200 4900
$Comp
L 74HCT245DW IC2
U 1 1 5A8994DC
P 5950 5500
F 0 "IC2" H 5650 6125 50  0000 L BNN
F 1 "74HCT245DW" H 5650 4800 50  0000 L BNN
F 2 "Housings_SSOP:SSOP-20_5.3x7.2mm_Pitch0.65mm" H 5950 5650 50  0001 C CNN
F 3 "" H 5950 5500 60  0001 C CNN
	1    5950 5500
	1    0    0    -1  
$EndComp
Wire Wire Line
	6450 5200 7400 5200
$Comp
L GND #PWR035
U 1 1 5A89A6FB
P 5350 6150
F 0 "#PWR035" H 5350 5900 50  0001 C CNN
F 1 "GND" H 5350 6000 50  0000 C CNN
F 2 "" H 5350 6150 50  0000 C CNN
F 3 "" H 5350 6150 50  0000 C CNN
	1    5350 6150
	1    0    0    -1  
$EndComp
Wire Wire Line
	5450 5900 5350 5900
Wire Wire Line
	5350 5900 5350 6150
Wire Wire Line
	5450 6000 5350 6000
Connection ~ 5350 6000
$Comp
L GND #PWR036
U 1 1 5A89A963
P 6550 6150
F 0 "#PWR036" H 6550 5900 50  0001 C CNN
F 1 "GND" H 6550 6000 50  0000 C CNN
F 2 "" H 6550 6150 50  0000 C CNN
F 3 "" H 6550 6150 50  0000 C CNN
	1    6550 6150
	1    0    0    -1  
$EndComp
Wire Wire Line
	6450 5400 6550 5400
Wire Wire Line
	6550 5400 6550 6150
Wire Wire Line
	6450 5700 6550 5700
Connection ~ 6550 5700
Wire Wire Line
	6450 5600 6550 5600
Connection ~ 6550 5600
Wire Wire Line
	6450 5500 6550 5500
Connection ~ 6550 5500
NoConn ~ 5450 5700
NoConn ~ 5450 5600
NoConn ~ 5450 5500
NoConn ~ 5450 5400
Wire Wire Line
	6800 4700 6800 5350
Wire Wire Line
	6800 5650 6800 5700
Wire Wire Line
	4950 5100 5450 5100
Wire Wire Line
	5200 5000 5200 5300
Wire Wire Line
	5200 5300 4950 5300
Wire Wire Line
	5450 5300 5300 5300
Wire Wire Line
	5300 5300 5300 5200
Wire Wire Line
	5300 5200 4950 5200
Wire Wire Line
	5450 5000 5200 5000
Wire Wire Line
	5450 5200 5350 5200
Wire Wire Line
	5350 5200 5350 5050
Wire Wire Line
	5350 5050 5100 5050
Wire Wire Line
	5100 5050 5100 5000
Wire Wire Line
	5100 5000 4950 5000
$Comp
L 74HCT245DW IC2
U 2 1 5A89BC77
P 6000 3950
F 0 "IC2" H 5700 4575 50  0000 L BNN
F 1 "74HCT245DW" H 5700 3250 50  0000 L BNN
F 2 "Housings_SSOP:SSOP-20_5.3x7.2mm_Pitch0.65mm" H 6000 4100 50  0001 C CNN
F 3 "" H 6000 3950 60  0001 C CNN
	2    6000 3950
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR037
U 1 1 5A89BE1E
P 6000 4300
F 0 "#PWR037" H 6000 4050 50  0001 C CNN
F 1 "GND" H 6000 4150 50  0000 C CNN
F 2 "" H 6000 4300 50  0000 C CNN
F 3 "" H 6000 4300 50  0000 C CNN
	1    6000 4300
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR038
U 1 1 5A89BEB0
P 6000 3600
F 0 "#PWR038" H 6000 3450 50  0001 C CNN
F 1 "+5V" H 6000 3740 50  0000 C CNN
F 2 "" H 6000 3600 50  0000 C CNN
F 3 "" H 6000 3600 50  0000 C CNN
	1    6000 3600
	1    0    0    -1  
$EndComp
$Comp
L C C12
U 1 1 5A89BF42
P 5700 3950
F 0 "C12" H 5725 4050 50  0000 L CNN
F 1 "100nF" H 5725 3850 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 5738 3800 50  0001 C CNN
F 3 "" H 5700 3950 50  0000 C CNN
	1    5700 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	6000 3600 6000 3650
Wire Wire Line
	6000 4250 6000 4300
Wire Wire Line
	5700 3800 5700 3650
Wire Wire Line
	5700 3650 6000 3650
Wire Wire Line
	5700 4100 5700 4250
Wire Wire Line
	5700 4250 6000 4250
Text Label 8100 1300 0    60   ~ 0
175V
$Comp
L Conn_01x02 J3
U 1 1 5A8B4063
P 9500 1300
F 0 "J3" H 9500 1400 50  0000 C CNN
F 1 "HV" H 9500 1100 50  0000 C CNN
F 2 "Socket_Strips:Socket_Strip_Straight_1x02_Pitch2.54mm" H 9500 1300 50  0001 C CNN
F 3 "" H 9500 1300 50  0001 C CNN
	1    9500 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	6050 1750 6050 1300
Wire Wire Line
	9300 1400 9250 1400
Wire Wire Line
	9250 1400 9250 1500
$Comp
L R R16
U 1 1 5A8B4FAB
P 2700 1650
F 0 "R16" V 2780 1650 50  0000 C CNN
F 1 "1R" V 2700 1650 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 2630 1650 50  0001 C CNN
F 3 "" H 2700 1650 50  0000 C CNN
	1    2700 1650
	0    1    1    0   
$EndComp
$Comp
L R R15
U 1 1 5A8B504C
P 2700 1450
F 0 "R15" V 2780 1450 50  0000 C CNN
F 1 "1R" V 2700 1450 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 2630 1450 50  0001 C CNN
F 3 "" H 2700 1450 50  0000 C CNN
	1    2700 1450
	0    1    1    0   
$EndComp
Wire Wire Line
	2500 1650 2550 1650
Connection ~ 2500 1650
Wire Wire Line
	2550 1450 2500 1450
Wire Wire Line
	2950 1250 2950 1850
Connection ~ 2950 1850
Wire Wire Line
	2850 1450 2950 1450
Connection ~ 2950 1650
Wire Wire Line
	2200 950  2200 1850
Connection ~ 2200 1850
Wire Wire Line
	2500 1250 2500 1850
Text Notes 2350 1150 0    60   ~ 0
0R25 (1,2A Ipk)
Wire Wire Line
	2350 2050 2350 1850
Connection ~ 2350 1850
Wire Wire Line
	4450 1850 4450 1550
Wire Wire Line
	4450 1550 3150 1550
Wire Wire Line
	2850 1650 2950 1650
Wire Wire Line
	3150 1300 5050 1300
Connection ~ 3150 1550
$Comp
L R R11
U 1 1 5A8B6DF2
P 2700 1250
F 0 "R11" V 2780 1250 50  0000 C CNN
F 1 "1R" V 2700 1250 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 2630 1250 50  0001 C CNN
F 3 "" H 2700 1250 50  0000 C CNN
	1    2700 1250
	0    1    1    0   
$EndComp
Wire Wire Line
	2550 1250 2500 1250
Connection ~ 2500 1450
Wire Wire Line
	2850 1250 2950 1250
Connection ~ 2950 1450
Text GLabel 8500 2350 2    60   Input ~ 0
HV_Off
Wire Wire Line
	7550 4050 7850 4050
Wire Wire Line
	7700 4100 7700 4050
Connection ~ 7700 4050
$EndSCHEMATC
