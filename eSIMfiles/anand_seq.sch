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
LIBS:anand_seq-cache
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
L anand_seq U4
U 1 1 6229F589
P 3050 3750
F 0 "U4" H 5900 5550 60  0000 C CNN
F 1 "anand_seq" H 5900 5750 60  0000 C CNN
F 2 "" H 5900 5700 60  0000 C CNN
F 3 "" H 5900 5700 60  0000 C CNN
	1    3050 3750
	1    0    0    -1  
$EndComp
$Comp
L adc_bridge_3 U5
U 1 1 6229F79A
P 3350 1900
F 0 "U5" H 3350 1900 60  0000 C CNN
F 1 "adc_bridge_3" H 3350 2050 60  0000 C CNN
F 2 "" H 3350 1900 60  0000 C CNN
F 3 "" H 3350 1900 60  0000 C CNN
	1    3350 1900
	1    0    0    -1  
$EndComp
$Comp
L adc_bridge_1 U6
U 1 1 6229F7E7
P 8050 1900
F 0 "U6" H 8050 1900 60  0000 C CNN
F 1 "adc_bridge_1" H 8050 2050 60  0000 C CNN
F 2 "" H 8050 1900 60  0000 C CNN
F 3 "" H 8050 1900 60  0000 C CNN
	1    8050 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	3900 1850 5200 1850
Wire Wire Line
	3900 1950 5200 1950
Wire Wire Line
	3900 2050 5200 2050
Wire Wire Line
	6600 1850 7450 1850
$Comp
L pulse v1
U 1 1 6229F91B
P 1600 2250
F 0 "v1" H 1400 2350 60  0000 C CNN
F 1 "pulse" H 1400 2200 60  0000 C CNN
F 2 "R1" H 1300 2250 60  0000 C CNN
F 3 "" H 1600 2250 60  0000 C CNN
	1    1600 2250
	1    0    0    -1  
$EndComp
$Comp
L pulse v2
U 1 1 6229F9C2
P 2250 2600
F 0 "v2" H 2050 2700 60  0000 C CNN
F 1 "pulse" H 2050 2550 60  0000 C CNN
F 2 "R1" H 1950 2600 60  0000 C CNN
F 3 "" H 2250 2600 60  0000 C CNN
	1    2250 2600
	1    0    0    -1  
$EndComp
$Comp
L pulse v3
U 1 1 6229F9FE
P 2700 2950
F 0 "v3" H 2500 3050 60  0000 C CNN
F 1 "pulse" H 2500 2900 60  0000 C CNN
F 2 "R1" H 2400 2950 60  0000 C CNN
F 3 "" H 2700 2950 60  0000 C CNN
	1    2700 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	1600 1800 2750 1800
Wire Wire Line
	2750 1800 2750 1850
Wire Wire Line
	2250 2150 2250 1950
Wire Wire Line
	2050 1950 2750 1950
Wire Wire Line
	2700 2500 2700 2050
Wire Wire Line
	2500 2050 2750 2050
$Comp
L eSim_GND #PWR01
U 1 1 6229FCD7
P 2700 3400
F 0 "#PWR01" H 2700 3150 50  0001 C CNN
F 1 "eSim_GND" H 2700 3250 50  0000 C CNN
F 2 "" H 2700 3400 50  0001 C CNN
F 3 "" H 2700 3400 50  0001 C CNN
	1    2700 3400
	1    0    0    -1  
$EndComp
$Comp
L eSim_GND #PWR02
U 1 1 6229FCFD
P 2250 3050
F 0 "#PWR02" H 2250 2800 50  0001 C CNN
F 1 "eSim_GND" H 2250 2900 50  0000 C CNN
F 2 "" H 2250 3050 50  0001 C CNN
F 3 "" H 2250 3050 50  0001 C CNN
	1    2250 3050
	1    0    0    -1  
$EndComp
$Comp
L eSim_GND #PWR03
U 1 1 6229FD35
P 1600 2700
F 0 "#PWR03" H 1600 2450 50  0001 C CNN
F 1 "eSim_GND" H 1600 2550 50  0000 C CNN
F 2 "" H 1600 2700 50  0001 C CNN
F 3 "" H 1600 2700 50  0001 C CNN
	1    1600 2700
	1    0    0    -1  
$EndComp
Text GLabel 10150 1850 2    60   Output ~ 0
out
Wire Wire Line
	10150 1850 9300 1850
$Comp
L plot_v1 U1
U 1 1 622A03E2
P 1700 1600
F 0 "U1" H 1700 2100 60  0000 C CNN
F 1 "plot_v1" H 1900 1950 60  0000 C CNN
F 2 "" H 1700 1600 60  0000 C CNN
F 3 "" H 1700 1600 60  0000 C CNN
	1    1700 1600
	1    0    0    -1  
$EndComp
$Comp
L plot_v1 U2
U 1 1 622A0443
P 2050 1800
F 0 "U2" H 2050 2300 60  0000 C CNN
F 1 "plot_v1" H 2250 2150 60  0000 C CNN
F 2 "" H 2050 1800 60  0000 C CNN
F 3 "" H 2050 1800 60  0000 C CNN
	1    2050 1800
	1    0    0    -1  
$EndComp
$Comp
L plot_v1 U3
U 1 1 622A0477
P 2500 1900
F 0 "U3" H 2500 2400 60  0000 C CNN
F 1 "plot_v1" H 2700 2250 60  0000 C CNN
F 2 "" H 2500 1900 60  0000 C CNN
F 3 "" H 2500 1900 60  0000 C CNN
	1    2500 1900
	1    0    0    -1  
$EndComp
$Comp
L plot_v1 U7
U 1 1 622A04B9
P 9950 1900
F 0 "U7" H 9950 2400 60  0000 C CNN
F 1 "plot_v1" H 10150 2250 60  0000 C CNN
F 2 "" H 9950 1900 60  0000 C CNN
F 3 "" H 9950 1900 60  0000 C CNN
	1    9950 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	9950 1700 9950 1850
Connection ~ 9950 1850
Wire Wire Line
	1700 1400 1700 1800
Connection ~ 1700 1800
Wire Wire Line
	2050 1600 2050 1950
Connection ~ 2250 1950
Wire Wire Line
	2500 1700 2500 2050
Connection ~ 2700 2050
$Comp
L resistor R1
U 1 1 6229FF7C
P 9100 1900
F 0 "R1" H 9150 2030 50  0000 C CNN
F 1 "1k" H 9150 1850 50  0000 C CNN
F 2 "" H 9150 1880 30  0000 C CNN
F 3 "" V 9150 1950 30  0000 C CNN
	1    9100 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	8600 1850 9000 1850
$Comp
L eSim_GND #PWR04
U 1 1 622A0497
P 9700 2600
F 0 "#PWR04" H 9700 2350 50  0001 C CNN
F 1 "eSim_GND" H 9700 2450 50  0000 C CNN
F 2 "" H 9700 2600 50  0001 C CNN
F 3 "" H 9700 2600 50  0001 C CNN
	1    9700 2600
	1    0    0    -1  
$EndComp
$Comp
L capacitor C1
U 1 1 622A04C1
P 9700 2450
F 0 "C1" H 9725 2550 50  0000 L CNN
F 1 "1u" H 9725 2350 50  0000 L CNN
F 2 "" H 9738 2300 30  0000 C CNN
F 3 "" H 9700 2450 60  0000 C CNN
	1    9700 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	9700 2300 9700 1850
Connection ~ 9700 1850
$EndSCHEMATC
