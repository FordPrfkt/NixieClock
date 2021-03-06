EESchema Schematic File Version 4
LIBS:IN14_Display-cache
EELAYER 26 0
EELAYER END
$Descr A3 16535 11693
encoding utf-8
Sheet 1 1
Title "IN-14 Nixie Display Board"
Date "2017-01-07"
Rev "1.0"
Comp "fordprfkt@googlemail.com"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L russian-nixies:IN-14 N1
U 1 1 58445ABA
P 4300 2950
F 0 "N1" H 4200 3675 50  0000 L BNN
F 1 "IN-14" H 4300 2950 50  0000 L BNN
F 2 "russian-nixies:russian-nixies-IN-14" H 4300 3100 50  0001 C CNN
F 3 "" H 4300 2950 60  0001 C CNN
	1    4300 2950
	0    -1   -1   0   
$EndComp
$Comp
L russian-nixies:IN-14 N2
U 1 1 58445BE2
P 5850 2900
F 0 "N2" H 5750 3625 50  0000 L BNN
F 1 "IN-14" H 5850 2900 50  0000 L BNN
F 2 "russian-nixies:russian-nixies-IN-14" H 5850 3050 50  0001 C CNN
F 3 "" H 5850 2900 60  0001 C CNN
	1    5850 2900
	0    -1   -1   0   
$EndComp
$Comp
L russian-nixies:IN-14 N3
U 1 1 58445C5C
P 7400 2900
F 0 "N3" H 7300 3625 50  0000 L BNN
F 1 "IN-14" H 7400 2900 50  0000 L BNN
F 2 "russian-nixies:russian-nixies-IN-14" H 7400 3050 50  0001 C CNN
F 3 "" H 7400 2900 60  0001 C CNN
	1    7400 2900
	0    -1   -1   0   
$EndComp
$Comp
L russian-nixies:IN-14 N4
U 1 1 58445D01
P 8900 2900
F 0 "N4" H 8800 3625 50  0000 L BNN
F 1 "IN-14" H 8900 2900 50  0000 L BNN
F 2 "russian-nixies:russian-nixies-IN-14" H 8900 3050 50  0001 C CNN
F 3 "" H 8900 2900 60  0001 C CNN
	1    8900 2900
	0    -1   -1   0   
$EndComp
$Comp
L russian-nixies:IN-14 N5
U 1 1 58445DB9
P 10400 2900
F 0 "N5" H 10300 3625 50  0000 L BNN
F 1 "IN-14" H 10400 2900 50  0000 L BNN
F 2 "russian-nixies:russian-nixies-IN-14" H 10400 3050 50  0001 C CNN
F 3 "" H 10400 2900 60  0001 C CNN
	1    10400 2900
	0    -1   -1   0   
$EndComp
$Comp
L russian-nixies:IN-14 N6
U 1 1 58445E38
P 11900 2900
F 0 "N6" H 11800 3625 50  0000 L BNN
F 1 "IN-14" H 11900 2900 50  0000 L BNN
F 2 "russian-nixies:russian-nixies-IN-14" H 11900 3050 50  0001 C CNN
F 3 "" H 11900 2900 60  0001 C CNN
	1    11900 2900
	0    -1   -1   0   
$EndComp
$Comp
L power:VCC #PWR01
U 1 1 5865A89D
P 2650 5450
F 0 "#PWR01" H 2650 5300 50  0001 C CNN
F 1 "VCC" H 2650 5600 50  0000 C CNN
F 2 "" H 2650 5450 50  0000 C CNN
F 3 "" H 2650 5450 50  0000 C CNN
	1    2650 5450
	1    0    0    -1  
$EndComp
NoConn ~ 3900 2550
NoConn ~ 4800 2550
NoConn ~ 5450 2500
NoConn ~ 7000 2500
NoConn ~ 7900 2500
NoConn ~ 8500 2500
NoConn ~ 10000 2500
$Comp
L Device:LED D1
U 1 1 586EDDF7
P 3950 7300
F 0 "D1" H 3950 7400 50  0000 C CNN
F 1 "LED" H 3950 7200 50  0000 C CNN
F 2 "LEDs:LED_0805" H 3950 7300 50  0001 C CNN
F 3 "" H 3950 7300 50  0000 C CNN
	1    3950 7300
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R7
U 1 1 586EDF0A
P 3950 6900
F 0 "R7" V 4030 6900 50  0000 C CNN
F 1 "120R" V 3950 6900 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 3880 6900 50  0001 C CNN
F 3 "" H 3950 6900 50  0000 C CNN
	1    3950 6900
	1    0    0    -1  
$EndComp
$Comp
L Device:C C1
U 1 1 586EDF4D
P 8600 9600
F 0 "C1" H 8625 9700 50  0000 L CNN
F 1 "100nF" H 8625 9500 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 8638 9450 50  0001 C CNN
F 3 "" H 8600 9600 50  0000 C CNN
	1    8600 9600
	1    0    0    -1  
$EndComp
$Comp
L IN14_Display-rescue:CONN_01X02 P1
U 1 1 586EE4C4
P 3000 2000
F 0 "P1" H 3000 2150 50  0000 C CNN
F 1 "CONN_01X02" V 3100 2000 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02_Pitch2.54mm" H 3000 2000 50  0001 C CNN
F 3 "" H 3000 2000 50  0000 C CNN
	1    3000 2000
	-1   0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 586EFC99
P 4400 2300
F 0 "R1" V 4480 2300 50  0000 C CNN
F 1 "2k2" V 4400 2300 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 4330 2300 50  0001 C CNN
F 3 "" H 4400 2300 50  0000 C CNN
	1    4400 2300
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 586F000C
P 5950 2300
F 0 "R2" V 6030 2300 50  0000 C CNN
F 1 "2k2" V 5950 2300 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 5880 2300 50  0001 C CNN
F 3 "" H 5950 2300 50  0000 C CNN
	1    5950 2300
	1    0    0    -1  
$EndComp
$Comp
L Device:R R3
U 1 1 586F00DB
P 7500 2300
F 0 "R3" V 7580 2300 50  0000 C CNN
F 1 "2k2" V 7500 2300 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 7430 2300 50  0001 C CNN
F 3 "" H 7500 2300 50  0000 C CNN
	1    7500 2300
	1    0    0    -1  
$EndComp
$Comp
L Device:R R4
U 1 1 586F01C3
P 9000 2250
F 0 "R4" V 9080 2250 50  0000 C CNN
F 1 "2k2" V 9000 2250 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 8930 2250 50  0001 C CNN
F 3 "" H 9000 2250 50  0000 C CNN
	1    9000 2250
	1    0    0    -1  
$EndComp
$Comp
L Device:R R6
U 1 1 586F0549
P 12000 2250
F 0 "R6" V 12080 2250 50  0000 C CNN
F 1 "2k2" V 12000 2250 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 11930 2250 50  0001 C CNN
F 3 "" H 12000 2250 50  0000 C CNN
	1    12000 2250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR02
U 1 1 586F380B
P 3250 2150
F 0 "#PWR02" H 3250 1900 50  0001 C CNN
F 1 "GND" H 3250 2000 50  0000 C CNN
F 2 "" H 3250 2150 50  0000 C CNN
F 3 "" H 3250 2150 50  0000 C CNN
	1    3250 2150
	1    0    0    -1  
$EndComp
$Comp
L Device:C C2
U 1 1 586F5EC0
P 8950 9600
F 0 "C2" H 8975 9700 50  0000 L CNN
F 1 "100nF" H 8975 9500 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 8988 9450 50  0001 C CNN
F 3 "" H 8950 9600 50  0000 C CNN
	1    8950 9600
	1    0    0    -1  
$EndComp
$Comp
L Device:C C3
U 1 1 586F5F36
P 9300 9600
F 0 "C3" H 9325 9700 50  0000 L CNN
F 1 "100nF" H 9325 9500 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 9338 9450 50  0001 C CNN
F 3 "" H 9300 9600 50  0000 C CNN
	1    9300 9600
	1    0    0    -1  
$EndComp
$Comp
L Device:C C4
U 1 1 586F5FA1
P 9650 9600
F 0 "C4" H 9675 9700 50  0000 L CNN
F 1 "100nF" H 9675 9500 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 9688 9450 50  0001 C CNN
F 3 "" H 9650 9600 50  0000 C CNN
	1    9650 9600
	1    0    0    -1  
$EndComp
$Comp
L Device:C C5
U 1 1 586F6013
P 10000 9600
F 0 "C5" H 10025 9700 50  0000 L CNN
F 1 "100nF" H 10025 9500 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 10038 9450 50  0001 C CNN
F 3 "" H 10000 9600 50  0000 C CNN
	1    10000 9600
	1    0    0    -1  
$EndComp
$Comp
L Device:C C6
U 1 1 586F6084
P 10350 9600
F 0 "C6" H 10375 9700 50  0000 L CNN
F 1 "100nF" H 10375 9500 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 10388 9450 50  0001 C CNN
F 3 "" H 10350 9600 50  0000 C CNN
	1    10350 9600
	1    0    0    -1  
$EndComp
$Comp
L Device:C C7
U 1 1 586F60FC
P 10700 9600
F 0 "C7" H 10725 9700 50  0000 L CNN
F 1 "100nF" H 10725 9500 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 10738 9450 50  0001 C CNN
F 3 "" H 10700 9600 50  0000 C CNN
	1    10700 9600
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR03
U 1 1 586F6363
P 9650 9300
F 0 "#PWR03" H 9650 9150 50  0001 C CNN
F 1 "VCC" H 9650 9450 50  0000 C CNN
F 2 "" H 9650 9300 50  0000 C CNN
F 3 "" H 9650 9300 50  0000 C CNN
	1    9650 9300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR04
U 1 1 586F68E1
P 9650 9900
F 0 "#PWR04" H 9650 9650 50  0001 C CNN
F 1 "GND" H 9650 9750 50  0000 C CNN
F 2 "" H 9650 9900 50  0000 C CNN
F 3 "" H 9650 9900 50  0000 C CNN
	1    9650 9900
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D2
U 1 1 5870646E
P 4250 7300
F 0 "D2" H 4250 7400 50  0000 C CNN
F 1 "LED" H 4250 7200 50  0000 C CNN
F 2 "LEDs:LED_0805" H 4250 7300 50  0001 C CNN
F 3 "" H 4250 7300 50  0000 C CNN
	1    4250 7300
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D3
U 1 1 587064ED
P 4550 7300
F 0 "D3" H 4550 7400 50  0000 C CNN
F 1 "LED" H 4550 7200 50  0000 C CNN
F 2 "LEDs:LED_0805" H 4550 7300 50  0001 C CNN
F 3 "" H 4550 7300 50  0000 C CNN
	1    4550 7300
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D4
U 1 1 5870656B
P 4850 7300
F 0 "D4" H 4850 7400 50  0000 C CNN
F 1 "LED" H 4850 7200 50  0000 C CNN
F 2 "LEDs:LED_0805" H 4850 7300 50  0001 C CNN
F 3 "" H 4850 7300 50  0000 C CNN
	1    4850 7300
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D5
U 1 1 587065F0
P 5150 7300
F 0 "D5" H 5150 7400 50  0000 C CNN
F 1 "LED" H 5150 7200 50  0000 C CNN
F 2 "LEDs:LED_0805" H 5150 7300 50  0001 C CNN
F 3 "" H 5150 7300 50  0000 C CNN
	1    5150 7300
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D6
U 1 1 58706674
P 5450 7300
F 0 "D6" H 5450 7400 50  0000 C CNN
F 1 "LED" H 5450 7200 50  0000 C CNN
F 2 "LEDs:LED_0805" H 5450 7300 50  0001 C CNN
F 3 "" H 5450 7300 50  0000 C CNN
	1    5450 7300
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R8
U 1 1 587066FB
P 4250 6900
F 0 "R8" V 4330 6900 50  0000 C CNN
F 1 "120R" V 4250 6900 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 4180 6900 50  0001 C CNN
F 3 "" H 4250 6900 50  0000 C CNN
	1    4250 6900
	1    0    0    -1  
$EndComp
$Comp
L Device:R R9
U 1 1 58706785
P 4550 6900
F 0 "R9" V 4630 6900 50  0000 C CNN
F 1 "120R" V 4550 6900 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 4480 6900 50  0001 C CNN
F 3 "" H 4550 6900 50  0000 C CNN
	1    4550 6900
	1    0    0    -1  
$EndComp
$Comp
L Device:R R10
U 1 1 58706868
P 4850 6900
F 0 "R10" V 4930 6900 50  0000 C CNN
F 1 "120R" V 4850 6900 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 4780 6900 50  0001 C CNN
F 3 "" H 4850 6900 50  0000 C CNN
	1    4850 6900
	1    0    0    -1  
$EndComp
$Comp
L Device:R R11
U 1 1 587069A4
P 5150 6900
F 0 "R11" V 5230 6900 50  0000 C CNN
F 1 "120R" V 5150 6900 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 5080 6900 50  0001 C CNN
F 3 "" H 5150 6900 50  0000 C CNN
	1    5150 6900
	1    0    0    -1  
$EndComp
$Comp
L Device:R R12
U 1 1 58706A3B
P 5450 6900
F 0 "R12" V 5530 6900 50  0000 C CNN
F 1 "120R" V 5450 6900 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 5380 6900 50  0001 C CNN
F 3 "" H 5450 6900 50  0000 C CNN
	1    5450 6900
	1    0    0    -1  
$EndComp
$Comp
L Device:R R13
U 1 1 5870910A
P 4100 7750
F 0 "R13" V 4180 7750 50  0000 C CNN
F 1 "2k2" V 4100 7750 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 4030 7750 50  0001 C CNN
F 3 "" H 4100 7750 50  0000 C CNN
	1    4100 7750
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR05
U 1 1 58709880
P 4700 8050
F 0 "#PWR05" H 4700 7800 50  0001 C CNN
F 1 "GND" H 4700 7900 50  0000 C CNN
F 2 "" H 4700 8050 50  0000 C CNN
F 3 "" H 4700 8050 50  0000 C CNN
	1    4700 8050
	1    0    0    -1  
$EndComp
$Comp
L tpic:TPIC6B596DW IC1
U 1 1 5A5E9D87
P 3650 5050
F 0 "IC1" H 3350 5650 50  0000 L BNN
F 1 "TPIC6B596DW" H 3350 4450 50  0000 L BNN
F 2 "Housings_SOIC:SOIC-20W_7.5x12.8mm_Pitch1.27mm" H 3650 5200 50  0001 C CNN
F 3 "" H 3650 5050 60  0001 C CNN
	1    3650 5050
	0    -1   -1   0   
$EndComp
$Comp
L tpic:TPIC6B596DW IC2
U 1 1 5A5EA40F
P 5000 5050
F 0 "IC2" H 4700 5650 50  0000 L BNN
F 1 "TPIC6B596DW" H 4700 4450 50  0000 L BNN
F 2 "Housings_SOIC:SOIC-20W_7.5x12.8mm_Pitch1.27mm" H 5000 5200 50  0001 C CNN
F 3 "" H 5000 5050 60  0001 C CNN
	1    5000 5050
	0    -1   -1   0   
$EndComp
$Comp
L tpic:TPIC6B596DW IC3
U 1 1 5A5EA4EE
P 6350 5050
F 0 "IC3" H 6050 5650 50  0000 L BNN
F 1 "TPIC6B596DW" H 6050 4450 50  0000 L BNN
F 2 "Housings_SOIC:SOIC-20W_7.5x12.8mm_Pitch1.27mm" H 6350 5200 50  0001 C CNN
F 3 "" H 6350 5050 60  0001 C CNN
	1    6350 5050
	0    -1   -1   0   
$EndComp
$Comp
L tpic:TPIC6B596DW IC4
U 1 1 5A5EA5A0
P 7700 5050
F 0 "IC4" H 7400 5650 50  0000 L BNN
F 1 "TPIC6B596DW" H 7400 4450 50  0000 L BNN
F 2 "Housings_SOIC:SOIC-20W_7.5x12.8mm_Pitch1.27mm" H 7700 5200 50  0001 C CNN
F 3 "" H 7700 5050 60  0001 C CNN
	1    7700 5050
	0    -1   -1   0   
$EndComp
$Comp
L tpic:TPIC6B596DW IC5
U 1 1 5A5EA64F
P 9000 5050
F 0 "IC5" H 8700 5650 50  0000 L BNN
F 1 "TPIC6B596DW" H 8700 4450 50  0000 L BNN
F 2 "Housings_SOIC:SOIC-20W_7.5x12.8mm_Pitch1.27mm" H 9000 5200 50  0001 C CNN
F 3 "" H 9000 5050 60  0001 C CNN
	1    9000 5050
	0    -1   -1   0   
$EndComp
$Comp
L tpic:TPIC6B596DW IC6
U 1 1 5A5EA7D9
P 10300 5050
F 0 "IC6" H 10000 5650 50  0000 L BNN
F 1 "TPIC6B596DW" H 10000 4450 50  0000 L BNN
F 2 "Housings_SOIC:SOIC-20W_7.5x12.8mm_Pitch1.27mm" H 10300 5200 50  0001 C CNN
F 3 "" H 10300 5050 60  0001 C CNN
	1    10300 5050
	0    -1   -1   0   
$EndComp
$Comp
L tpic:TPIC6B596DW IC7
U 1 1 5A5EA884
P 11600 5050
F 0 "IC7" H 11300 5650 50  0000 L BNN
F 1 "TPIC6B596DW" H 11300 4450 50  0000 L BNN
F 2 "Housings_SOIC:SOIC-20W_7.5x12.8mm_Pitch1.27mm" H 11600 5200 50  0001 C CNN
F 3 "" H 11600 5050 60  0001 C CNN
	1    11600 5050
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R15
U 1 1 5A610E91
P 12400 2250
F 0 "R15" V 12480 2250 50  0000 C CNN
F 1 "16k" V 12400 2250 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 12330 2250 50  0001 C CNN
F 3 "" H 12400 2250 50  0000 C CNN
	1    12400 2250
	1    0    0    -1  
$EndComp
$Comp
L Device:R R14
U 1 1 5A610F51
P 9400 2250
F 0 "R14" V 9480 2250 50  0000 C CNN
F 1 "16k" V 9400 2250 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 9330 2250 50  0001 C CNN
F 3 "" H 9400 2250 50  0000 C CNN
	1    9400 2250
	1    0    0    -1  
$EndComp
$Comp
L Device:C C8
U 1 1 5A61189B
P 11000 9600
F 0 "C8" H 11025 9700 50  0000 L CNN
F 1 "100nF" H 11025 9500 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 11038 9450 50  0001 C CNN
F 3 "" H 11000 9600 50  0000 C CNN
	1    11000 9600
	1    0    0    -1  
$EndComp
$Comp
L IN14_Display-rescue:BC817 Q1
U 1 1 5A936BEA
P 4600 7750
F 0 "Q1" H 4800 7825 50  0000 L CNN
F 1 "BC817" H 4800 7750 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 4800 7675 50  0001 L CIN
F 3 "" H 4600 7750 50  0001 L CNN
	1    4600 7750
	1    0    0    -1  
$EndComp
NoConn ~ 3150 4550
$Comp
L IN14_Display-rescue:Conn_01x07 J1
U 1 1 5AC7C9FC
P 2400 5900
F 0 "J1" H 2400 6300 50  0000 C CNN
F 1 "Conn_01x07" H 2400 5500 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x07_Pitch2.54mm" H 2400 5900 50  0001 C CNN
F 3 "" H 2400 5900 50  0001 C CNN
	1    2400 5900
	-1   0    0    -1  
$EndComp
$Comp
L power:+12V #PWR06
U 1 1 5AC7DB8F
P 4700 6600
F 0 "#PWR06" H 4700 6450 50  0001 C CNN
F 1 "+12V" H 4700 6740 50  0000 C CNN
F 2 "" H 4700 6600 50  0001 C CNN
F 3 "" H 4700 6600 50  0001 C CNN
	1    4700 6600
	1    0    0    -1  
$EndComp
NoConn ~ 10900 2500
$Comp
L Device:R R16
U 1 1 5AC7EB9C
P 6350 2300
F 0 "R16" V 6430 2300 50  0000 C CNN
F 1 "16k" V 6350 2300 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 6280 2300 50  0001 C CNN
F 3 "" H 6350 2300 50  0000 C CNN
	1    6350 2300
	1    0    0    -1  
$EndComp
$Comp
L tpic:TPIC6B596DW IC8
U 1 1 5A5EA948
P 12900 5050
F 0 "IC8" H 12600 5650 50  0000 L BNN
F 1 "TPIC6B596DW" H 12600 4450 50  0000 L BNN
F 2 "Housings_SOIC:SOIC-20W_7.5x12.8mm_Pitch1.27mm" H 12900 5200 50  0001 C CNN
F 3 "" H 12900 5050 60  0001 C CNN
	1    12900 5050
	0    -1   -1   0   
$EndComp
NoConn ~ 11500 2500
$Comp
L power:GND #PWR07
U 1 1 5870B225
P 2750 6300
F 0 "#PWR07" H 2750 6050 50  0001 C CNN
F 1 "GND" H 2750 6150 50  0000 C CNN
F 2 "" H 2750 6300 50  0000 C CNN
F 3 "" H 2750 6300 50  0000 C CNN
	1    2750 6300
	1    0    0    -1  
$EndComp
$Comp
L Device:R R5
U 1 1 586F03EA
P 10500 2250
F 0 "R5" V 10580 2250 50  0000 C CNN
F 1 "2k2" V 10500 2250 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 10430 2250 50  0001 C CNN
F 3 "" H 10500 2250 50  0000 C CNN
	1    10500 2250
	1    0    0    -1  
$EndComp
NoConn ~ 13300 4550
$Comp
L tpic:TPIC6B596DW IC1
U 2 1 5B1D06C3
P 3100 9650
F 0 "IC1" H 2800 10250 50  0000 L BNN
F 1 "TPIC6B596DW" H 2800 9050 50  0000 L BNN
F 2 "tpic-SO20W" H 3100 9800 50  0001 C CNN
F 3 "" H 3100 9650 60  0001 C CNN
	2    3100 9650
	1    0    0    -1  
$EndComp
$Comp
L tpic:TPIC6B596DW IC2
U 2 1 5B1D0E5A
P 3850 9650
F 0 "IC2" H 3550 10250 50  0000 L BNN
F 1 "TPIC6B596DW" H 3550 9050 50  0000 L BNN
F 2 "tpic-SO20W" H 3850 9800 50  0001 C CNN
F 3 "" H 3850 9650 60  0001 C CNN
	2    3850 9650
	1    0    0    -1  
$EndComp
$Comp
L tpic:TPIC6B596DW IC3
U 2 1 5B1D10FF
P 4600 9650
F 0 "IC3" H 4300 10250 50  0000 L BNN
F 1 "TPIC6B596DW" H 4300 9050 50  0000 L BNN
F 2 "tpic-SO20W" H 4600 9800 50  0001 C CNN
F 3 "" H 4600 9650 60  0001 C CNN
	2    4600 9650
	1    0    0    -1  
$EndComp
$Comp
L tpic:TPIC6B596DW IC4
U 2 1 5B1D1182
P 5250 9650
F 0 "IC4" H 4950 10250 50  0000 L BNN
F 1 "TPIC6B596DW" H 4950 9050 50  0000 L BNN
F 2 "tpic-SO20W" H 5250 9800 50  0001 C CNN
F 3 "" H 5250 9650 60  0001 C CNN
	2    5250 9650
	1    0    0    -1  
$EndComp
$Comp
L tpic:TPIC6B596DW IC5
U 2 1 5B1D1219
P 5950 9650
F 0 "IC5" H 5650 10250 50  0000 L BNN
F 1 "TPIC6B596DW" H 5650 9050 50  0000 L BNN
F 2 "tpic-SO20W" H 5950 9800 50  0001 C CNN
F 3 "" H 5950 9650 60  0001 C CNN
	2    5950 9650
	1    0    0    -1  
$EndComp
$Comp
L tpic:TPIC6B596DW IC6
U 2 1 5B1D12C0
P 6650 9650
F 0 "IC6" H 6350 10250 50  0000 L BNN
F 1 "TPIC6B596DW" H 6350 9050 50  0000 L BNN
F 2 "tpic-SO20W" H 6650 9800 50  0001 C CNN
F 3 "" H 6650 9650 60  0001 C CNN
	2    6650 9650
	1    0    0    -1  
$EndComp
$Comp
L tpic:TPIC6B596DW IC7
U 2 1 5B1D1408
P 7300 9650
F 0 "IC7" H 7000 10250 50  0000 L BNN
F 1 "TPIC6B596DW" H 7000 9050 50  0000 L BNN
F 2 "tpic-SO20W" H 7300 9800 50  0001 C CNN
F 3 "" H 7300 9650 60  0001 C CNN
	2    7300 9650
	1    0    0    -1  
$EndComp
$Comp
L tpic:TPIC6B596DW IC8
U 2 1 5B1D14A1
P 7950 9650
F 0 "IC8" H 7650 10250 50  0000 L BNN
F 1 "TPIC6B596DW" H 7650 9050 50  0000 L BNN
F 2 "tpic-SO20W" H 7950 9800 50  0001 C CNN
F 3 "" H 7950 9650 60  0001 C CNN
	2    7950 9650
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR08
U 1 1 5B1D1809
P 3100 8850
F 0 "#PWR08" H 3100 8700 50  0001 C CNN
F 1 "VCC" H 3100 9000 50  0000 C CNN
F 2 "" H 3100 8850 50  0000 C CNN
F 3 "" H 3100 8850 50  0000 C CNN
	1    3100 8850
	1    0    0    -1  
$EndComp
Wire Wire Line
	3450 5550 3450 5900
Wire Wire Line
	3750 5550 3750 5800
Wire Wire Line
	2600 5800 3750 5800
Wire Wire Line
	13000 5800 13000 5550
Wire Wire Line
	4800 5900 4800 5550
Connection ~ 4800 5900
Wire Wire Line
	5100 5800 5100 5550
Connection ~ 5100 5800
Wire Wire Line
	6150 5900 6150 5550
Connection ~ 6150 5900
Wire Wire Line
	6450 5800 6450 5550
Connection ~ 6450 5800
Wire Wire Line
	7500 5900 7500 5550
Connection ~ 7500 5900
Wire Wire Line
	7800 5550 7800 5800
Connection ~ 7800 5800
Wire Wire Line
	8800 5900 8800 5550
Connection ~ 8800 5900
Wire Wire Line
	9100 5550 9100 5800
Connection ~ 9100 5800
Wire Wire Line
	10100 5900 10100 5550
Connection ~ 10100 5900
Wire Wire Line
	10400 5550 10400 5800
Connection ~ 10400 5800
Wire Wire Line
	11400 5900 11400 5550
Connection ~ 11400 5900
Wire Wire Line
	11700 5550 11700 5800
Connection ~ 11700 5800
Wire Wire Line
	12000 2500 12000 2400
Wire Wire Line
	10500 2500 10500 2400
Wire Wire Line
	9000 2500 9000 2400
Wire Wire Line
	7500 2450 7500 2500
Wire Wire Line
	5950 2450 5950 2500
Wire Wire Line
	4400 2450 4400 2550
Wire Wire Line
	7500 1950 7500 2150
Wire Wire Line
	5950 1950 5950 2150
Wire Wire Line
	4400 2150 4400 1950
Connection ~ 4400 1950
Wire Wire Line
	8600 9450 8600 9350
Wire Wire Line
	8600 9350 8950 9350
Wire Wire Line
	9650 9300 9650 9350
Wire Wire Line
	10700 9350 10700 9450
Connection ~ 9650 9350
Wire Wire Line
	8950 9450 8950 9350
Connection ~ 8950 9350
Wire Wire Line
	9300 9450 9300 9350
Connection ~ 9300 9350
Wire Wire Line
	10000 9450 10000 9350
Connection ~ 10000 9350
Wire Wire Line
	10350 9450 10350 9350
Connection ~ 10350 9350
Wire Wire Line
	8600 9750 8600 9850
Wire Wire Line
	8600 9850 8950 9850
Wire Wire Line
	9650 9750 9650 9850
Wire Wire Line
	10700 9850 10700 9750
Connection ~ 9650 9850
Wire Wire Line
	8950 9750 8950 9850
Connection ~ 8950 9850
Wire Wire Line
	9300 9750 9300 9850
Connection ~ 9300 9850
Wire Wire Line
	10000 9750 10000 9850
Connection ~ 10000 9850
Wire Wire Line
	10350 9750 10350 9850
Connection ~ 10350 9850
Connection ~ 3450 5900
Wire Wire Line
	4700 6700 4700 6600
Wire Wire Line
	3100 6700 3950 6700
Wire Wire Line
	3950 6700 3950 6750
Wire Wire Line
	5450 6700 5450 6750
Connection ~ 4700 6700
Wire Wire Line
	4250 6750 4250 6700
Connection ~ 4250 6700
Wire Wire Line
	4550 6750 4550 6700
Connection ~ 4550 6700
Wire Wire Line
	4850 6750 4850 6700
Connection ~ 4850 6700
Wire Wire Line
	5150 6750 5150 6700
Connection ~ 5150 6700
Wire Wire Line
	3950 7050 3950 7150
Wire Wire Line
	4250 7050 4250 7150
Wire Wire Line
	4550 7050 4550 7150
Wire Wire Line
	4850 7050 4850 7150
Wire Wire Line
	5150 7050 5150 7150
Wire Wire Line
	5450 7050 5450 7150
Wire Wire Line
	3950 7450 3950 7500
Wire Wire Line
	3950 7500 4250 7500
Wire Wire Line
	4700 7500 4700 7550
Wire Wire Line
	5450 7500 5450 7450
Connection ~ 4700 7500
Wire Wire Line
	4250 7450 4250 7500
Connection ~ 4250 7500
Wire Wire Line
	4550 7450 4550 7500
Connection ~ 4550 7500
Wire Wire Line
	4850 7450 4850 7500
Connection ~ 4850 7500
Wire Wire Line
	5150 7450 5150 7500
Connection ~ 5150 7500
Wire Wire Line
	4250 7750 4400 7750
Wire Wire Line
	4700 8050 4700 7950
Connection ~ 3750 5800
Wire Wire Line
	3000 7750 3950 7750
Wire Wire Line
	3200 2050 3250 2050
Wire Wire Line
	3250 2050 3250 2150
Wire Wire Line
	11000 9850 11000 9750
Connection ~ 10700 9850
Wire Wire Line
	11000 9350 11000 9450
Connection ~ 10700 9350
Wire Wire Line
	12400 4550 12400 4500
Wire Wire Line
	12400 4500 12200 4500
Wire Wire Line
	12200 4500 12200 5600
Wire Wire Line
	12200 5600 11100 5600
Wire Wire Line
	11100 5600 11100 5550
Wire Wire Line
	11100 4500 11100 4550
Wire Wire Line
	10900 4500 11100 4500
Wire Wire Line
	10900 4500 10900 5600
Wire Wire Line
	10900 5600 9800 5600
Wire Wire Line
	9800 5600 9800 5550
Wire Wire Line
	9800 4500 9800 4550
Wire Wire Line
	9600 4500 9800 4500
Wire Wire Line
	9600 4500 9600 5600
Wire Wire Line
	9600 5600 8500 5600
Wire Wire Line
	8500 5600 8500 5550
Wire Wire Line
	12400 5550 12400 6000
Wire Wire Line
	8500 4550 8500 4500
Wire Wire Line
	8500 4500 8300 4500
Wire Wire Line
	8300 4500 8300 5600
Wire Wire Line
	8300 5600 7200 5600
Wire Wire Line
	7200 5600 7200 5550
Wire Wire Line
	7200 4550 7200 4500
Wire Wire Line
	7200 4500 7000 4500
Wire Wire Line
	7000 4500 7000 5600
Wire Wire Line
	7000 5600 5850 5600
Wire Wire Line
	5850 5600 5850 5550
Wire Wire Line
	5850 4550 5850 4500
Wire Wire Line
	5850 4500 5650 4500
Wire Wire Line
	5650 4500 5650 5600
Wire Wire Line
	5650 5600 4500 5600
Wire Wire Line
	4500 5600 4500 5550
Wire Wire Line
	4500 4550 4500 4500
Wire Wire Line
	4500 4500 4300 4500
Wire Wire Line
	4300 4500 4300 5650
Wire Wire Line
	4300 5650 3150 5650
Wire Wire Line
	3150 5650 3150 5550
Wire Wire Line
	12400 2500 12400 2400
Wire Wire Line
	9400 2500 9400 2400
Wire Wire Line
	6350 2500 6350 2450
Wire Wire Line
	6350 1600 6350 2150
Connection ~ 3950 6700
Wire Wire Line
	3100 5600 3100 6700
Wire Wire Line
	2600 5600 3100 5600
Wire Wire Line
	10700 3200 10700 4550
Wire Wire Line
	10600 3200 10600 4550
Wire Wire Line
	10500 3200 10500 4550
Wire Wire Line
	10400 3200 10400 4550
Wire Wire Line
	9400 3200 9400 4550
Wire Wire Line
	9300 3200 9300 4550
Wire Wire Line
	9200 3200 9200 4550
Wire Wire Line
	9100 3200 9100 4550
Wire Wire Line
	7900 3200 7900 4550
Wire Wire Line
	7800 3200 7800 4550
Wire Wire Line
	9400 1700 9400 2100
Wire Wire Line
	12000 1950 12000 2100
Wire Wire Line
	10500 1950 10500 2100
Connection ~ 10500 1950
Wire Wire Line
	9000 1950 9000 2100
Connection ~ 9000 1950
Connection ~ 7500 1950
Connection ~ 5950 1950
Wire Wire Line
	3350 3250 3900 3250
Wire Wire Line
	3450 3400 4000 3400
Wire Wire Line
	4000 3400 4000 3250
Wire Wire Line
	3550 3500 4100 3500
Wire Wire Line
	4100 3500 4100 3250
Wire Wire Line
	3650 3600 4200 3600
Wire Wire Line
	4200 3600 4200 3250
Wire Wire Line
	3750 3700 4300 3700
Wire Wire Line
	4300 3700 4300 3250
Wire Wire Line
	3850 3800 4400 3800
Wire Wire Line
	4400 3800 4400 3250
Wire Wire Line
	3950 3900 4500 3900
Wire Wire Line
	4500 3900 4500 3250
Wire Wire Line
	4050 4000 4600 4000
Wire Wire Line
	4600 4000 4600 3250
Wire Wire Line
	4700 4550 4700 3250
Wire Wire Line
	4800 4550 4800 3250
Wire Wire Line
	4900 4550 4900 3200
Wire Wire Line
	4900 3200 5450 3200
Wire Wire Line
	5000 4550 5000 3300
Wire Wire Line
	5000 3300 5550 3300
Wire Wire Line
	5550 3300 5550 3200
Wire Wire Line
	5100 4550 5100 3400
Wire Wire Line
	5100 3400 5650 3400
Wire Wire Line
	5650 3400 5650 3200
Wire Wire Line
	5200 4550 5200 3500
Wire Wire Line
	5200 3500 5750 3500
Wire Wire Line
	5750 3500 5750 3200
Wire Wire Line
	5300 4550 5300 3600
Wire Wire Line
	5300 3600 5850 3600
Wire Wire Line
	5850 3600 5850 3200
Wire Wire Line
	5400 4550 5400 3700
Wire Wire Line
	5400 3700 5950 3700
Wire Wire Line
	5950 3700 5950 3200
Wire Wire Line
	6050 4550 6050 3200
Wire Wire Line
	6150 4550 6150 3200
Wire Wire Line
	6250 4550 6250 3200
Wire Wire Line
	6350 4550 6350 3200
Wire Wire Line
	6450 4550 6450 3200
Wire Wire Line
	6450 3200 7000 3200
Wire Wire Line
	6550 4550 6550 3300
Wire Wire Line
	6550 3300 7100 3300
Wire Wire Line
	7100 3300 7100 3200
Wire Wire Line
	6650 4550 6650 3400
Wire Wire Line
	6650 3400 7200 3400
Wire Wire Line
	7200 3400 7200 3200
Wire Wire Line
	6750 4550 6750 3500
Wire Wire Line
	6750 3500 7300 3500
Wire Wire Line
	7300 3500 7300 3200
Wire Wire Line
	7400 4550 7400 3200
Wire Wire Line
	7500 4550 7500 3200
Wire Wire Line
	7600 4550 7600 3200
Wire Wire Line
	7700 4550 7700 3200
Wire Wire Line
	8000 4550 8000 3200
Wire Wire Line
	8000 3200 8500 3200
Wire Wire Line
	8100 4550 8100 3300
Wire Wire Line
	8100 3300 8600 3300
Wire Wire Line
	8600 3300 8600 3200
Wire Wire Line
	8700 4550 8700 3200
Wire Wire Line
	8800 4550 8800 3200
Wire Wire Line
	8900 3200 8900 4550
Wire Wire Line
	9000 3200 9000 4550
Wire Wire Line
	10000 4550 10000 3200
Wire Wire Line
	10100 3200 10100 4550
Wire Wire Line
	10200 4550 10200 3200
Wire Wire Line
	10300 3200 10300 4550
Wire Wire Line
	11300 4550 11300 3350
Wire Wire Line
	11300 3350 10800 3350
Wire Wire Line
	10800 3350 10800 3200
Wire Wire Line
	10900 3200 10900 3250
Wire Wire Line
	10900 3250 11400 3250
Wire Wire Line
	11400 3250 11400 4550
Wire Wire Line
	11500 4550 11500 3200
Wire Wire Line
	11600 3200 11600 4550
Wire Wire Line
	11700 4550 11700 3200
Wire Wire Line
	11800 3200 11800 4550
Wire Wire Line
	11900 3200 11900 4550
Wire Wire Line
	12000 3200 12000 4550
Wire Wire Line
	12600 4550 12600 3550
Wire Wire Line
	12600 3550 12100 3550
Wire Wire Line
	12100 3550 12100 3200
Wire Wire Line
	12200 3200 12200 3450
Wire Wire Line
	12200 3450 12700 3450
Wire Wire Line
	12700 3450 12700 4550
Wire Wire Line
	12300 3200 12300 3350
Wire Wire Line
	12300 3350 12800 3350
Wire Wire Line
	12800 3350 12800 4550
Wire Wire Line
	12400 3200 12400 3250
Wire Wire Line
	12400 3250 12900 3250
Wire Wire Line
	12900 3250 12900 4550
Wire Wire Line
	3350 3250 3350 4550
Wire Wire Line
	3450 4550 3450 3400
Wire Wire Line
	3550 4550 3550 3500
Wire Wire Line
	3650 4550 3650 3600
Wire Wire Line
	3750 4550 3750 3700
Wire Wire Line
	3850 4550 3850 3800
Wire Wire Line
	3950 4550 3950 3900
Wire Wire Line
	4050 4550 4050 4000
Wire Wire Line
	12400 2100 12400 1800
Wire Wire Line
	3200 1950 4400 1950
Wire Wire Line
	3100 8850 3100 8900
Wire Wire Line
	3100 8900 3850 8900
Wire Wire Line
	7950 8900 7950 8950
Connection ~ 3100 8900
Wire Wire Line
	3850 8950 3850 8900
Connection ~ 3850 8900
Wire Wire Line
	4600 8950 4600 8900
Connection ~ 4600 8900
Wire Wire Line
	5250 8950 5250 8900
Connection ~ 5250 8900
Wire Wire Line
	5950 8950 5950 8900
Connection ~ 5950 8900
Wire Wire Line
	7300 8950 7300 8900
Connection ~ 7300 8900
$Comp
L power:GND #PWR09
U 1 1 5B1D2A4E
P 2900 10500
F 0 "#PWR09" H 2900 10250 50  0001 C CNN
F 1 "GND" H 2900 10350 50  0000 C CNN
F 2 "" H 2900 10500 50  0000 C CNN
F 3 "" H 2900 10500 50  0000 C CNN
	1    2900 10500
	1    0    0    -1  
$EndComp
Wire Wire Line
	2900 10350 2900 10400
Wire Wire Line
	8150 10400 8150 10350
Connection ~ 2900 10400
Wire Wire Line
	7950 10350 7950 10400
Connection ~ 7950 10400
Wire Wire Line
	7750 10350 7750 10400
Connection ~ 7750 10400
Wire Wire Line
	7500 10350 7500 10400
Connection ~ 7500 10400
Wire Wire Line
	7300 10350 7300 10400
Connection ~ 7300 10400
Wire Wire Line
	7100 10350 7100 10400
Connection ~ 7100 10400
Wire Wire Line
	6850 10350 6850 10400
Connection ~ 6850 10400
Wire Wire Line
	6650 10350 6650 10400
Connection ~ 6650 10400
Wire Wire Line
	6450 10350 6450 10400
Connection ~ 6450 10400
Wire Wire Line
	5950 10350 5950 10400
Connection ~ 5950 10400
Wire Wire Line
	5750 10350 5750 10400
Connection ~ 5750 10400
Wire Wire Line
	5450 10350 5450 10400
Connection ~ 5450 10400
Wire Wire Line
	5250 10350 5250 10400
Connection ~ 5250 10400
Wire Wire Line
	5050 10350 5050 10400
Connection ~ 5050 10400
Wire Wire Line
	4800 10350 4800 10400
Connection ~ 4800 10400
Wire Wire Line
	4600 10350 4600 10400
Connection ~ 4600 10400
Wire Wire Line
	4400 10350 4400 10400
Connection ~ 4400 10400
Wire Wire Line
	4050 10350 4050 10400
Connection ~ 4050 10400
Wire Wire Line
	3850 10350 3850 10400
Connection ~ 3850 10400
Wire Wire Line
	3650 10350 3650 10400
Connection ~ 3650 10400
Wire Wire Line
	3300 10350 3300 10400
Connection ~ 3300 10400
Wire Wire Line
	3100 10350 3100 10400
Connection ~ 3100 10400
Wire Wire Line
	6650 8950 6650 8900
Connection ~ 6650 8900
Wire Wire Line
	3000 5700 3000 7750
Wire Wire Line
	12400 1800 13000 1800
Wire Wire Line
	13000 1800 13000 4550
Wire Wire Line
	9400 1700 13100 1700
Wire Wire Line
	13100 1700 13100 4550
Wire Wire Line
	6350 1600 13200 1600
Wire Wire Line
	13200 1600 13200 4550
Wire Wire Line
	3000 5700 2600 5700
Wire Wire Line
	2600 5900 3450 5900
Wire Wire Line
	2600 6100 2750 6100
Wire Wire Line
	12400 6000 2600 6000
Wire Wire Line
	12700 5900 12700 5550
Wire Wire Line
	2650 5450 2650 6200
Connection ~ 2650 6200
Wire Wire Line
	4050 5550 4050 6100
Connection ~ 4050 6100
Wire Wire Line
	3350 5550 3350 6200
Connection ~ 3350 6200
Wire Wire Line
	2750 6300 2750 6100
Connection ~ 2750 6100
Wire Wire Line
	13300 6100 13300 5550
Wire Wire Line
	12600 6200 12600 5550
Wire Wire Line
	2600 6200 2650 6200
Wire Wire Line
	12000 5550 12000 6100
Connection ~ 12000 6100
Wire Wire Line
	11300 5550 11300 6200
Connection ~ 11300 6200
Wire Wire Line
	10700 5550 10700 6100
Connection ~ 10700 6100
Wire Wire Line
	10000 5550 10000 6200
Connection ~ 10000 6200
Wire Wire Line
	9400 5550 9400 6100
Connection ~ 9400 6100
Wire Wire Line
	8700 5550 8700 6200
Connection ~ 8700 6200
Wire Wire Line
	8100 5550 8100 6100
Connection ~ 8100 6100
Wire Wire Line
	7400 5550 7400 6200
Connection ~ 7400 6200
Wire Wire Line
	6750 5550 6750 6100
Connection ~ 6750 6100
Wire Wire Line
	6050 5550 6050 6200
Connection ~ 6050 6200
Wire Wire Line
	5400 5550 5400 6100
Connection ~ 5400 6100
Wire Wire Line
	4700 5550 4650 5550
Wire Wire Line
	4650 5550 4650 6200
Connection ~ 4650 6200
Wire Wire Line
	6150 10350 6150 10400
Connection ~ 6150 10400
Wire Wire Line
	2900 10400 3100 10400
Wire Wire Line
	4800 5900 6150 5900
Wire Wire Line
	5100 5800 6450 5800
Wire Wire Line
	6150 5900 7500 5900
Wire Wire Line
	6450 5800 7800 5800
Wire Wire Line
	7500 5900 8800 5900
Wire Wire Line
	7800 5800 9100 5800
Wire Wire Line
	8800 5900 10100 5900
Wire Wire Line
	9100 5800 10400 5800
Wire Wire Line
	10100 5900 11400 5900
Wire Wire Line
	10400 5800 11700 5800
Wire Wire Line
	11400 5900 12700 5900
Wire Wire Line
	11700 5800 13000 5800
Wire Wire Line
	4400 1950 5950 1950
Wire Wire Line
	9650 9350 10000 9350
Wire Wire Line
	9650 9350 9650 9450
Wire Wire Line
	8950 9350 9300 9350
Wire Wire Line
	9300 9350 9650 9350
Wire Wire Line
	10000 9350 10350 9350
Wire Wire Line
	10350 9350 10700 9350
Wire Wire Line
	9650 9850 10000 9850
Wire Wire Line
	9650 9850 9650 9900
Wire Wire Line
	8950 9850 9300 9850
Wire Wire Line
	9300 9850 9650 9850
Wire Wire Line
	10000 9850 10350 9850
Wire Wire Line
	10350 9850 10700 9850
Wire Wire Line
	3450 5900 4800 5900
Wire Wire Line
	4700 6700 4850 6700
Wire Wire Line
	4250 6700 4550 6700
Wire Wire Line
	4550 6700 4700 6700
Wire Wire Line
	4850 6700 5150 6700
Wire Wire Line
	5150 6700 5450 6700
Wire Wire Line
	4700 7500 4850 7500
Wire Wire Line
	4250 7500 4550 7500
Wire Wire Line
	4550 7500 4700 7500
Wire Wire Line
	4850 7500 5150 7500
Wire Wire Line
	5150 7500 5450 7500
Wire Wire Line
	3750 5800 5100 5800
Wire Wire Line
	10700 9850 11000 9850
Wire Wire Line
	10700 9350 11000 9350
Wire Wire Line
	3950 6700 4250 6700
Wire Wire Line
	10500 1950 12000 1950
Wire Wire Line
	9000 1950 10500 1950
Wire Wire Line
	7500 1950 9000 1950
Wire Wire Line
	5950 1950 7500 1950
Wire Wire Line
	3100 8900 3100 8950
Wire Wire Line
	3850 8900 4600 8900
Wire Wire Line
	4600 8900 5250 8900
Wire Wire Line
	5250 8900 5950 8900
Wire Wire Line
	5950 8900 6650 8900
Wire Wire Line
	7300 8900 7950 8900
Wire Wire Line
	2900 10400 2900 10500
Wire Wire Line
	7950 10400 8150 10400
Wire Wire Line
	7750 10400 7950 10400
Wire Wire Line
	7500 10400 7750 10400
Wire Wire Line
	7300 10400 7500 10400
Wire Wire Line
	7100 10400 7300 10400
Wire Wire Line
	6850 10400 7100 10400
Wire Wire Line
	6650 10400 6850 10400
Wire Wire Line
	6450 10400 6650 10400
Wire Wire Line
	5950 10400 6150 10400
Wire Wire Line
	5750 10400 5950 10400
Wire Wire Line
	5450 10400 5750 10400
Wire Wire Line
	5250 10400 5450 10400
Wire Wire Line
	5050 10400 5250 10400
Wire Wire Line
	4800 10400 5050 10400
Wire Wire Line
	4600 10400 4800 10400
Wire Wire Line
	4400 10400 4600 10400
Wire Wire Line
	4050 10400 4400 10400
Wire Wire Line
	3850 10400 4050 10400
Wire Wire Line
	3650 10400 3850 10400
Wire Wire Line
	3300 10400 3650 10400
Wire Wire Line
	3100 10400 3300 10400
Wire Wire Line
	6650 8900 7300 8900
Wire Wire Line
	2650 6200 3350 6200
Wire Wire Line
	4050 6100 5400 6100
Wire Wire Line
	3350 6200 4650 6200
Wire Wire Line
	2750 6100 4050 6100
Wire Wire Line
	12000 6100 13300 6100
Wire Wire Line
	11300 6200 12600 6200
Wire Wire Line
	10700 6100 12000 6100
Wire Wire Line
	10000 6200 11300 6200
Wire Wire Line
	9400 6100 10700 6100
Wire Wire Line
	8700 6200 10000 6200
Wire Wire Line
	8100 6100 9400 6100
Wire Wire Line
	7400 6200 8700 6200
Wire Wire Line
	6750 6100 8100 6100
Wire Wire Line
	6050 6200 7400 6200
Wire Wire Line
	5400 6100 6750 6100
Wire Wire Line
	4650 6200 6050 6200
Wire Wire Line
	6150 10400 6450 10400
$EndSCHEMATC
