EESchema Schematic File Version 2
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
LIBS:power
LIBS:eSim_Plot
LIBS:transistors
LIBS:conn
LIBS:eSim_User
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:eSim_Analog
LIBS:eSim_Devices
LIBS:eSim_Digital
LIBS:eSim_Hybrid
LIBS:eSim_Miscellaneous
LIBS:eSim_Power
LIBS:eSim_Sources
LIBS:eSim_Subckt
LIBS:eSim_Nghdl
LIBS:eSim_Ngveri
LIBS:eSim_SKY130
LIBS:eSim_SKY130_Subckts
LIBS:counter-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
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
L shubhang_cnt3 U1
U 1 1 63416349
P 3850 3950
F 0 "U1" H 6700 5750 60  0000 C CNN
F 1 "shubhang_cnt3" H 6700 5950 60  0000 C CNN
F 2 "" H 6700 5900 60  0000 C CNN
F 3 "" H 6700 5900 60  0000 C CNN
	1    3850 3950
	1    0    0    -1  
$EndComp
$Comp
L sky130_fd_pr__nfet_01v8 SC4
U 1 1 63416400
P 3050 3300
F 0 "SC4" H 3100 3600 50  0000 C CNN
F 1 "sky130_fd_pr__nfet_01v8" H 3350 3387 50  0000 R CNN
F 2 "" H 3050 1800 50  0001 C CNN
F 3 "" H 3050 3300 50  0001 C CNN
	1    3050 3300
	1    0    0    -1  
$EndComp
$Comp
L sky130_fd_pr__pfet_01v8 SC3
U 1 1 63416471
P 3050 2250
F 0 "SC3" H 3100 2550 50  0000 C CNN
F 1 "sky130_fd_pr__pfet_01v8" H 3350 2337 50  0000 R CNN
F 2 "" H 3050 750 50  0001 C CNN
F 3 "" H 3050 2250 50  0001 C CNN
	1    3050 2250
	1    0    0    -1  
$EndComp
$Comp
L sky130_fd_pr__pfet_01v8 SC1
U 1 1 634167E5
P 1850 2200
F 0 "SC1" H 1900 2500 50  0000 C CNN
F 1 "sky130_fd_pr__pfet_01v8" H 2150 2287 50  0000 R CNN
F 2 "" H 1850 700 50  0001 C CNN
F 3 "" H 1850 2200 50  0001 C CNN
	1    1850 2200
	1    0    0    -1  
$EndComp
$Comp
L sky130_fd_pr__nfet_01v8 SC2
U 1 1 634168DF
P 1900 3300
F 0 "SC2" H 1950 3600 50  0000 C CNN
F 1 "sky130_fd_pr__nfet_01v8" H 2200 3387 50  0000 R CNN
F 2 "" H 1900 1800 50  0001 C CNN
F 3 "" H 1900 3300 50  0001 C CNN
	1    1900 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	2050 2500 2050 3000
Wire Wire Line
	2050 3000 2100 3000
Wire Wire Line
	3250 2550 3250 3000
Wire Wire Line
	2750 2250 2750 3300
Wire Wire Line
	2050 2750 2750 2750
Connection ~ 2750 2750
Connection ~ 2050 2750
Wire Wire Line
	2050 1900 3250 1900
Wire Wire Line
	3250 1900 3250 1950
Wire Wire Line
	1950 2200 1950 1900
Wire Wire Line
	1950 1900 2100 1900
Connection ~ 2100 1900
Wire Wire Line
	3150 2250 3150 1900
Wire Wire Line
	3150 1900 3100 1900
Connection ~ 3100 1900
Wire Wire Line
	2000 3300 2000 3600
Wire Wire Line
	2000 3600 3250 3600
Connection ~ 2100 3600
Wire Wire Line
	3150 3300 3150 3600
Connection ~ 3150 3600
$Comp
L GND #PWR1
U 1 1 63416A32
P 2550 3950
F 0 "#PWR1" H 2550 3700 50  0001 C CNN
F 1 "GND" H 2550 3800 50  0000 C CNN
F 2 "" H 2550 3950 50  0001 C CNN
F 3 "" H 2550 3950 50  0001 C CNN
	1    2550 3950
	1    0    0    -1  
$EndComp
$Comp
L adc_bridge_1 U2
U 1 1 63416A50
P 4650 2200
F 0 "U2" H 4650 2200 60  0000 C CNN
F 1 "adc_bridge_1" H 4650 2350 60  0000 C CNN
F 2 "" H 4650 2200 60  0000 C CNN
F 3 "" H 4650 2200 60  0000 C CNN
	1    4650 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	4050 2150 3600 2150
Wire Wire Line
	3600 2150 3600 2800
Wire Wire Line
	3600 2800 3250 2800
Connection ~ 3250 2800
Wire Wire Line
	5200 2150 6000 2150
Wire Wire Line
	1550 2200 1550 3300
Wire Wire Line
	1550 3300 1600 3300
Wire Wire Line
	2550 3400 2550 3950
Connection ~ 2550 3600
$Comp
L pulse v3
U 1 1 63416CE6
P 3900 3900
F 0 "v3" H 3700 4000 60  0000 C CNN
F 1 "pulse" H 3700 3850 60  0000 C CNN
F 2 "R1" H 3600 3900 60  0000 C CNN
F 3 "" H 3900 3900 60  0000 C CNN
	1    3900 3900
	1    0    0    -1  
$EndComp
$Comp
L pulse v1
U 1 1 63416F42
P 1200 2950
F 0 "v1" H 1000 3050 60  0000 C CNN
F 1 "pulse" H 1000 2900 60  0000 C CNN
F 2 "R1" H 900 2950 60  0000 C CNN
F 3 "" H 1200 2950 60  0000 C CNN
	1    1200 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	1200 2500 1550 2500
Wire Wire Line
	1550 2500 1550 2550
Connection ~ 1550 2550
$Comp
L adc_bridge_1 U3
U 1 1 6341716C
P 4850 2950
F 0 "U3" H 4850 2950 60  0000 C CNN
F 1 "adc_bridge_1" H 4850 3100 60  0000 C CNN
F 2 "" H 4850 2950 60  0000 C CNN
F 3 "" H 4850 2950 60  0000 C CNN
	1    4850 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	5350 2050 6000 2050
Wire Wire Line
	5350 2050 5350 2900
Wire Wire Line
	5350 2900 5400 2900
Wire Wire Line
	4250 2900 3900 2900
Wire Wire Line
	3900 2900 3900 3450
$Comp
L dac_bridge_3 U4
U 1 1 634172C2
P 8200 2050
F 0 "U4" H 8200 2050 60  0000 C CNN
F 1 "dac_bridge_3" H 8200 2200 60  0000 C CNN
F 2 "" H 8200 2050 60  0000 C CNN
F 3 "" H 8200 2050 60  0000 C CNN
	1    8200 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	7600 2000 7400 2000
Wire Wire Line
	7400 2000 7400 2050
Wire Wire Line
	7600 2100 7400 2100
Wire Wire Line
	7400 2100 7400 2150
Wire Wire Line
	7600 2200 7400 2200
Wire Wire Line
	7400 2200 7400 2250
$Comp
L DC v2
U 1 1 634173FC
P 1750 1200
F 0 "v2" H 1550 1300 60  0000 C CNN
F 1 "DC" H 1550 1150 60  0000 C CNN
F 2 "R1" H 1450 1200 60  0000 C CNN
F 3 "" H 1750 1200 60  0000 C CNN
	1    1750 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	1750 800  3350 800 
Wire Wire Line
	2550 800  2550 1900
Connection ~ 2550 1900
Wire Wire Line
	750  3400 2550 3400
Wire Wire Line
	1750 1650 750  1650
Wire Wire Line
	750  1650 750  3400
Connection ~ 1200 3400
Wire Wire Line
	3900 4350 2900 4350
Wire Wire Line
	2900 4350 2900 3600
Connection ~ 2900 3600
Wire Wire Line
	8750 2000 9600 2000
Wire Wire Line
	8750 2100 10750 2100
Wire Wire Line
	8750 2200 9650 2200
Text GLabel 10300 1350 0    60   Output ~ 0
a
Text GLabel 10750 2100 0    60   Output ~ 0
b
Text GLabel 10350 2550 0    60   Output ~ 0
c
Wire Wire Line
	10300 1350 9600 1350
Wire Wire Line
	9600 1350 9600 2000
Wire Wire Line
	9650 2200 9650 3250
Wire Wire Line
	9650 3250 10900 3250
Wire Wire Line
	10900 3250 10900 2550
Wire Wire Line
	10900 2550 10350 2550
$Comp
L plot_v1 U5
U 1 1 634177FD
P 9250 1300
F 0 "U5" H 9250 1800 60  0000 C CNN
F 1 "plot_v1" H 9450 1650 60  0000 C CNN
F 2 "" H 9250 1300 60  0000 C CNN
F 3 "" H 9250 1300 60  0000 C CNN
	1    9250 1300
	1    0    0    -1  
$EndComp
$Comp
L plot_v1 U7
U 1 1 63417862
P 10050 2000
F 0 "U7" H 10050 2500 60  0000 C CNN
F 1 "plot_v1" H 10250 2350 60  0000 C CNN
F 2 "" H 10050 2000 60  0000 C CNN
F 3 "" H 10050 2000 60  0000 C CNN
	1    10050 2000
	1    0    0    -1  
$EndComp
$Comp
L plot_v1 U6
U 1 1 634178D7
P 9950 3050
F 0 "U6" H 9950 3550 60  0000 C CNN
F 1 "plot_v1" H 10150 3400 60  0000 C CNN
F 2 "" H 9950 3050 60  0000 C CNN
F 3 "" H 9950 3050 60  0000 C CNN
	1    9950 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	9250 1100 9250 2000
Connection ~ 9250 2000
Wire Wire Line
	10050 1800 10050 2100
Connection ~ 10050 2100
Wire Wire Line
	9950 2850 9950 3250
Connection ~ 9950 3250
$Comp
L SKY130mode scmode1
U 1 1 63417A55
P 6300 4400
F 0 "scmode1" H 6300 4550 98  0000 C CNB
F 1 "SKY130mode" H 6300 4300 118 0000 C CNB
F 2 "" H 6300 4550 60  0001 C CNN
F 3 "" H 6300 4550 60  0001 C CNN
	1    6300 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	3900 3300 4500 3300
Connection ~ 3900 3300
Connection ~ 2550 800 
Text GLabel 3750 800  0    60   Input ~ 0
dc
Text GLabel 4850 3300 0    60   Input ~ 0
clk
Text GLabel 1650 4100 0    60   Input ~ 0
rst
Wire Wire Line
	312050 -566350 312050 -704650
Wire Wire Line
	312050 -704650 416550 -704650
Wire Wire Line
	1400 2050 1400 3950
Wire Wire Line
	1400 3950 1650 3950
Wire Wire Line
	1650 3950 1650 4100
Connection ~ 1400 2500
Wire Wire Line
	4850 3300 4850 4100
Wire Wire Line
	4850 4100 4500 4100
Wire Wire Line
	4500 4100 4500 3300
Wire Wire Line
	3750 800  3750 1300
Wire Wire Line
	3750 1300 3350 1300
Wire Wire Line
	3350 1300 3350 800 
$Comp
L plot_v1 U9
U 1 1 63416E19
P 4150 3250
F 0 "U9" H 4150 3750 60  0000 C CNN
F 1 "plot_v1" H 4350 3600 60  0000 C CNN
F 2 "" H 4150 3250 60  0000 C CNN
F 3 "" H 4150 3250 60  0000 C CNN
	1    4150 3250
	1    0    0    -1  
$EndComp
$Comp
L plot_v1 U8
U 1 1 63416E8C
P 1050 2250
F 0 "U8" H 1050 2750 60  0000 C CNN
F 1 "plot_v1" H 1250 2600 60  0000 C CNN
F 2 "" H 1050 2250 60  0000 C CNN
F 3 "" H 1050 2250 60  0000 C CNN
	1    1050 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	1050 2050 1400 2050
Wire Wire Line
	4150 3050 4150 3200
Wire Wire Line
	4150 3200 3900 3200
Connection ~ 3900 3200
$EndSCHEMATC
