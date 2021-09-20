EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 2
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Wire Wire Line
	6000 3000 6100 3000
Wire Wire Line
	6100 3000 6100 3650
$Comp
L power:GND #PWR0103
U 1 1 613AB161
P 6100 3650
AR Path="/613D21F8/613AB161" Ref="#PWR0103"  Part="1" 
AR Path="/613EB184/613AB161" Ref="#PWR0110"  Part="1" 
F 0 "#PWR0110" H 6100 3400 50  0001 C CNN
F 1 "GND" H 6105 3477 50  0000 C CNN
F 2 "" H 6100 3650 50  0001 C CNN
F 3 "" H 6100 3650 50  0001 C CNN
	1    6100 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	6700 2950 6700 3650
$Comp
L power:GND #PWR0104
U 1 1 613ABB90
P 6700 3650
AR Path="/613D21F8/613ABB90" Ref="#PWR0104"  Part="1" 
AR Path="/613EB184/613ABB90" Ref="#PWR0111"  Part="1" 
F 0 "#PWR0111" H 6700 3400 50  0001 C CNN
F 1 "GND" H 6705 3477 50  0000 C CNN
F 2 "" H 6700 3650 50  0001 C CNN
F 3 "" H 6700 3650 50  0001 C CNN
	1    6700 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	4400 3100 4200 3100
Wire Wire Line
	4200 3100 4200 2250
Wire Wire Line
	6700 2650 6700 2250
Connection ~ 6700 2250
Wire Wire Line
	6700 2250 7300 2250
Wire Wire Line
	4400 3300 4250 3300
Wire Wire Line
	4250 3300 4250 3950
Wire Wire Line
	4250 3950 9550 3950
Wire Wire Line
	9550 3950 9550 2250
Connection ~ 9550 2250
Wire Wire Line
	9550 2250 9800 2250
$Comp
L power:GND #PWR0105
U 1 1 613AD8A0
P 4350 3650
AR Path="/613D21F8/613AD8A0" Ref="#PWR0105"  Part="1" 
AR Path="/613EB184/613AD8A0" Ref="#PWR0112"  Part="1" 
F 0 "#PWR0112" H 4350 3400 50  0001 C CNN
F 1 "GND" H 4355 3477 50  0000 C CNN
F 2 "" H 4350 3650 50  0001 C CNN
F 3 "" H 4350 3650 50  0001 C CNN
	1    4350 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	4400 3400 4350 3400
Wire Wire Line
	4350 3400 4350 3650
Wire Wire Line
	4400 3200 4350 3200
Wire Wire Line
	4350 3200 4350 3400
Connection ~ 4350 3400
Wire Wire Line
	4200 2250 6700 2250
Wire Wire Line
	4400 3000 4100 3000
Wire Wire Line
	4100 3000 4100 2250
Wire Wire Line
	2800 2250 3150 2250
$Comp
L Diode:MBRA340 D1
U 1 1 613A871A
P 6700 2800
AR Path="/613D21F8/613A871A" Ref="D1"  Part="1" 
AR Path="/613EB184/613A871A" Ref="D2"  Part="1" 
F 0 "D2" V 6654 2879 50  0000 L CNN
F 1 "TSSA3U45 R3G" V 6745 2879 50  0000 L CNN
F 2 "Diode_SMD:D_SMA" H 6700 2625 50  0001 C CNN
F 3 "https://www.onsemi.com/pub/Collateral/MBRA340T3-D.PDF" H 6700 2800 50  0001 C CNN
F 4 "https://www.digikey.com/en/products/detail/taiwan-semiconductor-corporation/TSSA3U45-R3G/7360717?s=N4IgTCBcDaICoGUEEEDMBVALAVgAQCVUBxEAXQF8g" V 6700 2800 50  0001 C CNN "Digi-Key Link"
	1    6700 2800
	0    1    1    0   
$EndComp
Wire Wire Line
	8100 2250 8550 2250
$Comp
L SamacSys_Parts:CGA3E2X7R1E104K080AA C4
U 1 1 613BF939
P 9250 2550
AR Path="/613D21F8/613BF939" Ref="C4"  Part="1" 
AR Path="/613EB184/613BF939" Ref="C8"  Part="1" 
F 0 "C8" V 9454 2678 50  0000 L CNN
F 1 "0.1uF" V 9545 2678 50  0000 L CNN
F 2 "CAPC1608X90N" H 9600 2600 50  0001 L CNN
F 3 "https://product.tdk.com/system/files/dam/doc/product/capacitor/ceramic/mlcc/catalog/mlcc_automotive_general_en.pdf" H 9600 2500 50  0001 L CNN
F 4 "TDK 0603 CGA 100nF Ceramic Multilayer Capacitor, 25 V dc, +125C, X7R Dielectric, +/-10%" H 9600 2400 50  0001 L CNN "Description"
F 5 "0.9" H 9600 2300 50  0001 L CNN "Height"
F 6 "445-5667-1-ND" H 9600 2200 50  0001 L CNN "Digi-Key Part Number"
F 7 "https://www.digikey.com/en/products/detail/tdk-corporation/CGA3E2X7R1E104K080AA/2443145" H 9600 2100 50  0001 L CNN "Digi-Key Link"
	1    9250 2550
	0    1    1    0   
$EndComp
$Comp
L SamacSys_Parts:477CKS035M C1
U 1 1 613C361F
P 3150 2550
AR Path="/613D21F8/613C361F" Ref="C1"  Part="1" 
AR Path="/613EB184/613C361F" Ref="C5"  Part="1" 
F 0 "C5" V 3354 2680 50  0000 L CNN
F 1 "470uF" V 3445 2680 50  0000 L CNN
F 2 "CAPPRD525W60D1025H1750" H 3500 2600 50  0001 L CNN
F 3 "https://www.cde.com/resources/catalogs/CKR_CKS.pdf" H 3500 2500 50  0001 L CNN
F 4 "CAP ALUM 470UF 20% 35V RADIAL" H 3500 2400 50  0001 L CNN "Description"
F 5 "17.5" H 3500 2300 50  0001 L CNN "Height"
F 6 "1572-1152-ND" H 3500 2200 50  0001 L CNN "Digi-Key Part Number"
F 7 "https://www.digikey.com/en/products/detail/illinois-capacitor/477CKS035M/5344082" H 3500 1900 50  0001 L CNN "Digi-Key Link"
	1    3150 2550
	0    1    1    0   
$EndComp
$Comp
L SamacSys_Parts:SRP1038A-470M L1
U 1 1 613C4D09
P 7300 2250
AR Path="/613D21F8/613C4D09" Ref="L1"  Part="1" 
AR Path="/613EB184/613C4D09" Ref="L2"  Part="1" 
F 0 "L2" H 7700 2475 50  0000 C CNN
F 1 "47uH" H 7700 2384 50  0000 C CNN
F 2 "INDPM110100X400N" H 7950 2300 50  0001 L CNN
F 3 "" H 7950 2200 50  0001 L CNN
F 4 "Inductor SMD shielded AEC-Q200 47uH Bourns SRP1038A Series Shielded Wire-wound SMD Inductor with a Carbonyl Powder Core, 47 uH 20% 3A Idc" H 7950 2100 50  0001 L CNN "Description"
F 5 "4" H 7950 2000 50  0001 L CNN "Height"
F 6 "SRP1038A-470M" H 7950 1900 50  0001 L CNN "Digi-Key Part Number"
F 7 "https://www.digikey.com/en/products/detail/bourns-inc/SRP1038A-470M/4876849" H 7950 1800 50  0001 L CNN "Digi-Key Link"
	1    7300 2250
	1    0    0    -1  
$EndComp
$Comp
L SamacSys_Parts:TS2596CM550_RNG IC1
U 1 1 613C5862
P 4400 3000
AR Path="/613D21F8/613C5862" Ref="IC1"  Part="1" 
AR Path="/613EB184/613C5862" Ref="IC2"  Part="1" 
F 0 "IC2" H 5200 3265 50  0000 C CNN
F 1 "TS2596CM550_RNG" H 5200 3174 50  0000 C CNN
F 2 "TS2596CM550RNG" H 5850 3100 50  0001 L CNN
F 3 "https://www.taiwansemi.com/products/datasheet/TS2596_G1608.pdf" H 5850 3000 50  0001 L CNN
F 4 "Switching Voltage Regulators 5.0V 3.0A" H 5850 2900 50  0001 L CNN "Description"
F 5 "4.85" H 5850 2800 50  0001 L CNN "Height"
F 6 "821-TS2596CM550RNG" H 5850 2700 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.co.uk/ProductDetail/Taiwan-Semiconductor/TS2596CM550-RNG?qs=QEzMiVqgwc1IpOivVc2Ydw%3D%3D" H 5850 2600 50  0001 L CNN "Mouser Price/Stock"
F 8 "Taiwan Semiconductor" H 5850 2500 50  0001 L CNN "Manufacturer_Name"
F 9 "TS2596CM550 RNG" H 5850 2400 50  0001 L CNN "Manufacturer_Part_Number"
	1    4400 3000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0106
U 1 1 613C6877
P 3700 3650
AR Path="/613D21F8/613C6877" Ref="#PWR0106"  Part="1" 
AR Path="/613EB184/613C6877" Ref="#PWR0113"  Part="1" 
F 0 "#PWR0113" H 3700 3400 50  0001 C CNN
F 1 "GND" H 3705 3477 50  0000 C CNN
F 2 "" H 3700 3650 50  0001 C CNN
F 3 "" H 3700 3650 50  0001 C CNN
	1    3700 3650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0107
U 1 1 613C6D3F
P 3150 3650
AR Path="/613D21F8/613C6D3F" Ref="#PWR0107"  Part="1" 
AR Path="/613EB184/613C6D3F" Ref="#PWR0114"  Part="1" 
F 0 "#PWR0114" H 3150 3400 50  0001 C CNN
F 1 "GND" H 3155 3477 50  0000 C CNN
F 2 "" H 3150 3650 50  0001 C CNN
F 3 "" H 3150 3650 50  0001 C CNN
	1    3150 3650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0108
U 1 1 613C7EE5
P 8550 3650
AR Path="/613D21F8/613C7EE5" Ref="#PWR0108"  Part="1" 
AR Path="/613EB184/613C7EE5" Ref="#PWR0115"  Part="1" 
F 0 "#PWR0115" H 8550 3400 50  0001 C CNN
F 1 "GND" H 8555 3477 50  0000 C CNN
F 2 "" H 8550 3650 50  0001 C CNN
F 3 "" H 8550 3650 50  0001 C CNN
	1    8550 3650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0109
U 1 1 613C852B
P 9250 3650
AR Path="/613D21F8/613C852B" Ref="#PWR0109"  Part="1" 
AR Path="/613EB184/613C852B" Ref="#PWR0116"  Part="1" 
F 0 "#PWR0116" H 9250 3400 50  0001 C CNN
F 1 "GND" H 9255 3477 50  0000 C CNN
F 2 "" H 9250 3650 50  0001 C CNN
F 3 "" H 9250 3650 50  0001 C CNN
	1    9250 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	3700 2550 3700 2250
Connection ~ 3700 2250
Wire Wire Line
	3700 2250 4100 2250
Wire Wire Line
	3150 2550 3150 2250
Connection ~ 3150 2250
Wire Wire Line
	3150 2250 3700 2250
Wire Wire Line
	3150 3650 3150 3050
Wire Wire Line
	3700 3050 3700 3650
Wire Wire Line
	8550 3650 8550 3050
Wire Wire Line
	8550 2550 8550 2250
Connection ~ 8550 2250
Wire Wire Line
	8550 2250 9250 2250
Wire Wire Line
	9250 2550 9250 2250
Connection ~ 9250 2250
Wire Wire Line
	9250 2250 9550 2250
Wire Wire Line
	9250 3050 9250 3650
$Comp
L SamacSys_Parts:477CKS035M C3
U 1 1 613CC4DB
P 8550 2550
AR Path="/613D21F8/613CC4DB" Ref="C3"  Part="1" 
AR Path="/613EB184/613CC4DB" Ref="C7"  Part="1" 
F 0 "C7" V 8754 2680 50  0000 L CNN
F 1 "470uF" V 8845 2680 50  0000 L CNN
F 2 "CAPPRD525W60D1025H1750" H 8900 2600 50  0001 L CNN
F 3 "https://www.cde.com/resources/catalogs/CKR_CKS.pdf" H 8900 2500 50  0001 L CNN
F 4 "CAP ALUM 470UF 20% 35V RADIAL" H 8900 2400 50  0001 L CNN "Description"
F 5 "17.5" H 8900 2300 50  0001 L CNN "Height"
F 6 "1572-1152-ND" H 8900 2200 50  0001 L CNN "Digi-Key Part Number"
F 7 "https://www.digikey.com/en/products/detail/illinois-capacitor/477CKS035M/5344082" H 8900 1900 50  0001 L CNN "Digi-Key Link"
	1    8550 2550
	0    1    1    0   
$EndComp
$Comp
L SamacSys_Parts:CGA3E2X7R1E104K080AA C2
U 1 1 613CF5F2
P 3700 2550
AR Path="/613D21F8/613CF5F2" Ref="C2"  Part="1" 
AR Path="/613EB184/613CF5F2" Ref="C6"  Part="1" 
F 0 "C6" V 3904 2678 50  0000 L CNN
F 1 "0.1uF" V 3995 2678 50  0000 L CNN
F 2 "CAPC1608X90N" H 4050 2600 50  0001 L CNN
F 3 "https://product.tdk.com/system/files/dam/doc/product/capacitor/ceramic/mlcc/catalog/mlcc_automotive_general_en.pdf" H 4050 2500 50  0001 L CNN
F 4 "TDK 0603 CGA 100nF Ceramic Multilayer Capacitor, 25 V dc, +125C, X7R Dielectric, +/-10%" H 4050 2400 50  0001 L CNN "Description"
F 5 "0.9" H 4050 2300 50  0001 L CNN "Height"
F 6 "445-5667-1-ND" H 4050 2200 50  0001 L CNN "Digi-Key Part Number"
F 7 "https://www.digikey.com/en/products/detail/tdk-corporation/CGA3E2X7R1E104K080AA/2443145" H 4050 2100 50  0001 L CNN "Digi-Key Link"
	1    3700 2550
	0    1    1    0   
$EndComp
Text HLabel 2800 2250 0    50   Input ~ 0
V_In
Text HLabel 9800 2250 2    50   Input ~ 0
V_Out
$EndSCHEMATC
