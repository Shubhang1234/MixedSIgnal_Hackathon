# 3-bit Synchronous up counter with buffered reset_google-iitb-esim-mixed-signal-HACKATHON
This repository contains information about a 3 bit up counter with synchronus buffered reset implemented on esim using SKY130 PDK.
# Table of Contents
1) [Abstract](https://github.com/Shubhang1234/MixedSIgnal_Hackathon/blob/main/README.md#abstract-) <br />
2) [eSim and SKY130 PDK](https://github.com/Shubhang1234/MixedSIgnal_Hackathon/blob/main/README.md#esim-and-sky130-pdk) <br />
3) [Circuit Details](https://github.com/Shubhang1234/MixedSIgnal_Hackathon/blob/main/README.md#circuit-details-) <br /> 
4) [Circuit Schematic](https://github.com/Shubhang1234/MixedSIgnal_Hackathon/blob/main/README.md#circuit-schematic-) <br />
5) [Simulated Waveforms](https://github.com/Shubhang1234/MixedSIgnal_Hackathon/blob/main/README.md#simulated-waveforms-) <br />
6) [Author](https://github.com/Shubhang1234/MixedSIgnal_Hackathon/blob/main/README.md#author-) <br />
7) [Acknowledgements](https://github.com/Shubhang1234/MixedSIgnal_Hackathon/blob/main/README.md#acknowledgements-) <br />
8) [References](https://github.com/Shubhang1234/MixedSIgnal_Hackathon/blob/main/README.md#references-) <br />
## Abstract <br />
Counters are digital circuits widely used in various applications like counting, frequency divisions, memory increment in the registers, etc. In this abstract, the design of a 3-bit up counter with synchronus reset is described where the reset is buffered using a CMOS inverter buffer for better performance.
## eSim and SKY130 PDK
eSim (previously known as Oscad / FreeEDA) is a free/libre and open source EDA tool (https://esim.fossee.in/home) for circuit design, simulation, analysis and PCB design. It is an integrated tool built using free/libre and open source software such as KiCad, Ngspice, Verilator, Makerchip, GHDL and OpenModelica. eSim is released under GPL. <br />
The SKY130 (https://skywater-pdk.readthedocs.io/en/main/) is a mature 180nm-130nm hybrid technology originally developed internally by Cypress Semiconductor before being spun out into SkyWater Technology and made accessible to general industry. SkyWater and Google’s collaboration is now making this technology accessible to everyone!
<br />
## Circuit Details <br />
The schematic circuit is shown in Fig1. <br />
The reset signal is fed to the counter using back to back CMOS inverter based buffer made on sky 130nm technology. The counter is made on Verilog and verified using makerchip IDE and is a fully synthesizable block. <br /> To interface the analog and digital signals the dac and adc bridges from esim hybrid are used (The default ouput values of dac are set to be 2V for high and 0V for low despite supply being 3V to differntiate and make the understanding of output easier). 
 <br />
 The verilog code for the used counter is given below: <br />
```
module shubhang_cnt3(clk,rst,out);
input clk,rst;
output reg [2:0]out;
always @(posedge clk)
begin 
if (rst)
begin 
out<=3'b0;
end
else 
begin
out<=out+1'b1;
end
end
endmodule
```
 
## Circuit Schematic <br />
![ckt](https://user-images.githubusercontent.com/56774313/194709382-8ef1ee63-ad68-4ced-9988-0dc1d0f8e2e1.png)
<br />
Fig 1: Circuit Schematic <br />
Code generated in ng spice for circuit schematic is mentioned below:
```
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
```
## Simulated Waveforms <br />
Transient Simulation was done, the ouput file generated for the test is mentioned below: <br />
```
* /home/2019uee0117/esim-workspace/counter/counter.cir

.lib "/usr/share/local/sky130_fd_pr/models/sky130.lib.spice" tt
.include "/usr/share/local/sky130_fd_pr/models/sky130_fd_pr__model__diode_pd2nw_11v0.model.spice"
.include "/usr/share/local/sky130_fd_pr/models/sky130_fd_pr__model__pnp.model.spice"
.include "/usr/share/local/sky130_fd_pr/models/sky130_fd_pr__model__diode_pw2nd_11v0.model.spice"
.include "/usr/share/local/sky130_fd_pr/models/sky130_fd_pr__model__r+c.model.spice"
.include "/usr/share/local/sky130_fd_pr/models/sky130_fd_pr__model__inductors.model.spice"
.include "/usr/share/local/sky130_fd_pr/models/sky130_fd_pr__model__linear.model.spice"
* u1  net-_u1-pad1_ net-_u1-pad2_ net-_u1-pad3_ net-_u1-pad4_ net-_u1-pad5_ shubhang_cnt3
xsc4 net-_sc3-pad1_ net-_sc1-pad1_ gnd gnd sky130_fd_pr__nfet_01v8 
xsc3 net-_sc3-pad1_ net-_sc1-pad1_ dc dc sky130_fd_pr__pfet_01v8 
xsc1 net-_sc1-pad1_ rst dc dc sky130_fd_pr__pfet_01v8 
xsc2 net-_sc1-pad1_ rst gnd gnd sky130_fd_pr__nfet_01v8 
* u2  net-_sc3-pad1_ net-_u1-pad2_ adc_bridge_1
v3  clk gnd pulse(0 3 0 1u 1u 0.1m 0.2m)
v1  rst gnd pulse(0 3 0 1u 1u 1m 2m)
* u3  clk net-_u1-pad1_ adc_bridge_1
* u4  net-_u1-pad3_ net-_u1-pad4_ net-_u1-pad5_ a b c dac_bridge_3
v2  gnd  dc 3
* u5  a plot_v1
* u7  b plot_v1
* u6  c plot_v1
* s c m o d e
* u9  clk plot_v1
* u8  rst plot_v1
a1 [net-_u1-pad1_ ] [net-_u1-pad2_ ] [net-_u1-pad3_ net-_u1-pad4_ net-_u1-pad5_ ] u1
a2 [net-_sc3-pad1_ ] [net-_u1-pad2_ ] u2
a3 [clk ] [net-_u1-pad1_ ] u3
a4 [net-_u1-pad3_ net-_u1-pad4_ net-_u1-pad5_ ] [a b c ] u4
* Schematic Name:                             shubhang_cnt3, NgSpice Name: shubhang_cnt3
.model u1 shubhang_cnt3(rise_delay=1.0e-9 fall_delay=1.0e-9 input_load=1.0e-12 instance_id=1 ) 
* Schematic Name:                             adc_bridge_1, NgSpice Name: adc_bridge
.model u2 adc_bridge(in_low=1.0 in_high=2.0 rise_delay=1.0e-9 fall_delay=1.0e-9 ) 
* Schematic Name:                             adc_bridge_1, NgSpice Name: adc_bridge
.model u3 adc_bridge(in_low=1.0 in_high=2.0 rise_delay=1.0e-9 fall_delay=1.0e-9 ) 
* Schematic Name:                             dac_bridge_3, NgSpice Name: dac_bridge
.model u4 dac_bridge(out_low=0 out_high=2 out_undef=0.5 input_load=1.0e-12 t_rise=1.0e-9 t_fall=1.0e-9 ) 
.tran 1e-03 10e-03 0e-00

* Control Statements 
.control
run
print allv > plot_data_v.txt
print alli > plot_data_i.txt
plot v(a)
plot v(b)
plot v(c)
plot v(clk)
plot v(rst)
.endc
.end

```
![vc](https://user-images.githubusercontent.com/56774313/194710573-7f859b55-3fd7-4c22-a676-d624f66d8e55.png)
<br />
Fig 2: vc (LSB of counter output) <br />
![vb](https://user-images.githubusercontent.com/56774313/194710589-a1a49fda-231a-4c95-b243-6dd0e2ca4bc2.png)
<br />
Fig 3: vb (middle bit of counter output) <br />
![va](https://user-images.githubusercontent.com/56774313/194710603-5f720b57-3f24-4e32-b85f-98e58f33ebfe.png)
<br />
Fig 4: va (MSB of counter output) <br />
![clk](https://user-images.githubusercontent.com/56774313/194710616-662410e0-e922-417c-bf84-fced46b1f554.png)
<br />
Fig 5: clock signal <br />
![rst](https://user-images.githubusercontent.com/56774313/194710623-d1891b19-60fe-491b-b1ee-923f95a01bac.png)
<br />
Fig 6: reset (given perioidcally to show its working more clearly) <br />

## Author <br />
Shubhang Srivastava <br />
Student <br />
IC ResQ Lab <br />
Dept of Electrical engineering <br />
Indian Institute of Technology Jammu 181221<br />
## Acknowledgements <br />
I would like to give my sincere thanks to undermentioned Organization/Persons for their invaluable guidance and software support which enabled me to participate and learn a lot from this Hackathon:
 
1) Indian Institute of Technology Bombay (http://iitb.ac.in/)
2) Google (https://www.google.co.in/)
3) FOSSEE (https://fossee.in/)
4) Spoken Tutorials (https://spoken-tutorial.org/)
5) VSD (https://www.vlsisystemdesign.com)
6) Chips to Startup Gov of India (https://www.c2s.gov.in/)
7) Sumanto Kar (Sr Project Technical Assistant at IITB)

## References <br />

[1]	Maekawa, Tomoaki & Amakawa, Shuhei & Ishihara, Noboru & Masu, Kazuya. (2009). Design of CMOS inverter-based output buffers adapting the Cherry-Hooper broadbanding technique. 511 - 514. 10.1109/ECCTD.2009.5275025. <br />
[2]	Mariyamol, p.p & Aswathy, N.. (2016). CMOS Buffer Design Approach for Low Power and Lower Delay SRAM Design. Procedia Technology. 25. 481-488. 10.1016/j.protcy.2016.08.135. <br />
[3]	Thomas L. Floyd “Digital Fundamentals”, 11th ed global edition, pp. 507-527



