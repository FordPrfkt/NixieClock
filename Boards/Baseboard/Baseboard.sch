EESchema Schematic File Version 4
LIBS:Baseboard-cache
EELAYER 26 0
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
L Baseboard-rescue:MC34063AP IC?
U 1 1 58489ED9
P 2900 1950
AR Path="/583D2D00/58489ED9" Ref="IC?"  Part="1" 
AR Path="/58489ED9" Ref="IC1"  Part="1" 
F 0 "IC1" H 2500 2050 50  0000 L BNN
F 1 "MC34063AP" H 2500 1450 50  0000 L BNN
F 2 "Housings_DIP:DIP-8_W7.62mm" H 2900 2100 50  0001 C CNN
F 3 "" H 2900 1950 60  0001 C CNN
	1    2900 1950
	1    0    0    -1  
$EndComp
$Comp
L Baseboard-rescue:C C3
U 1 1 58489EE0
P 1750 2450
F 0 "C3" H 1775 2550 50  0000 L CNN
F 1 "100nF" H 1775 2350 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D3.0mm_W2.0mm_P2.50mm" H 1788 2300 50  0001 C CNN
F 3 "" H 1750 2450 50  0000 C CNN
	1    1750 2450
	1    0    0    -1  
$EndComp
$Comp
L Baseboard-rescue:D D2
U 1 1 58489EEE
P 5050 2050
F 0 "D2" H 5050 2150 50  0000 C CNN
F 1 "1N914" H 5050 1950 50  0000 C CNN
F 2 "Diodes_THT:D_DO-35_SOD27_P10.16mm_Horizontal" H 5050 2050 50  0001 C CNN
F 3 "" H 5050 2050 50  0000 C CNN
	1    5050 2050
	-1   0    0    1   
$EndComp
$Comp
L Baseboard-rescue:INDUCTOR_SMALL L1
U 1 1 58489EF5
P 4850 1000
F 0 "L1" H 4850 1100 50  0000 C CNN
F 1 "270µH / 1.2A" H 4850 950 50  0000 C CNN
F 2 "Inductors_THT:L_Radial_D12.5mm_P7.00mm_Fastron_09HCP" H 4850 1000 50  0001 C CNN
F 3 "" H 4850 1000 50  0000 C CNN
	1    4850 1000
	1    0    0    -1  
$EndComp
$Comp
L Baseboard-rescue:Q_NMOS_GDS Q1
U 1 1 58489EFC
P 5650 2050
F 0 "Q1" H 5950 2100 50  0000 R CNN
F 1 "IRF740" H 6100 2000 50  0000 R CNN
F 2 "TO_SOT_Packages_THT:TO-220-3_Horizontal" H 5850 2150 50  0001 C CNN
F 3 "" H 5650 2050 50  0000 C CNN
	1    5650 2050
	1    0    0    -1  
$EndComp
$Comp
L Baseboard-rescue:R R2
U 1 1 58489F0A
P 1600 1950
F 0 "R2" V 1680 1950 50  0000 C CNN
F 1 "1R" V 1600 1950 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 1530 1950 50  0001 C CNN
F 3 "" H 1600 1950 50  0000 C CNN
	1    1600 1950
	0    1    1    0   
$EndComp
$Comp
L Baseboard-rescue:GND #PWR01
U 1 1 58489F11
P 1750 2700
F 0 "#PWR01" H 1750 2450 50  0001 C CNN
F 1 "GND" H 1750 2550 50  0000 C CNN
F 2 "" H 1750 2700 50  0000 C CNN
F 3 "" H 1750 2700 50  0000 C CNN
	1    1750 2700
	1    0    0    -1  
$EndComp
$Comp
L Baseboard-rescue:GND #PWR02
U 1 1 58489F19
P 3550 2700
F 0 "#PWR02" H 3550 2450 50  0001 C CNN
F 1 "GND" H 3550 2550 50  0000 C CNN
F 2 "" H 3550 2700 50  0000 C CNN
F 3 "" H 3550 2700 50  0000 C CNN
	1    3550 2700
	1    0    0    -1  
$EndComp
$Comp
L Baseboard-rescue:GND #PWR03
U 1 1 58489F21
P 4450 2700
F 0 "#PWR03" H 4450 2450 50  0001 C CNN
F 1 "GND" H 4450 2550 50  0000 C CNN
F 2 "" H 4450 2700 50  0000 C CNN
F 3 "" H 4450 2700 50  0000 C CNN
	1    4450 2700
	1    0    0    -1  
$EndComp
$Comp
L Baseboard-rescue:CP C1
U 1 1 58489F32
P 3800 1450
F 0 "C1" H 3825 1550 50  0000 L CNN
F 1 "220µF/25V" H 3825 1350 50  0000 L CNN
F 2 "Capacitors_THT:CP_Radial_D8.0mm_P3.50mm" H 3838 1300 50  0001 C CNN
F 3 "" H 3800 1450 50  0000 C CNN
F 4 "Low ESR" H 3500 1450 60  0000 C CNN "Feld4"
	1    3800 1450
	1    0    0    -1  
$EndComp
$Comp
L Baseboard-rescue:R R3
U 1 1 58489F39
P 4850 2500
F 0 "R3" V 4930 2500 50  0000 C CNN
F 1 "1k" V 4850 2500 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 4780 2500 50  0001 C CNN
F 3 "" H 4850 2500 50  0000 C CNN
	1    4850 2500
	-1   0    0    1   
$EndComp
$Comp
L Baseboard-rescue:D D1
U 1 1 58489F4A
P 5950 1000
F 0 "D1" H 5950 1100 50  0000 C CNN
F 1 "MUR120" H 5950 900 50  0000 C CNN
F 2 "Diodes_THT:D_DO-15_P10.16mm_Horizontal" H 5950 1000 50  0001 C CNN
F 3 "" H 5950 1000 50  0000 C CNN
	1    5950 1000
	-1   0    0    1   
$EndComp
$Comp
L Baseboard-rescue:CP C2
U 1 1 58489F52
P 6200 1400
F 0 "C2" H 6225 1500 50  0000 L CNN
F 1 "2µ2 / 250V" H 6225 1300 50  0000 L CNN
F 2 "Capacitors_THT:CP_Radial_D8.0mm_P3.50mm" H 6238 1250 50  0001 C CNN
F 3 "" H 6200 1400 50  0000 C CNN
F 4 "Low ESR" H 6500 1400 60  0000 C CNN "Feld4"
	1    6200 1400
	1    0    0    -1  
$EndComp
$Comp
L Baseboard-rescue:R R1
U 1 1 58489F5D
P 6950 1350
F 0 "R1" V 7030 1350 50  0000 C CNN
F 1 "560k" V 6950 1350 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 6880 1350 50  0001 C CNN
F 3 "" H 6950 1350 50  0000 C CNN
F 4 "1% Metal" V 7100 1350 60  0000 C CNN "Feld4"
	1    6950 1350
	-1   0    0    1   
$EndComp
$Comp
L Baseboard-rescue:R R4
U 1 1 58489F64
P 6950 2500
F 0 "R4" V 7030 2500 50  0000 C CNN
F 1 "3k65" V 6950 2500 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 6880 2500 50  0001 C CNN
F 3 "" H 6950 2500 50  0000 C CNN
F 4 "1% Metal" V 6850 2500 60  0000 C CNN "Feld4"
	1    6950 2500
	-1   0    0    1   
$EndComp
$Comp
L Baseboard-rescue:C C5
U 1 1 58489F6C
P 2250 2450
F 0 "C5" H 2275 2550 50  0000 L CNN
F 1 "10nF" H 2275 2350 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D3.0mm_W2.0mm_P2.50mm" H 2288 2300 50  0001 C CNN
F 3 "" H 2250 2450 50  0000 C CNN
	1    2250 2450
	1    0    0    -1  
$EndComp
$Comp
L Baseboard-rescue:GND #PWR04
U 1 1 58489F7A
P 4850 2700
F 0 "#PWR04" H 4850 2450 50  0001 C CNN
F 1 "GND" H 4850 2550 50  0000 C CNN
F 2 "" H 4850 2700 50  0000 C CNN
F 3 "" H 4850 2700 50  0000 C CNN
	1    4850 2700
	1    0    0    -1  
$EndComp
$Comp
L Baseboard-rescue:GND #PWR05
U 1 1 58489F80
P 5350 2700
F 0 "#PWR05" H 5350 2450 50  0001 C CNN
F 1 "GND" H 5350 2550 50  0000 C CNN
F 2 "" H 5350 2700 50  0000 C CNN
F 3 "" H 5350 2700 50  0000 C CNN
	1    5350 2700
	1    0    0    -1  
$EndComp
$Comp
L Baseboard-rescue:GND #PWR06
U 1 1 58489F86
P 5750 2700
F 0 "#PWR06" H 5750 2450 50  0001 C CNN
F 1 "GND" H 5750 2550 50  0000 C CNN
F 2 "" H 5750 2700 50  0000 C CNN
F 3 "" H 5750 2700 50  0000 C CNN
	1    5750 2700
	1    0    0    -1  
$EndComp
$Comp
L Baseboard-rescue:GND #PWR07
U 1 1 58489F92
P 6950 2700
F 0 "#PWR07" H 6950 2450 50  0001 C CNN
F 1 "GND" H 6950 2550 50  0000 C CNN
F 2 "" H 6950 2700 50  0000 C CNN
F 3 "" H 6950 2700 50  0000 C CNN
	1    6950 2700
	1    0    0    -1  
$EndComp
$Comp
L Baseboard-rescue:GND #PWR08
U 1 1 58489FA6
P 3800 1650
F 0 "#PWR08" H 3800 1400 50  0001 C CNN
F 1 "GND" H 3800 1500 50  0000 C CNN
F 2 "" H 3800 1650 50  0000 C CNN
F 3 "" H 3800 1650 50  0000 C CNN
	1    3800 1650
	1    0    0    -1  
$EndComp
$Comp
L Baseboard-rescue:GND #PWR09
U 1 1 58489FB7
P 2700 4650
F 0 "#PWR09" H 2700 4400 50  0001 C CNN
F 1 "GND" H 2700 4500 50  0000 C CNN
F 2 "" H 2700 4650 50  0000 C CNN
F 3 "" H 2700 4650 50  0000 C CNN
	1    2700 4650
	1    0    0    -1  
$EndComp
$Comp
L Baseboard-rescue:BARREL_JACK CON1
U 1 1 58489FBD
P 850 2050
F 0 "CON1" H 850 2300 50  0000 C CNN
F 1 "Power" H 850 1850 50  0000 C CNN
F 2 "Connectors:JACK_ALIM" H 850 2050 50  0001 C CNN
F 3 "" H 850 2050 50  0000 C CNN
	1    850  2050
	1    0    0    -1  
$EndComp
$Comp
L Baseboard-rescue:GND #PWR010
U 1 1 58489FC4
P 1200 2700
F 0 "#PWR010" H 1200 2450 50  0001 C CNN
F 1 "GND" H 1200 2550 50  0000 C CNN
F 2 "" H 1200 2700 50  0000 C CNN
F 3 "" H 1200 2700 50  0000 C CNN
	1    1200 2700
	1    0    0    -1  
$EndComp
$Comp
L Baseboard-rescue:GND #PWR011
U 1 1 58489FE8
P 1450 4650
F 0 "#PWR011" H 1450 4400 50  0001 C CNN
F 1 "GND" H 1450 4500 50  0000 C CNN
F 2 "" H 1450 4650 50  0000 C CNN
F 3 "" H 1450 4650 50  0000 C CNN
	1    1450 4650
	1    0    0    -1  
$EndComp
$Comp
L Baseboard-rescue:+5V #PWR012
U 1 1 58489FF3
P 2050 4000
F 0 "#PWR012" H 2050 3850 50  0001 C CNN
F 1 "+5V" H 2050 4140 50  0000 C CNN
F 2 "" H 2050 4000 50  0000 C CNN
F 3 "" H 2050 4000 50  0000 C CNN
	1    2050 4000
	1    0    0    -1  
$EndComp
$Comp
L Baseboard-rescue:C C10
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
L Baseboard-rescue:C C9
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
L Baseboard-rescue:R R5
U 1 1 584C4EB9
P 3700 4250
F 0 "R5" V 3780 4250 50  0000 C CNN
F 1 "68R" V 3700 4250 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 3630 4250 50  0001 C CNN
F 3 "" H 3700 4250 50  0000 C CNN
	1    3700 4250
	1    0    0    -1  
$EndComp
$Comp
L Baseboard-rescue:LED D3
U 1 1 584C4F52
P 3700 4650
F 0 "D3" H 3700 4750 50  0000 C CNN
F 1 "LED" H 3700 4550 50  0000 C CNN
F 2 "LEDs:LED_0805_HandSoldering" H 3700 4650 50  0001 C CNN
F 3 "" H 3700 4650 50  0000 C CNN
	1    3700 4650
	0    -1   -1   0   
$EndComp
$Comp
L Baseboard-rescue:GND #PWR013
U 1 1 584C5B3F
P 10700 1300
F 0 "#PWR013" H 10700 1050 50  0001 C CNN
F 1 "GND" H 10700 1150 50  0000 C CNN
F 2 "" H 10700 1300 50  0000 C CNN
F 3 "" H 10700 1300 50  0000 C CNN
	1    10700 1300
	1    0    0    -1  
$EndComp
$Comp
L Baseboard-rescue:GND #PWR014
U 1 1 584C64CC
P 3700 4900
F 0 "#PWR014" H 3700 4650 50  0001 C CNN
F 1 "GND" H 3700 4750 50  0000 C CNN
F 2 "" H 3700 4900 50  0000 C CNN
F 3 "" H 3700 4900 50  0000 C CNN
	1    3700 4900
	1    0    0    -1  
$EndComp
$Comp
L Baseboard-rescue:GND #PWR015
U 1 1 584CB10D
P 7700 4100
F 0 "#PWR015" H 7700 3850 50  0001 C CNN
F 1 "GND" H 7700 3950 50  0000 C CNN
F 2 "" H 7700 4100 50  0000 C CNN
F 3 "" H 7700 4100 50  0000 C CNN
	1    7700 4100
	1    0    0    -1  
$EndComp
$Comp
L Baseboard-rescue:ESP-12 U2
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
L Baseboard-rescue:GND #PWR016
U 1 1 5A6127AE
P 10700 5000
F 0 "#PWR016" H 10700 4750 50  0001 C CNN
F 1 "GND" H 10700 4850 50  0000 C CNN
F 2 "" H 10700 5000 50  0000 C CNN
F 3 "" H 10700 5000 50  0000 C CNN
	1    10700 5000
	1    0    0    -1  
$EndComp
$Comp
L Baseboard-rescue:GND #PWR017
U 1 1 5A612B82
P 8300 6000
F 0 "#PWR017" H 8300 5750 50  0001 C CNN
F 1 "GND" H 8300 5850 50  0000 C CNN
F 2 "" H 8300 6000 50  0000 C CNN
F 3 "" H 8300 6000 50  0000 C CNN
	1    8300 6000
	1    0    0    -1  
$EndComp
NoConn ~ 7400 4800
$Comp
L Baseboard-rescue:GND #PWR018
U 1 1 5A884BAC
P 9300 5350
F 0 "#PWR018" H 9300 5100 50  0001 C CNN
F 1 "GND" H 9300 5200 50  0000 C CNN
F 2 "" H 9300 5350 50  0000 C CNN
F 3 "" H 9300 5350 50  0000 C CNN
	1    9300 5350
	1    0    0    -1  
$EndComp
$Comp
L Baseboard-rescue:+3V3 #PWR019
U 1 1 5A884C0D
P 8300 3950
F 0 "#PWR019" H 8300 3800 50  0001 C CNN
F 1 "+3V3" H 8300 4090 50  0000 C CNN
F 2 "" H 8300 3950 50  0001 C CNN
F 3 "" H 8300 3950 50  0001 C CNN
	1    8300 3950
	1    0    0    -1  
$EndComp
$Comp
L Baseboard-rescue:+3V3 #PWR020
U 1 1 5A8857A8
P 7300 4300
F 0 "#PWR020" H 7300 4150 50  0001 C CNN
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
L Baseboard-rescue:+5V #PWR021
U 1 1 5A885BFF
P 4950 4550
F 0 "#PWR021" H 4950 4400 50  0001 C CNN
F 1 "+5V" H 4950 4690 50  0000 C CNN
F 2 "" H 4950 4550 50  0000 C CNN
F 3 "" H 4950 4550 50  0000 C CNN
	1    4950 4550
	1    0    0    -1  
$EndComp
$Comp
L Baseboard-rescue:GND #PWR022
U 1 1 5A886026
P 9800 6050
F 0 "#PWR022" H 9800 5800 50  0001 C CNN
F 1 "GND" H 9800 5900 50  0000 C CNN
F 2 "" H 9800 6050 50  0000 C CNN
F 3 "" H 9800 6050 50  0000 C CNN
	1    9800 6050
	1    0    0    -1  
$EndComp
$Comp
L Baseboard-rescue:R R9
U 1 1 5A88621E
P 9800 5400
F 0 "R9" V 9880 5400 50  0000 C CNN
F 1 "470R" V 9800 5400 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 9730 5400 50  0001 C CNN
F 3 "" H 9800 5400 50  0000 C CNN
	1    9800 5400
	1    0    0    -1  
$EndComp
$Comp
L Baseboard-rescue:R R6
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
L Baseboard-rescue:R R7
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
L Baseboard-rescue:GND #PWR023
U 1 1 5A8876E2
P 4850 5550
F 0 "#PWR023" H 4850 5300 50  0001 C CNN
F 1 "GND" H 4850 5400 50  0000 C CNN
F 2 "" H 4850 5550 50  0000 C CNN
F 3 "" H 4850 5550 50  0000 C CNN
	1    4850 5550
	1    0    0    -1  
$EndComp
$Comp
L Baseboard-rescue:GND #PWR024
U 1 1 5A887A32
P 6800 6150
F 0 "#PWR024" H 6800 5900 50  0001 C CNN
F 1 "GND" H 6800 6000 50  0000 C CNN
F 2 "" H 6800 6150 50  0000 C CNN
F 3 "" H 6800 6150 50  0000 C CNN
	1    6800 6150
	1    0    0    -1  
$EndComp
$Comp
L Baseboard-rescue:GND #PWR025
U 1 1 5A887B7B
P 9500 6050
F 0 "#PWR025" H 9500 5800 50  0001 C CNN
F 1 "GND" H 9500 5900 50  0000 C CNN
F 2 "" H 9500 6050 50  0000 C CNN
F 3 "" H 9500 6050 50  0000 C CNN
	1    9500 6050
	1    0    0    -1  
$EndComp
$Comp
L Baseboard-rescue:+3V3 #PWR026
U 1 1 5A88834B
P 7700 3600
F 0 "#PWR026" H 7700 3450 50  0001 C CNN
F 1 "+3V3" H 7700 3740 50  0000 C CNN
F 2 "" H 7700 3600 50  0001 C CNN
F 3 "" H 7700 3600 50  0001 C CNN
	1    7700 3600
	1    0    0    -1  
$EndComp
$Comp
L Baseboard-rescue:LM1117-5.0 U1
U 1 1 5A88893D
P 1450 4200
F 0 "U1" H 1300 4325 50  0000 C CNN
F 1 "LM1117-5.0" H 1450 4325 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-223-3_TabPin2" H 1450 4200 50  0001 C CNN
F 3 "" H 1450 4200 50  0001 C CNN
	1    1450 4200
	1    0    0    -1  
$EndComp
$Comp
L Baseboard-rescue:LM1117-3.3 U3
U 1 1 5A888BFC
P 2700 4200
F 0 "U3" H 2550 4325 50  0000 C CNN
F 1 "LM1117-3.3" H 2700 4325 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-223-3_TabPin2" H 2700 4200 50  0001 C CNN
F 3 "" H 2700 4200 50  0001 C CNN
	1    2700 4200
	1    0    0    -1  
$EndComp
$Comp
L Baseboard-rescue:+3V3 #PWR027
U 1 1 5A88A81A
P 3350 4050
F 0 "#PWR027" H 3350 3900 50  0001 C CNN
F 1 "+3V3" H 3350 4190 50  0000 C CNN
F 2 "" H 3350 4050 50  0001 C CNN
F 3 "" H 3350 4050 50  0001 C CNN
	1    3350 4050
	1    0    0    -1  
$EndComp
$Comp
L Baseboard-rescue:+3V3 #PWR028
U 1 1 5A88AC0A
P 3700 4050
F 0 "#PWR028" H 3700 3900 50  0001 C CNN
F 1 "+3V3" H 3700 4190 50  0000 C CNN
F 2 "" H 3700 4050 50  0001 C CNN
F 3 "" H 3700 4050 50  0001 C CNN
	1    3700 4050
	1    0    0    -1  
$EndComp
$Comp
L Baseboard-rescue:SW_Push SW1
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
L Baseboard-rescue:SW_Push SW2
U 1 1 5A8875A1
P 9800 5800
F 0 "SW2" H 9850 5900 50  0000 L CNN
F 1 "Flash" H 9800 5740 50  0000 C CNN
F 2 "Buttons_Switches_THT:SW_Tactile_SPST_Angled_PTS645Vx39-2LFS" H 9800 6000 50  0001 C CNN
F 3 "" H 9800 6000 50  0001 C CNN
	1    9800 5800
	0    1    1    0   
$EndComp
Text Label 7150 5000 0    60   ~ 0
CS
$Comp
L Baseboard-rescue:Conn_01x03 J1
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
L Baseboard-rescue:CP C6
U 1 1 5A88AE7D
P 950 4400
F 0 "C6" H 975 4500 50  0000 L CNN
F 1 "10µF" H 975 4300 50  0000 L CNN
F 2 "Capacitors_Tantalum_SMD:CP_Tantalum_Case-A_EIA-3216-18_Hand" H 988 4250 50  0001 C CNN
F 3 "" H 950 4400 50  0001 C CNN
	1    950  4400
	1    0    0    -1  
$EndComp
$Comp
L Baseboard-rescue:CP C7
U 1 1 5A88B064
P 1850 4400
F 0 "C7" H 1875 4500 50  0000 L CNN
F 1 "100µF" H 1875 4300 50  0000 L CNN
F 2 "Capacitors_Tantalum_SMD:CP_Tantalum_Case-B_EIA-3528-21_Hand" H 1888 4250 50  0001 C CNN
F 3 "" H 1850 4400 50  0001 C CNN
	1    1850 4400
	1    0    0    -1  
$EndComp
$Comp
L Baseboard-rescue:CP C8
U 1 1 5A88B10A
P 2200 4400
F 0 "C8" H 2225 4500 50  0000 L CNN
F 1 "10µF" H 2225 4300 50  0000 L CNN
F 2 "Capacitors_Tantalum_SMD:CP_Tantalum_Case-A_EIA-3216-18_Hand" H 2238 4250 50  0001 C CNN
F 3 "" H 2200 4400 50  0001 C CNN
	1    2200 4400
	1    0    0    -1  
$EndComp
$Comp
L Baseboard-rescue:CP C11
U 1 1 5A88B19B
P 3150 4400
F 0 "C11" H 3175 4500 50  0000 L CNN
F 1 "100µF" H 3175 4300 50  0000 L CNN
F 2 "Capacitors_Tantalum_SMD:CP_Tantalum_Case-B_EIA-3528-21_Hand" H 3188 4250 50  0001 C CNN
F 3 "" H 3150 4400 50  0001 C CNN
	1    3150 4400
	1    0    0    -1  
$EndComp
$Comp
L Baseboard-rescue:R R12
U 1 1 5A88CA12
P 7900 1350
F 0 "R12" V 7980 1350 50  0000 C CNN
F 1 "4k7" V 7900 1350 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 7830 1350 50  0001 C CNN
F 3 "" H 7900 1350 50  0000 C CNN
	1    7900 1350
	-1   0    0    1   
$EndComp
$Comp
L Baseboard-rescue:GND #PWR029
U 1 1 5A88D194
P 7900 2750
F 0 "#PWR029" H 7900 2500 50  0001 C CNN
F 1 "GND" H 7900 2600 50  0000 C CNN
F 2 "" H 7900 2750 50  0000 C CNN
F 3 "" H 7900 2750 50  0000 C CNN
	1    7900 2750
	1    0    0    -1  
$EndComp
$Comp
L Baseboard-rescue:R R14
U 1 1 5A88D41D
P 9500 2400
F 0 "R14" V 9580 2400 50  0000 C CNN
F 1 "1k" V 9500 2400 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 9430 2400 50  0001 C CNN
F 3 "" H 9500 2400 50  0000 C CNN
	1    9500 2400
	0    -1   -1   0   
$EndComp
$Comp
L Baseboard-rescue:+12V #PWR030
U 1 1 5A88E594
P 1400 750
F 0 "#PWR030" H 1400 600 50  0001 C CNN
F 1 "+12V" H 1400 890 50  0000 C CNN
F 2 "" H 1400 750 50  0001 C CNN
F 3 "" H 1400 750 50  0001 C CNN
	1    1400 750 
	1    0    0    -1  
$EndComp
$Comp
L Baseboard-rescue:+12V #PWR031
U 1 1 5A88E987
P 950 4050
F 0 "#PWR031" H 950 3900 50  0001 C CNN
F 1 "+12V" H 950 4190 50  0000 C CNN
F 2 "" H 950 4050 50  0001 C CNN
F 3 "" H 950 4050 50  0001 C CNN
	1    950  4050
	1    0    0    -1  
$EndComp
$Comp
L Baseboard-rescue:BC337 Q4
U 1 1 5A8917A7
P 8000 2400
F 0 "Q4" H 8200 2475 50  0000 L CNN
F 1 "BC337" H 8200 2400 50  0000 L CNN
F 2 "TO_SOT_Packages_THT:TO-92_Inline_Wide" H 8200 2325 50  0001 L CIN
F 3 "" H 8000 2400 50  0001 L CNN
	1    8000 2400
	-1   0    0    -1  
$EndComp
Text Notes 700  800  0    60   ~ 0
HV Supply
Text Notes 950  3400 0    60   ~ 0
5V / 3.3V Supply
Text Notes 4600 3400 0    60   ~ 0
WiFi Controller
$Comp
L Baseboard-rescue:R R10
U 1 1 5A884EDF
P 9500 5400
F 0 "R10" V 9580 5400 50  0000 C CNN
F 1 "68R" V 9500 5400 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 9430 5400 50  0001 C CNN
F 3 "" H 9500 5400 50  0000 C CNN
	1    9500 5400
	1    0    0    -1  
$EndComp
$Comp
L Baseboard-rescue:LED D4
U 1 1 5A8851F7
P 9500 5750
F 0 "D4" H 9500 5850 50  0000 C CNN
F 1 "Status" H 9500 5650 50  0000 C CNN
F 2 "LEDs:LED_0805_HandSoldering" H 9500 5750 50  0001 C CNN
F 3 "" H 9500 5750 50  0000 C CNN
	1    9500 5750
	0    -1   -1   0   
$EndComp
Text GLabel 10200 4900 2    60   Output ~ 0
HV_On
$Comp
L Baseboard-rescue:74HCT245DW IC2
U 1 1 5A8994DC
P 5950 5500
F 0 "IC2" H 5650 6125 50  0000 L BNN
F 1 "74HCT245DW" H 5650 4800 50  0000 L BNN
F 2 "Housings_SOIC:SOIC-20W_7.5x12.8mm_Pitch1.27mm" H 5950 5650 50  0001 C CNN
F 3 "" H 5950 5500 60  0001 C CNN
	1    5950 5500
	1    0    0    -1  
$EndComp
$Comp
L Baseboard-rescue:GND #PWR032
U 1 1 5A89A6FB
P 5350 6150
F 0 "#PWR032" H 5350 5900 50  0001 C CNN
F 1 "GND" H 5350 6000 50  0000 C CNN
F 2 "" H 5350 6150 50  0000 C CNN
F 3 "" H 5350 6150 50  0000 C CNN
	1    5350 6150
	1    0    0    -1  
$EndComp
$Comp
L Baseboard-rescue:GND #PWR033
U 1 1 5A89A963
P 6550 6150
F 0 "#PWR033" H 6550 5900 50  0001 C CNN
F 1 "GND" H 6550 6000 50  0000 C CNN
F 2 "" H 6550 6150 50  0000 C CNN
F 3 "" H 6550 6150 50  0000 C CNN
	1    6550 6150
	1    0    0    -1  
$EndComp
NoConn ~ 5450 5700
NoConn ~ 5450 5600
NoConn ~ 5450 5500
NoConn ~ 5450 5400
$Comp
L Baseboard-rescue:74HCT245DW IC2
U 2 1 5A89BC77
P 6000 3950
F 0 "IC2" H 5700 4450 50  0000 L BNN
F 1 "74HCT245DW" H 5700 3250 50  0000 L BNN
F 2 "Housings_SOIC:SOIC-20W_7.5x12.8mm_Pitch1.27mm" H 6000 4100 50  0001 C CNN
F 3 "" H 6000 3950 60  0001 C CNN
	2    6000 3950
	1    0    0    -1  
$EndComp
$Comp
L Baseboard-rescue:GND #PWR034
U 1 1 5A89BE1E
P 6000 4300
F 0 "#PWR034" H 6000 4050 50  0001 C CNN
F 1 "GND" H 6000 4150 50  0000 C CNN
F 2 "" H 6000 4300 50  0000 C CNN
F 3 "" H 6000 4300 50  0000 C CNN
	1    6000 4300
	1    0    0    -1  
$EndComp
$Comp
L Baseboard-rescue:+5V #PWR035
U 1 1 5A89BEB0
P 6000 3600
F 0 "#PWR035" H 6000 3450 50  0001 C CNN
F 1 "+5V" H 6000 3740 50  0000 C CNN
F 2 "" H 6000 3600 50  0000 C CNN
F 3 "" H 6000 3600 50  0000 C CNN
	1    6000 3600
	1    0    0    -1  
$EndComp
$Comp
L Baseboard-rescue:C C12
U 1 1 5A89BF42
P 5700 3950
F 0 "C12" H 5725 4050 50  0000 L CNN
F 1 "100nF" H 5725 3850 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 5738 3800 50  0001 C CNN
F 3 "" H 5700 3950 50  0000 C CNN
	1    5700 3950
	1    0    0    -1  
$EndComp
Text Label 9650 1000 0    60   ~ 0
175V
$Comp
L Baseboard-rescue:Conn_01x02 J3
U 1 1 5A8B4063
P 11000 1000
F 0 "J3" H 11000 1100 50  0000 C CNN
F 1 "HV" H 11000 800 50  0000 C CNN
F 2 "Socket_Strips:Socket_Strip_Straight_1x02_Pitch2.54mm" H 11000 1000 50  0001 C CNN
F 3 "" H 11000 1000 50  0001 C CNN
	1    11000 1000
	1    0    0    -1  
$EndComp
$Comp
L Baseboard-rescue:R R16
U 1 1 5A8B4FAB
P 1600 1750
F 0 "R16" V 1680 1750 50  0000 C CNN
F 1 "1R" V 1600 1750 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 1530 1750 50  0001 C CNN
F 3 "" H 1600 1750 50  0000 C CNN
	1    1600 1750
	0    1    1    0   
$EndComp
$Comp
L Baseboard-rescue:R R15
U 1 1 5A8B504C
P 1600 1550
F 0 "R15" V 1680 1550 50  0000 C CNN
F 1 "1R" V 1600 1550 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 1530 1550 50  0001 C CNN
F 3 "" H 1600 1550 50  0000 C CNN
	1    1600 1550
	0    1    1    0   
$EndComp
Text Notes 1900 1650 0    60   ~ 0
3x1R = 0R33\n(0,9A Ipk)\n\n4x1R = 0R25\n(1,2A Ipk)\n\n
$Comp
L Baseboard-rescue:R R11
U 1 1 5A8B6DF2
P 1600 1350
F 0 "R11" V 1680 1350 50  0000 C CNN
F 1 "1R" V 1600 1350 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 1530 1350 50  0001 C CNN
F 3 "" H 1600 1350 50  0000 C CNN
	1    1600 1350
	0    1    1    0   
$EndComp
Text GLabel 9750 2400 2    60   Input ~ 0
HV_On
$Comp
L Baseboard-rescue:LED D5
U 1 1 5A92FDF8
P 10600 2350
F 0 "D5" H 10600 2450 50  0000 C CNN
F 1 "LED" H 10600 2250 50  0000 C CNN
F 2 "LEDs:LED_D3.0mm" H 10600 2350 50  0001 C CNN
F 3 "" H 10600 2350 50  0000 C CNN
	1    10600 2350
	0    -1   -1   0   
$EndComp
$Comp
L Baseboard-rescue:R R19
U 1 1 5A930319
P 10600 2700
F 0 "R19" V 10680 2700 50  0000 C CNN
F 1 "680R" V 10600 2700 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 10530 2700 50  0001 C CNN
F 3 "" H 10600 2700 50  0000 C CNN
	1    10600 2700
	1    0    0    -1  
$EndComp
$Comp
L Baseboard-rescue:R R17
U 1 1 5A930E45
P 10250 1500
F 0 "R17" V 10330 1500 50  0000 C CNN
F 1 "220k" V 10250 1500 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 10180 1500 50  0001 C CNN
F 3 "" H 10250 1500 50  0000 C CNN
	1    10250 1500
	-1   0    0    1   
$EndComp
$Comp
L Baseboard-rescue:R R18
U 1 1 5A931093
P 10250 2400
F 0 "R18" V 10330 2400 50  0000 C CNN
F 1 "120k" V 10250 2400 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 10180 2400 50  0001 C CNN
F 3 "" H 10250 2400 50  0000 C CNN
	1    10250 2400
	-1   0    0    1   
$EndComp
$Comp
L Baseboard-rescue:GND #PWR036
U 1 1 5A9320C7
P 10600 2950
F 0 "#PWR036" H 10600 2700 50  0001 C CNN
F 1 "GND" H 10600 2800 50  0000 C CNN
F 2 "" H 10600 2950 50  0000 C CNN
F 3 "" H 10600 2950 50  0000 C CNN
	1    10600 2950
	1    0    0    -1  
$EndComp
$Comp
L Baseboard-rescue:GND #PWR037
U 1 1 5A932A4B
P 10250 2950
F 0 "#PWR037" H 10250 2700 50  0001 C CNN
F 1 "GND" H 10250 2800 50  0000 C CNN
F 2 "" H 10250 2950 50  0000 C CNN
F 3 "" H 10250 2950 50  0000 C CNN
	1    10250 2950
	1    0    0    -1  
$EndComp
$Comp
L Baseboard-rescue:BS170 Q5
U 1 1 5A934239
P 10500 1850
F 0 "Q5" H 10700 1925 50  0000 L CNN
F 1 "BS170" H 10700 1850 50  0000 L CNN
F 2 "TO_SOT_Packages_THT:TO-92_Molded_Narrow" H 10700 1775 50  0001 L CIN
F 3 "" H 10500 1850 50  0001 L CNN
	1    10500 1850
	1    0    0    -1  
$EndComp
$Comp
L Baseboard-rescue:MTCH101 U4
U 1 1 5A9391AA
P 2350 6700
F 0 "U4" H 2100 6200 60  0000 C CNN
F 1 "MTCH101" H 2350 6750 60  0000 C CNN
F 2 "TO_SOT_Packages_SMD:SOT-23-6_Handsoldering" H 2350 6700 60  0001 C CNN
F 3 "" H 2350 6700 60  0001 C CNN
	1    2350 6700
	1    0    0    -1  
$EndComp
$Comp
L Baseboard-rescue:+3V3 #PWR038
U 1 1 5A939D18
P 2350 6000
F 0 "#PWR038" H 2350 5850 50  0001 C CNN
F 1 "+3V3" H 2350 6140 50  0000 C CNN
F 2 "" H 2350 6000 50  0001 C CNN
F 3 "" H 2350 6000 50  0001 C CNN
	1    2350 6000
	1    0    0    -1  
$EndComp
$Comp
L Baseboard-rescue:GND #PWR039
U 1 1 5A93A05C
P 2350 7400
F 0 "#PWR039" H 2350 7150 50  0001 C CNN
F 1 "GND" H 2350 7250 50  0000 C CNN
F 2 "" H 2350 7400 50  0000 C CNN
F 3 "" H 2350 7400 50  0000 C CNN
	1    2350 7400
	1    0    0    -1  
$EndComp
$Comp
L Baseboard-rescue:+3V3 #PWR040
U 1 1 5A93AC01
P 2950 6050
F 0 "#PWR040" H 2950 5900 50  0001 C CNN
F 1 "+3V3" H 2950 6190 50  0000 C CNN
F 2 "" H 2950 6050 50  0001 C CNN
F 3 "" H 2950 6050 50  0001 C CNN
	1    2950 6050
	1    0    0    -1  
$EndComp
$Comp
L Baseboard-rescue:R R20
U 1 1 5A93AF1C
P 2950 6300
F 0 "R20" V 3030 6300 50  0000 C CNN
F 1 "10k" V 2950 6300 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 2880 6300 50  0001 C CNN
F 3 "" H 2950 6300 50  0000 C CNN
	1    2950 6300
	1    0    0    -1  
$EndComp
$Comp
L Baseboard-rescue:POT RV1
U 1 1 5A93B427
P 1100 6850
F 0 "RV1" V 925 6850 50  0000 C CNN
F 1 "100k" V 1000 6850 50  0000 C CNN
F 2 "Potentiometers:Potentiometer_Trimmer_Bourns_3296Z" H 1100 6850 50  0001 C CNN
F 3 "" H 1100 6850 50  0001 C CNN
	1    1100 6850
	1    0    0    -1  
$EndComp
$Comp
L Baseboard-rescue:R R8
U 1 1 5A93B560
P 1550 6850
F 0 "R8" V 1630 6850 50  0000 C CNN
F 1 "10k" V 1550 6850 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 1480 6850 50  0001 C CNN
F 3 "" H 1550 6850 50  0000 C CNN
	1    1550 6850
	0    1    1    0   
$EndComp
$Comp
L Baseboard-rescue:+3V3 #PWR041
U 1 1 5A93B653
P 1100 6600
F 0 "#PWR041" H 1100 6450 50  0001 C CNN
F 1 "+3V3" H 1100 6740 50  0000 C CNN
F 2 "" H 1100 6600 50  0001 C CNN
F 3 "" H 1100 6600 50  0001 C CNN
	1    1100 6600
	1    0    0    -1  
$EndComp
$Comp
L Baseboard-rescue:GND #PWR042
U 1 1 5A93B70F
P 1100 7100
F 0 "#PWR042" H 1100 6850 50  0001 C CNN
F 1 "GND" H 1100 6950 50  0000 C CNN
F 2 "" H 1100 7100 50  0000 C CNN
F 3 "" H 1100 7100 50  0000 C CNN
	1    1100 7100
	1    0    0    -1  
$EndComp
$Comp
L Baseboard-rescue:R R21
U 1 1 5A93C60C
P 3200 6300
F 0 "R21" V 3280 6300 50  0000 C CNN
F 1 "10k" V 3200 6300 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 3130 6300 50  0001 C CNN
F 3 "" H 3200 6300 50  0000 C CNN
	1    3200 6300
	1    0    0    -1  
$EndComp
Text GLabel 3350 6850 2    60   Output ~ 0
Prx_Det
$Comp
L Baseboard-rescue:+3V3 #PWR043
U 1 1 5A93CBDD
P 3200 6050
F 0 "#PWR043" H 3200 5900 50  0001 C CNN
F 1 "+3V3" H 3200 6190 50  0000 C CNN
F 2 "" H 3200 6050 50  0001 C CNN
F 3 "" H 3200 6050 50  0001 C CNN
	1    3200 6050
	1    0    0    -1  
$EndComp
Text GLabel 10150 5050 2    60   Input ~ 0
Prx_Det
$Comp
L Baseboard-rescue:C C13
U 1 1 5A93F69D
P 4000 6750
F 0 "C13" H 4025 6850 50  0000 L CNN
F 1 "100nF" H 4025 6650 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 4038 6600 50  0001 C CNN
F 3 "" H 4000 6750 50  0000 C CNN
	1    4000 6750
	1    0    0    -1  
$EndComp
$Comp
L Baseboard-rescue:+3V3 #PWR044
U 1 1 5A93F849
P 4000 6550
F 0 "#PWR044" H 4000 6400 50  0001 C CNN
F 1 "+3V3" H 4000 6690 50  0000 C CNN
F 2 "" H 4000 6550 50  0001 C CNN
F 3 "" H 4000 6550 50  0001 C CNN
	1    4000 6550
	1    0    0    -1  
$EndComp
$Comp
L Baseboard-rescue:GND #PWR045
U 1 1 5A93FA34
P 4000 6950
F 0 "#PWR045" H 4000 6700 50  0001 C CNN
F 1 "GND" H 4000 6800 50  0000 C CNN
F 2 "" H 4000 6950 50  0000 C CNN
F 3 "" H 4000 6950 50  0000 C CNN
	1    4000 6950
	1    0    0    -1  
$EndComp
$Comp
L Baseboard-rescue:Conn_01x01 J4
U 1 1 5A93FE94
P 1550 6500
F 0 "J4" H 1550 6600 50  0000 C CNN
F 1 "Sensor" H 1550 6400 50  0000 C CNN
F 2 "Measurement_Points:Measurement_Point_Square-TH_Small" H 1550 6500 50  0001 C CNN
F 3 "" H 1550 6500 50  0001 C CNN
	1    1550 6500
	-1   0    0    1   
$EndComp
Text Notes 1000 5700 0    60   ~ 0
Proximity Detector
$Comp
L Baseboard-rescue:C C4
U 1 1 5A9C89B8
P 4450 2400
F 0 "C4" H 4475 2500 50  0000 L CNN
F 1 "1.5nF" H 4475 2300 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D3.0mm_W2.0mm_P2.50mm" H 4488 2250 50  0001 C CNN
F 3 "" H 4450 2400 50  0000 C CNN
	1    4450 2400
	1    0    0    -1  
$EndComp
$Comp
L Baseboard-rescue:POT RV2
U 1 1 5A9CA131
P 6950 2150
F 0 "RV2" V 6775 2150 50  0000 C CNN
F 1 "1kR" V 6850 2150 50  0000 C CNN
F 2 "Potentiometers:Potentiometer_Trimmer_Bourns_3296Z" H 6950 2150 50  0001 C CNN
F 3 "" H 6950 2150 50  0001 C CNN
	1    6950 2150
	-1   0    0    1   
$EndComp
$Comp
L Baseboard-rescue:R R22
U 1 1 5A9CB6F5
P 7400 1350
F 0 "R22" V 7480 1350 50  0000 C CNN
F 1 "1k" V 7400 1350 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 7330 1350 50  0001 C CNN
F 3 "" H 7400 1350 50  0000 C CNN
	1    7400 1350
	-1   0    0    1   
$EndComp
$Comp
L Baseboard-rescue:R R23
U 1 1 5AA417AC
P 8400 1550
F 0 "R23" V 8480 1550 50  0000 C CNN
F 1 "47R" V 8400 1550 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 8330 1550 50  0001 C CNN
F 3 "" H 8400 1550 50  0000 C CNN
	1    8400 1550
	-1   0    0    1   
$EndComp
$Comp
L Baseboard-rescue:R R26
U 1 1 5AA42CBD
P 9500 2700
F 0 "R26" V 9580 2700 50  0000 C CNN
F 1 "1k" V 9500 2700 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 9430 2700 50  0001 C CNN
F 3 "" H 9500 2700 50  0000 C CNN
	1    9500 2700
	0    -1   -1   0   
$EndComp
$Comp
L Baseboard-rescue:GND #PWR046
U 1 1 5AA44606
P 8400 2750
F 0 "#PWR046" H 8400 2500 50  0001 C CNN
F 1 "GND" H 8400 2600 50  0000 C CNN
F 2 "" H 8400 2750 50  0000 C CNN
F 3 "" H 8400 2750 50  0000 C CNN
	1    8400 2750
	1    0    0    -1  
$EndComp
$Comp
L Baseboard-rescue:D_Zener D8
U 1 1 5AA57199
P 8400 1200
F 0 "D8" H 8400 1300 50  0000 C CNN
F 1 "ZD20 / 1W" H 8400 1100 50  0000 C CNN
F 2 "Diodes_THT:D_DO-41_SOD81_P10.16mm_Horizontal" H 8400 1200 50  0001 C CNN
F 3 "" H 8400 1200 50  0001 C CNN
	1    8400 1200
	0    1    1    0   
$EndComp
$Comp
L Baseboard-rescue:MPSA42 Q7
U 1 1 5AA6F01C
P 8500 2150
F 0 "Q7" H 8700 2225 50  0000 L CNN
F 1 "MPSA42" H 8700 2150 50  0000 L CNN
F 2 "TO_SOT_Packages_THT:TO-92_Molded_Narrow" H 8700 2075 50  0001 L CIN
F 3 "" H 8500 2150 50  0001 L CNN
	1    8500 2150
	-1   0    0    -1  
$EndComp
$Comp
L Baseboard-rescue:D D7
U 1 1 5AA74992
P 3800 2150
F 0 "D7" H 3800 2250 50  0000 C CNN
F 1 "1N5711" H 3800 2000 50  0000 C CNN
F 2 "Diodes_THT:D_DO-35_SOD27_P10.16mm_Horizontal" H 3800 2150 50  0001 C CNN
F 3 "" H 3800 2150 50  0000 C CNN
	1    3800 2150
	-1   0    0    1   
$EndComp
$Comp
L Baseboard-rescue:GND #PWR047
U 1 1 5AA75E2C
P 4000 2700
F 0 "#PWR047" H 4000 2450 50  0001 C CNN
F 1 "GND" H 4000 2550 50  0000 C CNN
F 2 "" H 4000 2700 50  0000 C CNN
F 3 "" H 4000 2700 50  0000 C CNN
	1    4000 2700
	1    0    0    -1  
$EndComp
$Comp
L Baseboard-rescue:BC327 Q3
U 1 1 5AA6E692
P 5250 2300
F 0 "Q3" H 5450 2375 50  0000 L CNN
F 1 "BC327" H 5450 2300 50  0000 L CNN
F 2 "TO_SOT_Packages_THT:TO-92_Inline_Wide" H 5450 2225 50  0001 L CIN
F 3 "" H 5250 2300 50  0001 L CNN
	1    5250 2300
	1    0    0    1   
$EndComp
$Comp
L Baseboard-rescue:BC327 Q2
U 1 1 5AA8D584
P 3900 2400
F 0 "Q2" H 4100 2475 50  0000 L CNN
F 1 "BC327" H 4100 2400 50  0000 L CNN
F 2 "TO_SOT_Packages_THT:TO-92_Inline_Wide" H 4100 2325 50  0001 L CIN
F 3 "" H 3900 2400 50  0001 L CNN
	1    3900 2400
	1    0    0    1   
$EndComp
$Comp
L Baseboard-rescue:GND #PWR048
U 1 1 5AA9BA02
P 6200 2700
F 0 "#PWR048" H 6200 2450 50  0001 C CNN
F 1 "GND" H 6200 2550 50  0000 C CNN
F 2 "" H 6200 2700 50  0000 C CNN
F 3 "" H 6200 2700 50  0000 C CNN
	1    6200 2700
	1    0    0    -1  
$EndComp
$Comp
L Baseboard-rescue:R R13
U 1 1 5AA9F894
P 2100 1950
F 0 "R13" V 2180 1950 50  0000 C CNN
F 1 "180R" V 2100 1950 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 2030 1950 50  0001 C CNN
F 3 "" H 2100 1950 50  0000 C CNN
	1    2100 1950
	0    1    1    0   
$EndComp
$Comp
L Baseboard-rescue:GND #PWR049
U 1 1 5AAA57C3
P 2250 2700
F 0 "#PWR049" H 2250 2450 50  0001 C CNN
F 1 "GND" H 2250 2550 50  0000 C CNN
F 2 "" H 2250 2700 50  0000 C CNN
F 3 "" H 2250 2700 50  0000 C CNN
	1    2250 2700
	1    0    0    -1  
$EndComp
$Comp
L Baseboard-rescue:D_TVS D6
U 1 1 5AAA79AF
P 1400 2450
F 0 "D6" H 1400 2550 50  0000 C CNN
F 1 "D_TVS" H 1400 2350 50  0000 C CNN
F 2 "Diodes_THT:D_5W_P12.70mm_Horizontal" H 1400 2450 50  0001 C CNN
F 3 "" H 1400 2450 50  0001 C CNN
	1    1400 2450
	0    1    1    0   
$EndComp
$Comp
L Baseboard-rescue:GND #PWR050
U 1 1 5AAA8163
P 1400 2700
F 0 "#PWR050" H 1400 2450 50  0001 C CNN
F 1 "GND" H 1400 2550 50  0000 C CNN
F 2 "" H 1400 2700 50  0000 C CNN
F 3 "" H 1400 2700 50  0000 C CNN
	1    1400 2700
	1    0    0    -1  
$EndComp
$Comp
L Baseboard-rescue:GND #PWR051
U 1 1 5AA446DD
P 9000 2950
F 0 "#PWR051" H 9000 2700 50  0001 C CNN
F 1 "GND" H 9000 2800 50  0000 C CNN
F 2 "" H 9000 2950 50  0000 C CNN
F 3 "" H 9000 2950 50  0000 C CNN
	1    9000 2950
	1    0    0    -1  
$EndComp
$Comp
L Baseboard-rescue:BC337 Q8
U 1 1 5AA6F15D
P 9100 2700
F 0 "Q8" H 9300 2775 50  0000 L CNN
F 1 "BC337" H 9300 2700 50  0000 L CNN
F 2 "TO_SOT_Packages_THT:TO-92_Inline_Wide" H 9300 2625 50  0001 L CIN
F 3 "" H 9100 2700 50  0001 L CNN
	1    9100 2700
	-1   0    0    -1  
$EndComp
$Comp
L Baseboard-rescue:R R24
U 1 1 5AA422C7
P 9000 1350
F 0 "R24" V 9080 1350 50  0000 C CNN
F 1 "4k7" V 9000 1350 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 8930 1350 50  0001 C CNN
F 3 "" H 9000 1350 50  0000 C CNN
	1    9000 1350
	-1   0    0    1   
$EndComp
$Comp
L Baseboard-rescue:BC337 Q6
U 1 1 5AAB0885
P 7500 1950
F 0 "Q6" H 7700 2025 50  0000 L CNN
F 1 "BC337" H 7700 1950 50  0000 L CNN
F 2 "TO_SOT_Packages_THT:TO-92_Inline_Wide" H 7700 1875 50  0001 L CIN
F 3 "" H 7500 1950 50  0001 L CNN
	1    7500 1950
	-1   0    0    -1  
$EndComp
$Comp
L Baseboard-rescue:C C14
U 1 1 5AAB0C7A
P 8750 1950
F 0 "C14" H 8775 2050 50  0000 L CNN
F 1 "1.5nF" H 8775 1850 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D3.0mm_W2.0mm_P2.50mm" H 8788 1800 50  0001 C CNN
F 3 "" H 8750 1950 50  0000 C CNN
	1    8750 1950
	1    0    0    -1  
$EndComp
$Comp
L Baseboard-rescue:Conn_01x07 J2
U 1 1 5AC7CAEA
P 4600 5100
F 0 "J2" H 4600 5500 50  0000 C CNN
F 1 "Display" H 4600 4700 50  0000 C CNN
F 2 "Socket_Strips:Socket_Strip_Straight_1x07_Pitch2.54mm" H 4600 5100 50  0001 C CNN
F 3 "" H 4600 5100 50  0001 C CNN
	1    4600 5100
	-1   0    0    -1  
$EndComp
$Comp
L Baseboard-rescue:+12V #PWR052
U 1 1 5AC7D6B5
P 4850 4750
F 0 "#PWR052" H 4850 4600 50  0001 C CNN
F 1 "+12V" H 4850 4890 50  0000 C CNN
F 2 "" H 4850 4750 50  0001 C CNN
F 3 "" H 4850 4750 50  0001 C CNN
	1    4850 4750
	1    0    0    -1  
$EndComp
Text GLabel 10700 2100 2    60   Output ~ 0
HV_Status
Text GLabel 9450 3350 0    60   Input ~ 0
HV_Status
$Comp
L Baseboard-rescue:R R25
U 1 1 5AF58FF4
P 9550 3600
F 0 "R25" V 9630 3600 50  0000 C CNN
F 1 "68k" V 9550 3600 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 9480 3600 50  0001 C CNN
F 3 "" H 9550 3600 50  0000 C CNN
	1    9550 3600
	-1   0    0    1   
$EndComp
$Comp
L Baseboard-rescue:R R27
U 1 1 5AF5914D
P 9550 4150
F 0 "R27" V 9630 4150 50  0000 C CNN
F 1 "27k" V 9550 4150 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 9480 4150 50  0001 C CNN
F 3 "" H 9550 4150 50  0000 C CNN
	1    9550 4150
	-1   0    0    1   
$EndComp
$Comp
L Baseboard-rescue:GND #PWR053
U 1 1 5AF59383
P 9550 4400
F 0 "#PWR053" H 9550 4150 50  0001 C CNN
F 1 "GND" H 9550 4250 50  0000 C CNN
F 2 "" H 9550 4400 50  0000 C CNN
F 3 "" H 9550 4400 50  0000 C CNN
	1    9550 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	1750 2700 1750 2600
Wire Wire Line
	1750 2150 1750 2300
Wire Wire Line
	1800 2050 2300 2050
Wire Wire Line
	3550 1950 3500 1950
Wire Wire Line
	3500 2050 4850 2050
Connection ~ 4850 2050
Connection ~ 3800 1000
Wire Wire Line
	5100 1000 5750 1000
Connection ~ 5750 1000
Wire Wire Line
	2050 3000 6500 3000
Wire Wire Line
	6500 1750 6500 3000
Wire Wire Line
	4850 2700 4850 2650
Wire Wire Line
	5350 2700 5350 2500
Wire Wire Line
	5750 2700 5750 2250
Wire Wire Line
	6950 1000 6950 1200
Connection ~ 6950 1000
Wire Wire Line
	3800 1600 3800 1650
Connection ~ 1750 2150
Wire Wire Line
	1150 2050 1200 2050
Wire Wire Line
	1200 2050 1200 2150
Wire Wire Line
	1150 2150 1200 2150
Connection ~ 1200 2150
Wire Wire Line
	3700 4050 3700 4100
Wire Wire Line
	3700 4400 3700 4500
Wire Wire Line
	3700 4800 3700 4900
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
	9200 5100 9800 5100
Wire Wire Line
	9800 6000 9800 6050
Wire Wire Line
	9800 5550 9800 5600
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
	8300 3950 8300 4100
Wire Wire Line
	7550 3650 7700 3650
Wire Wire Line
	7700 3600 7700 3650
Connection ~ 7700 3650
Connection ~ 1400 1950
Wire Wire Line
	1150 4200 950  4200
Wire Wire Line
	950  4050 950  4200
Connection ~ 950  4200
Wire Wire Line
	1750 4200 1850 4200
Wire Wire Line
	1850 4200 1850 4250
Wire Wire Line
	1450 4500 1450 4600
Wire Wire Line
	950  4550 950  4600
Wire Wire Line
	950  4600 1450 4600
Connection ~ 1450 4600
Wire Wire Line
	1850 4600 1850 4550
Wire Wire Line
	2200 4200 2200 4250
Wire Wire Line
	3000 4200 3150 4200
Wire Wire Line
	3150 4200 3150 4250
Connection ~ 2200 4200
Connection ~ 1850 4200
Wire Wire Line
	2700 4500 2700 4600
Wire Wire Line
	2200 4550 2200 4600
Wire Wire Line
	2200 4600 2700 4600
Connection ~ 2700 4600
Wire Wire Line
	3150 4600 3150 4550
Wire Wire Line
	2050 4000 2050 4200
Connection ~ 2050 4200
Wire Wire Line
	3350 4200 3350 4050
Connection ~ 3150 4200
Wire Wire Line
	6450 5000 7400 5000
Wire Wire Line
	6450 5100 7400 5100
Wire Wire Line
	10700 4900 10800 4900
Wire Wire Line
	10700 4900 10700 5000
Wire Wire Line
	7900 800  7900 1200
Wire Wire Line
	7700 1950 7900 1950
Wire Wire Line
	7900 1500 7900 1950
Connection ~ 7900 1950
Wire Wire Line
	7900 2750 7900 2600
Connection ~ 7400 800 
Wire Notes Line
	500  3150 11150 3150
Wire Notes Line
	4350 3150 4350 7800
Wire Wire Line
	9200 4900 10200 4900
Wire Wire Line
	6450 5200 7400 5200
Wire Wire Line
	5450 5900 5350 5900
Wire Wire Line
	5350 5900 5350 6000
Wire Wire Line
	5450 6000 5350 6000
Connection ~ 5350 6000
Wire Wire Line
	6450 5400 6550 5400
Wire Wire Line
	6550 5400 6550 5500
Wire Wire Line
	6450 5700 6550 5700
Connection ~ 6550 5700
Wire Wire Line
	6450 5600 6550 5600
Connection ~ 6550 5600
Wire Wire Line
	6450 5500 6550 5500
Connection ~ 6550 5500
Wire Wire Line
	6800 4700 6800 5350
Wire Wire Line
	6800 5650 6800 5700
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
Wire Wire Line
	5750 1000 5750 1850
Wire Wire Line
	10800 1100 10700 1100
Wire Wire Line
	10700 1100 10700 1300
Wire Wire Line
	1400 1750 1450 1750
Connection ~ 1400 1750
Wire Wire Line
	1400 1550 1450 1550
Wire Wire Line
	1800 1000 1800 1350
Connection ~ 1800 1950
Connection ~ 1800 1750
Wire Wire Line
	1400 750  1400 800 
Wire Wire Line
	1750 1750 1800 1750
Wire Wire Line
	1800 1000 3800 1000
Wire Wire Line
	1450 1350 1400 1350
Connection ~ 1400 1550
Wire Wire Line
	1750 1350 1800 1350
Connection ~ 1800 1550
Wire Wire Line
	7550 4050 7700 4050
Wire Wire Line
	7700 4100 7700 4050
Connection ~ 7700 4050
Wire Wire Line
	10600 800  10600 1650
Connection ~ 7900 800 
Wire Wire Line
	10250 1650 10250 1850
Wire Wire Line
	10600 2850 10600 2950
Wire Wire Line
	10600 2050 10600 2100
Wire Wire Line
	10300 1850 10250 1850
Connection ~ 10250 1850
Wire Wire Line
	10250 2550 10250 2950
Wire Wire Line
	10250 1000 10250 1350
Connection ~ 10250 1000
Wire Wire Line
	10600 2550 10600 2500
Wire Wire Line
	1750 6500 1850 6500
Wire Wire Line
	2350 6050 2350 6000
Wire Wire Line
	2350 7400 2350 7350
Wire Wire Line
	2850 6500 2950 6500
Wire Wire Line
	2950 6500 2950 6450
Wire Wire Line
	2950 6050 2950 6150
Wire Wire Line
	1100 6600 1100 6700
Wire Wire Line
	1100 7100 1100 7000
Wire Wire Line
	1250 6850 1400 6850
Wire Wire Line
	1700 6850 1850 6850
Wire Wire Line
	2850 6850 3200 6850
Wire Wire Line
	3200 6850 3200 6450
Connection ~ 3200 6850
Wire Wire Line
	3200 6150 3200 6050
Wire Wire Line
	9500 5600 9500 5550
Wire Wire Line
	9500 6050 9500 5900
Wire Wire Line
	9800 3850 9800 5100
Wire Wire Line
	10050 5000 10050 5050
Wire Wire Line
	10050 5050 10150 5050
Wire Wire Line
	4000 6550 4000 6600
Wire Wire Line
	4000 6950 4000 6900
Wire Notes Line
	500  5450 4350 5450
Wire Wire Line
	6950 1500 6950 1750
Wire Wire Line
	6950 2300 6950 2350
Wire Wire Line
	6950 2650 6950 2700
Wire Wire Line
	7400 3000 7400 2150
Connection ~ 8400 1000
Wire Wire Line
	1400 800  7400 800 
Wire Wire Line
	6100 1000 6200 1000
Wire Wire Line
	8400 1000 8400 1050
Wire Wire Line
	7400 1750 7400 1500
Wire Wire Line
	7400 800  7400 1200
Wire Wire Line
	8400 1350 8400 1400
Wire Wire Line
	8400 1700 8400 1750
Wire Wire Line
	8400 2750 8400 2350
Wire Wire Line
	3800 1300 3800 1000
Wire Wire Line
	3600 2400 3700 2400
Wire Wire Line
	3600 2400 3600 2150
Wire Wire Line
	3500 2150 3600 2150
Connection ~ 3600 2150
Wire Wire Line
	4000 2700 4000 2600
Wire Wire Line
	5200 2050 5350 2050
Wire Wire Line
	5350 2100 5350 2050
Connection ~ 5350 2050
Wire Wire Line
	5050 2300 4850 2300
Wire Wire Line
	4850 2050 4850 2300
Connection ~ 4850 2300
Wire Wire Line
	4450 2150 4450 2250
Wire Wire Line
	4450 2700 4450 2550
Wire Wire Line
	3500 2250 3550 2250
Wire Wire Line
	3550 2250 3550 2700
Wire Wire Line
	3950 2150 4000 2150
Wire Wire Line
	4000 2200 4000 2150
Connection ~ 4000 2150
Connection ~ 6500 3000
Wire Wire Line
	6200 1250 6200 1000
Connection ~ 6200 1000
Wire Wire Line
	6200 2700 6200 1550
Wire Wire Line
	6800 2150 6700 2150
Wire Wire Line
	6700 2150 6700 1950
Wire Wire Line
	6700 1950 6950 1950
Connection ~ 6950 1950
Wire Wire Line
	6500 1750 6950 1750
Connection ~ 6950 1750
Wire Wire Line
	1400 2150 1750 2150
Connection ~ 1400 1350
Connection ~ 1400 800 
Wire Wire Line
	2050 2250 2250 2250
Wire Wire Line
	2050 2250 2050 3000
Wire Wire Line
	1150 1950 1400 1950
Wire Wire Line
	2300 1950 2250 1950
Wire Wire Line
	1750 1950 1800 1950
Connection ~ 1800 1350
Wire Wire Line
	3550 1750 3550 1950
Wire Wire Line
	1750 1550 1800 1550
Wire Wire Line
	2250 2300 2250 2250
Connection ~ 2250 2250
Wire Wire Line
	2250 2700 2250 2600
Connection ~ 1400 2150
Wire Wire Line
	1400 2700 1400 2600
Wire Wire Line
	9650 2700 9700 2700
Wire Wire Line
	9350 2700 9300 2700
Wire Wire Line
	9000 2950 9000 2900
Wire Wire Line
	9650 2400 9700 2400
Connection ~ 9700 2400
Wire Wire Line
	9700 2700 9700 2400
Connection ~ 9000 800 
Wire Wire Line
	9000 800  9000 1200
Wire Wire Line
	8200 2400 9350 2400
Wire Wire Line
	9000 1500 9000 2150
Wire Wire Line
	8700 2150 8750 2150
Connection ~ 9000 2150
Wire Wire Line
	8750 2100 8750 2150
Connection ~ 8750 2150
Wire Wire Line
	8750 1800 8750 1750
Wire Wire Line
	8750 1750 8400 1750
Connection ~ 8400 1750
Wire Wire Line
	4800 5300 4850 5300
Wire Wire Line
	4850 5300 4850 5550
Wire Wire Line
	4950 4550 4950 5400
Wire Wire Line
	4800 4800 4850 4800
Wire Wire Line
	4850 4800 4850 4750
Wire Wire Line
	10700 2100 10600 2100
Connection ~ 10600 2100
Wire Wire Line
	9450 3350 9550 3350
Wire Wire Line
	9550 3350 9550 3450
Wire Wire Line
	9550 3750 9550 3850
Wire Wire Line
	9550 4400 9550 4300
Wire Wire Line
	9800 3850 9550 3850
Connection ~ 9550 3850
Connection ~ 9800 5100
Wire Wire Line
	4800 4900 5300 4900
Wire Wire Line
	5300 4900 5300 5200
Wire Wire Line
	5300 5200 5450 5200
Wire Wire Line
	4800 5000 5450 5000
Wire Wire Line
	5450 5300 5100 5300
Wire Wire Line
	5100 5300 5100 5100
Wire Wire Line
	5100 5100 4800 5100
Wire Wire Line
	4800 5200 5200 5200
Wire Wire Line
	4950 5400 4800 5400
Wire Wire Line
	5450 5100 5200 5100
Wire Wire Line
	5200 5100 5200 5200
Wire Wire Line
	6450 5300 7400 5300
Wire Notes Line
	1350 1250 1350 1450
Wire Notes Line
	1350 1450 1850 1450
Wire Notes Line
	1850 1450 1850 1250
Wire Notes Line
	1850 1250 1350 1250
Text Notes 1400 1200 0    60   ~ 0
Optional
Wire Wire Line
	4850 2050 4900 2050
Wire Wire Line
	3800 1000 4600 1000
Wire Wire Line
	5750 1000 5800 1000
Wire Wire Line
	6950 1000 8400 1000
Wire Wire Line
	1750 2150 2300 2150
Wire Wire Line
	1200 2150 1200 2700
Wire Wire Line
	7700 3650 7850 3650
Wire Wire Line
	1400 1950 1400 2150
Wire Wire Line
	1400 1950 1450 1950
Wire Wire Line
	950  4200 950  4250
Wire Wire Line
	1450 4600 1450 4650
Wire Wire Line
	1450 4600 1850 4600
Wire Wire Line
	2200 4200 2400 4200
Wire Wire Line
	1850 4200 2050 4200
Wire Wire Line
	2700 4600 2700 4650
Wire Wire Line
	2700 4600 3150 4600
Wire Wire Line
	2050 4200 2200 4200
Wire Wire Line
	3150 4200 3350 4200
Wire Wire Line
	7900 1950 7900 2200
Wire Wire Line
	7400 800  7900 800 
Wire Wire Line
	5350 6000 5350 6150
Wire Wire Line
	6550 5700 6550 6150
Wire Wire Line
	6550 5600 6550 5700
Wire Wire Line
	6550 5500 6550 5600
Wire Wire Line
	1400 1750 1400 1950
Wire Wire Line
	1800 1950 1800 2050
Wire Wire Line
	1800 1950 1950 1950
Wire Wire Line
	1800 1750 1800 1950
Wire Wire Line
	1800 1750 3550 1750
Wire Wire Line
	1400 1550 1400 1750
Wire Wire Line
	1800 1550 1800 1750
Wire Wire Line
	7700 4050 7850 4050
Wire Wire Line
	7900 800  9000 800 
Wire Wire Line
	10250 1850 10250 2250
Wire Wire Line
	10250 1000 10800 1000
Wire Wire Line
	3200 6850 3350 6850
Wire Wire Line
	8400 1000 10250 1000
Wire Wire Line
	3600 2150 3650 2150
Wire Wire Line
	5350 2050 5450 2050
Wire Wire Line
	4850 2300 4850 2350
Wire Wire Line
	4000 2150 4450 2150
Wire Wire Line
	6500 3000 7400 3000
Wire Wire Line
	6200 1000 6950 1000
Wire Wire Line
	6950 1950 6950 2000
Wire Wire Line
	6950 1750 6950 1950
Wire Wire Line
	1400 1350 1400 1550
Wire Wire Line
	1400 800  1400 1350
Wire Wire Line
	1800 1350 1800 1550
Wire Wire Line
	2250 2250 2300 2250
Wire Wire Line
	1400 2150 1400 2300
Wire Wire Line
	9700 2400 9750 2400
Wire Wire Line
	9000 800  10600 800 
Wire Wire Line
	9000 2150 9000 2500
Wire Wire Line
	8750 2150 9000 2150
Wire Wire Line
	8400 1750 8400 1950
Wire Wire Line
	10600 2100 10600 2200
Wire Wire Line
	9550 3850 9550 4000
Wire Wire Line
	9800 5100 9800 5250
$EndSCHEMATC
