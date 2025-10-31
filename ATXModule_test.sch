EESchema Schematic File Version 4
LIBS:ATXModule_test-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 2
Title "RaspberryPi ATX PSU control module - simulation sheet"
Date "Feb. 28 2019"
Rev "1.0"
Comp "Mathieu ABATI & Patrick ABATI - https://sitelec.org"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L power:GND #PWR01
U 1 1 5C74EEDC
P 7650 5050
F 0 "#PWR01" H 7650 4800 50  0001 C CNN
F 1 "GND" H 7655 4877 50  0000 C CNN
F 2 "" H 7650 5050 50  0001 C CNN
F 3 "" H 7650 5050 50  0001 C CNN
	1    7650 5050
	1    0    0    -1  
$EndComp
Text GLabel 7100 4750 0    50   Input ~ 0
ATX_PS-ON
Text Notes 5300 4050 0    50   ~ 0
.tran 1m 20 0
Text GLabel 7200 3300 0    50   Input ~ 0
ATX_5VSB
$Comp
L power:GND #PWR06
U 1 1 5C757FE8
P 3750 3800
F 0 "#PWR06" H 3750 3550 50  0001 C CNN
F 1 "GND" H 3755 3627 50  0000 C CNN
F 2 "" H 3750 3800 50  0001 C CNN
F 3 "" H 3750 3800 50  0001 C CNN
	1    3750 3800
	-1   0    0    -1  
$EndComp
Text GLabel 3950 3300 2    50   Input ~ 0
RPI_UART0-TXD
Text GLabel 4200 4150 2    50   Input ~ 0
RPI_GPIO
$Comp
L Device:R R6
U 1 1 5C758315
P 7100 4500
F 0 "R6" H 7200 4500 50  0000 C CNN
F 1 "10k" H 6984 4500 50  0000 C CNN
F 2 "" V 7030 4500 50  0001 C CNN
F 3 "~" H 7100 4500 50  0001 C CNN
	1    7100 4500
	-1   0    0    1   
$EndComp
$Sheet
S 5350 3400 500  150 
U 5C7584C1
F0 "ATXModule" 50
F1 "ATXModule.sch" 50
$EndSheet
Text GLabel 5850 1800 2    50   Input ~ 0
PWR_SW+
Text GLabel 5850 2200 2    50   Input ~ 0
PWR_SW-
Wire Wire Line
	5850 1800 5550 1800
Wire Wire Line
	5550 2200 5850 2200
$Comp
L power:GND #PWR04
U 1 1 5C7665E0
P 5150 2600
F 0 "#PWR04" H 5150 2350 50  0001 C CNN
F 1 "GND" H 5155 2427 50  0000 C CNN
F 2 "" H 5150 2600 50  0001 C CNN
F 3 "" H 5150 2600 50  0001 C CNN
	1    5150 2600
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5150 2600 5150 2500
Wire Wire Line
	5150 2100 5150 2000
Wire Wire Line
	5150 2000 5250 2000
Text Notes 4900 2950 0    50   ~ 0
Power switch push button simulation
Wire Notes Line
	4800 1650 4800 3050
Wire Notes Line
	4800 3050 6400 3050
Wire Notes Line
	6400 3050 6400 1650
Wire Notes Line
	6400 1650 4800 1650
Wire Wire Line
	3750 3300 3950 3300
Wire Wire Line
	3750 3800 3750 3700
Text Notes 3650 4350 0    50   ~ 0
RaspberyPi simulation
Wire Notes Line
	3450 3150 3450 4450
Wire Notes Line
	3450 4450 4700 4450
Wire Notes Line
	4700 4450 4700 3150
Wire Notes Line
	4700 3150 3450 3150
Wire Wire Line
	7650 4000 7650 3900
$Comp
L power:GND #PWR07
U 1 1 5C757DED
P 7650 4000
F 0 "#PWR07" H 7650 3750 50  0001 C CNN
F 1 "GND" H 7655 3827 50  0000 C CNN
F 2 "" H 7650 4000 50  0001 C CNN
F 3 "" H 7650 4000 50  0001 C CNN
	1    7650 4000
	-1   0    0    -1  
$EndComp
Wire Wire Line
	7200 3300 7650 3300
Wire Wire Line
	7650 5050 7650 4950
Wire Wire Line
	7100 4350 7650 4350
Wire Wire Line
	7100 4750 7100 4650
Wire Notes Line
	8250 3150 8250 5500
Wire Notes Line
	8250 5500 6500 5500
Wire Notes Line
	6500 5500 6500 3150
Wire Notes Line
	6500 3150 8250 3150
Text Notes 7000 5400 0    50   ~ 0
ATX PSU simulation
$Comp
L Device:Q_NPN_CBE Q3
U 1 1 5C76622C
P 5450 2000
F 0 "Q3" H 5641 2046 50  0000 L CNN
F 1 "Q_NPN_CBE" H 5641 1955 50  0000 L CNN
F 2 "" H 5650 2100 50  0001 C CNN
F 3 "~" H 5450 2000 50  0001 C CNN
F 4 "Q" H 5450 2000 50  0001 C CNN "Spice_Primitive"
F 5 "Q2n2222a" H 5450 2000 50  0001 C CNN "Spice_Model"
F 6 "Y" H 5450 2000 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "models/2N2222A.lib" H 5450 2000 50  0001 C CNN "Spice_Lib_File"
	1    5450 2000
	1    0    0    -1  
$EndComp
Text Notes 7000 6850 0    39   ~ 0
Simulation of RaspberryPi ATX PSU control module:\n- push button action to power ON/OFF\n- RaspberryPi running/shutdown by UART TXD level change\n- ATX PSU levels
$Comp
L simulation:VPULSE V2
U 1 1 5C77CE7D
P 5150 2300
F 0 "V2" H 5278 2346 50  0000 L CNN
F 1 "VPULSE" H 5278 2255 50  0000 L CNN
F 2 "" H 5150 2300 50  0001 C CNN
F 3 "" H 5150 2300 50  0001 C CNN
F 4 "V" H 5150 2300 50  0001 C CNN "Spice_Primitive"
F 5 "dc 5 pulse(0 5 4 0 0 1 10)" H 6080 2220 50  0001 C CNN "Spice_Model"
F 6 "Y" H 5150 2300 50  0001 C CNN "Spice_Netlist_Enabled"
	1    5150 2300
	1    0    0    -1  
$EndComp
$Comp
L simulation:VPULSE V1
U 1 1 5C77D00A
P 3750 3500
F 0 "V1" H 3878 3546 50  0000 L CNN
F 1 "VPULSE" H 3878 3455 50  0000 L CNN
F 2 "" H 3750 3500 50  0001 C CNN
F 3 "" H 3750 3500 50  0001 C CNN
F 4 "V" H 3750 3500 50  0001 C CNN "Spice_Primitive"
F 5 "dc 3.3 pulse(0 3.3 6 0 0 10 20)" H 4680 3420 50  0001 C CNN "Spice_Model"
F 6 "Y" H 3750 3500 50  0001 C CNN "Spice_Netlist_Enabled"
	1    3750 3500
	1    0    0    -1  
$EndComp
$Comp
L simulation:VSOURCE V3
U 1 1 5C77D1C4
P 7650 3600
F 0 "V3" H 7878 3646 50  0000 L CNN
F 1 "VSOURCE" H 7878 3555 50  0000 L CNN
F 2 "" H 7650 3600 50  0001 C CNN
F 3 "~" H 7650 3600 50  0001 C CNN
F 4 "V" H 7650 3600 50  0001 C CNN "Spice_Primitive"
F 5 "dc 5" H 7650 3600 50  0001 C CNN "Spice_Model"
F 6 "Y" H 7650 3600 50  0001 C CNN "Spice_Netlist_Enabled"
	1    7650 3600
	1    0    0    -1  
$EndComp
$Comp
L simulation:VSOURCE V4
U 1 1 5C77D310
P 7650 4650
F 0 "V4" H 7878 4696 50  0000 L CNN
F 1 "VSOURCE" H 7878 4605 50  0000 L CNN
F 2 "" H 7650 4650 50  0001 C CNN
F 3 "~" H 7650 4650 50  0001 C CNN
F 4 "V" H 7650 4650 50  0001 C CNN "Spice_Primitive"
F 5 "dc 5" H 7650 4650 50  0001 C CNN "Spice_Model"
F 6 "Y" H 7650 4650 50  0001 C CNN "Spice_Netlist_Enabled"
	1    7650 4650
	1    0    0    -1  
$EndComp
$EndSCHEMATC
