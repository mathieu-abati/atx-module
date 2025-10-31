EESchema Schematic File Version 4
LIBS:ATXModule_test-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 2
Title "RaspberryPi ATX PSU control module"
Date "Feb. 28 2019"
Rev "1.0"
Comp "Mathieu ABATI & Patrick ABATI - https://sitelec.org"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Device:R R1
U 1 1 5C71B484
P 4400 3750
F 0 "R1" H 4470 3796 50  0000 L CNN
F 1 "10k" H 4470 3705 50  0000 L CNN
F 2 "" V 4330 3750 50  0001 C CNN
F 3 "~" H 4400 3750 50  0001 C CNN
	1    4400 3750
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 5C71B4EE
P 4400 4250
F 0 "R2" H 4470 4296 50  0000 L CNN
F 1 "18k" H 4470 4205 50  0000 L CNN
F 2 "" V 4330 4250 50  0001 C CNN
F 3 "~" H 4400 4250 50  0001 C CNN
	1    4400 4250
	1    0    0    -1  
$EndComp
$Comp
L Device:R R4
U 1 1 5C71B539
P 6400 3550
F 0 "R4" V 6193 3550 50  0000 C CNN
F 1 "100k" V 6284 3550 50  0000 C CNN
F 2 "" V 6330 3550 50  0001 C CNN
F 3 "~" H 6400 3550 50  0001 C CNN
	1    6400 3550
	0    1    1    0   
$EndComp
Wire Wire Line
	6250 3550 6100 3550
Wire Wire Line
	6100 3550 6100 3850
Connection ~ 6100 3550
Wire Wire Line
	4400 3550 4400 3600
$Comp
L Device:CP1 C1
U 1 1 5C71ECAD
P 4950 4250
F 0 "C1" H 5065 4296 50  0000 L CNN
F 1 "1u" H 5065 4205 50  0000 L CNN
F 2 "" H 4950 4250 50  0001 C CNN
F 3 "~" H 4950 4250 50  0001 C CNN
	1    4950 4250
	1    0    0    -1  
$EndComp
$Comp
L Device:CP1 C2
U 1 1 5C71ED3D
P 6100 4000
F 0 "C2" H 6215 4046 50  0000 L CNN
F 1 "47u" H 6215 3955 50  0000 L CNN
F 2 "" H 6100 4000 50  0001 C CNN
F 3 "~" H 6100 4000 50  0001 C CNN
	1    6100 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	5500 3200 5500 3800
Wire Wire Line
	6950 3200 5500 3200
$Comp
L Device:R R3
U 1 1 5C72293D
P 4950 3750
F 0 "R3" H 5020 3796 50  0000 L CNN
F 1 "10k" H 5020 3705 50  0000 L CNN
F 2 "" V 4880 3750 50  0001 C CNN
F 3 "~" H 4950 3750 50  0001 C CNN
	1    4950 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	4400 3550 6100 3550
Wire Wire Line
	4950 3600 4950 3350
Wire Wire Line
	4400 3900 4400 4000
Wire Wire Line
	4100 4000 4400 4000
Connection ~ 4400 4000
Wire Wire Line
	4400 4000 4400 4100
Wire Wire Line
	4100 3350 4950 3350
Wire Wire Line
	4950 4000 4950 3900
Wire Wire Line
	4950 4100 4950 4000
Connection ~ 4950 4000
Wire Wire Line
	4950 4000 5200 4000
$Comp
L power:GND #PWR03
U 1 1 5C7329ED
P 7600 4500
F 0 "#PWR03" H 7600 4250 50  0001 C CNN
F 1 "GND" H 7605 4327 50  0000 C CNN
F 2 "" H 7600 4500 50  0001 C CNN
F 3 "" H 7600 4500 50  0001 C CNN
	1    7600 4500
	1    0    0    -1  
$EndComp
$Comp
L Device:Q_NPN_CBE Q1
U 1 1 5C73E165
P 5400 4000
F 0 "Q1" H 5591 4046 50  0000 L CNN
F 1 "2N2222A" H 5591 3955 50  0000 L CNN
F 2 "" H 5600 4100 50  0001 C CNN
F 3 "~" H 5400 4000 50  0001 C CNN
F 4 "Q" H 5400 4000 50  0001 C CNN "Spice_Primitive"
F 5 "Q2n2222a" H 5400 4000 50  0001 C CNN "Spice_Model"
F 6 "Y" H 5400 4000 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "models/2N2222A.lib" H 5400 4000 50  0001 C CNN "Spice_Lib_File"
	1    5400 4000
	1    0    0    -1  
$EndComp
$Comp
L Device:Q_NPN_CBE Q2
U 1 1 5C73E244
P 6850 3550
F 0 "Q2" H 7041 3596 50  0000 L CNN
F 1 "2N2222A" H 7041 3505 50  0000 L CNN
F 2 "" H 7050 3650 50  0001 C CNN
F 3 "~" H 6850 3550 50  0001 C CNN
F 4 "Q" H 6850 3550 50  0001 C CNN "Spice_Primitive"
F 5 "Q2n2222a" H 6850 3550 50  0001 C CNN "Spice_Model"
F 6 "Y" H 6850 3550 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "models/2N2222A.lib" H 6850 3550 50  0001 C CNN "Spice_Lib_File"
	1    6850 3550
	1    0    0    -1  
$EndComp
Text GLabel 7550 3200 2    50   Input ~ 0
ATX_PS-ON
Text GLabel 7550 3000 2    50   Input ~ 0
ATX_5VSB
Text GLabel 4100 3350 0    50   Input ~ 0
RPI_UART0-TXD
Text GLabel 4100 4000 0    50   Output ~ 0
RPI_GPIO
Wire Wire Line
	6950 3200 6950 3350
Wire Wire Line
	6950 3750 6950 4500
Wire Wire Line
	4400 4400 4400 4500
Wire Wire Line
	4950 4400 4950 4500
Wire Wire Line
	6100 4150 6100 4500
Wire Wire Line
	6550 3550 6650 3550
Text Notes 3450 3700 0    71   ~ 0
RaspberryPi
Wire Wire Line
	6950 3200 7550 3200
Connection ~ 6950 3200
Wire Wire Line
	6950 4500 7600 4500
Text Notes 7550 3850 0    71   ~ 0
ATX PSU
Wire Notes Line
	7450 4800 7450 2850
Wire Notes Line
	7450 2850 8150 2850
Wire Notes Line
	8150 2850 8150 4800
Wire Notes Line
	8150 4800 7450 4800
Wire Notes Line
	4200 3200 3350 3200
Wire Notes Line
	3350 3200 3350 4150
Wire Notes Line
	3350 4150 4200 4150
Wire Notes Line
	4200 3200 4200 4150
Wire Wire Line
	4950 4500 5500 4500
Wire Wire Line
	5500 4200 5500 4500
Wire Wire Line
	5500 4500 6100 4500
Connection ~ 5500 4500
Wire Wire Line
	6100 4500 6950 4500
Connection ~ 6100 4500
Connection ~ 6950 4500
Wire Wire Line
	6250 3000 7550 3000
Wire Wire Line
	6250 2950 6250 3000
Text GLabel 6250 2950 1    50   Input ~ 0
PWR_SW+
Text GLabel 6100 2950 1    50   Input ~ 0
PWR_SW-
Wire Wire Line
	6100 3550 6100 2950
Connection ~ 4950 4500
Wire Wire Line
	4400 4500 4950 4500
Text Notes 7000 7000 0    31   ~ 0
With an ATX PSU powering a RaspberryPi, this circuit allows to control power ON / OFF from a single posh button.\n\nThe ATX PSU is started once the push button is pressed.\nThe RaspberryPi starts, and automatically sets UART TXD to 3.3V which maintains the ATX PSU ON.\nThe operating system must run a script waiting for 3.3V level on a defined PIO to trigger clean system shutdown.\nOnce the RaspberryPi shutdown is reached, the UART TXD line drops to 0V, which turns-OFF the ATX PSU.\n\nThe RaspberryPi requires to enable UART at startup, by setting enable_uart=1 in config.txt.
$EndSCHEMATC
