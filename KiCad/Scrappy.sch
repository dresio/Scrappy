EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 2
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Sheet
S 3350 3700 550  250 
U 613D21F8
F0 "5V_Reg" 50
F1 "5V_Reg.sch" 50
F2 "V_In" I L 3350 3800 50 
F3 "V_Out" I R 3900 3800 50 
$EndSheet
$Comp
L SamacSys_Parts:1888687 J1
U 1 1 613DE00D
P 2900 3800
F 0 "J1" H 3192 4065 50  0000 C CNN
F 1 "1888687" H 3192 3974 50  0000 C CNN
F 2 "SHDR2W90P0X508_1X2_1016X950X1500P" H 3550 3900 50  0001 L CNN
F 3 "https://componentsearchengine.com/Datasheets/1/1888687.pdf" H 3550 3800 50  0001 L CNN
F 4 "Phoenix Contact COMBICON MKDSN Series 5.08mm Pitch Straight PCB Terminal Block with Screw Termination, Through Hole" H 3550 3700 50  0001 L CNN "Description"
F 5 "" H 3550 3600 50  0001 L CNN "Height"
F 6 "651-1888687" H 3550 3500 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.digikey.com/en/products/detail/phoenix-contact/1888687/2511093" H 3550 3400 50  0001 L CNN "Digi-Key Link"
	1    2900 3800
	-1   0    0    -1  
$EndComp
Wire Wire Line
	2900 3900 3050 3900
Wire Wire Line
	3050 3900 3050 4300
$Comp
L power:GND #PWR0101
U 1 1 613E36D1
P 3050 4300
F 0 "#PWR0101" H 3050 4050 50  0001 C CNN
F 1 "GND" H 3055 4127 50  0000 C CNN
F 2 "" H 3050 4300 50  0001 C CNN
F 3 "" H 3050 4300 50  0001 C CNN
	1    3050 4300
	1    0    0    -1  
$EndComp
$Comp
L SamacSys_Parts:2-215309-0 J2
U 1 1 613E71D7
P 5850 4300
F 0 "J2" H 6080 4396 50  0000 L CNN
F 1 "2-215309-0" H 6080 4305 50  0000 L CNN
F 2 "TE_2-215309-0" H 5850 4300 50  0001 L BNN
F 3 "" H 5850 4300 50  0001 L BNN
F 4 "2-215309-0" H 5850 4300 50  0001 L BNN "Comment"
F 5 "Compliant" H 5850 4300 50  0001 L BNN "EU_RoHS_Compliance"
F 6 "https://www.digikey.com/en/products/detail/te-connectivity-amp-connectors/2-215309-0/2278517" H 5850 4300 50  0001 C CNN "Digi-Key Link"
	1    5850 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	5450 2400 5200 2400
Wire Wire Line
	5200 2400 5200 2600
Wire Wire Line
	5200 2600 5450 2600
Wire Wire Line
	5200 2600 5200 3800
Connection ~ 5200 2600
Wire Wire Line
	5450 3100 5350 3100
Wire Wire Line
	5350 3100 5350 2800
Wire Wire Line
	5350 2800 5450 2800
Wire Wire Line
	5450 3600 5350 3600
Wire Wire Line
	5350 3600 5350 3100
Connection ~ 5350 3100
Wire Wire Line
	5450 4200 5350 4200
Wire Wire Line
	5350 4200 5350 3600
Connection ~ 5350 3600
Wire Wire Line
	5450 4700 5350 4700
Wire Wire Line
	5350 4700 5350 4200
Connection ~ 5350 4200
Wire Wire Line
	5450 5200 5350 5200
Wire Wire Line
	5350 5200 5350 4700
Connection ~ 5350 4700
Wire Wire Line
	5450 5600 5350 5600
Wire Wire Line
	5350 5600 5350 5200
Connection ~ 5350 5200
Wire Wire Line
	5450 6100 5350 6100
Wire Wire Line
	5350 6100 5350 5600
Connection ~ 5350 5600
Wire Wire Line
	5350 2800 5350 2150
Connection ~ 5350 2800
$Comp
L power:GND #PWR0102
U 1 1 613EAB76
P 5350 2150
F 0 "#PWR0102" H 5350 1900 50  0001 C CNN
F 1 "GND" H 5355 1977 50  0000 C CNN
F 2 "" H 5350 2150 50  0001 C CNN
F 3 "" H 5350 2150 50  0001 C CNN
	1    5350 2150
	-1   0    0    1   
$EndComp
Wire Wire Line
	3900 3800 5200 3800
Wire Wire Line
	2900 3800 3350 3800
$EndSCHEMATC
