# 3-bit Synchronous up counter with buffered reset_google-iitb-esim-mixed-signal-HACKATHON
This repository contains information about a 3 bit up counnter with synchronus buffered reset implemented on esim using SKY130 PDK.
# Table of Contents
1) [Abstract](https://github.com/Shubhang1234/MixedSIgnal_Hackathon/edit/main/README.md#abstract-) <br />
2) [eSim and SKY130 PDK](https://github.com/Shubhang1234/MixedSIgnal_Hackathon/blob/main/README.md#esim-and-sky130-pdk) <br />
3) [Circuit Details](https://github.com/Shubhang1234/MixedSIgnal_Hackathon/blob/main/README.md#circuit-details-) <br /> 
4) [Circuit Schematic](https://github.com/Shubhang1234/MixedSIgnal_Hackathon/blob/main/README.md#circuit-schematic-) <br />
5) [Simulated Waveforms](https://github.com/Shubhang1234/MixedSIgnal_Hackathon/blob/main/README.md#simulated-waveforms-) <br />
6) [Netlist](https://github.com/Shubhang1234/TwoStage-OTA/edit/main/README.md#netlist-) <br />
7) [Observations](https://github.com/Shubhang1234/TwoStage-OTA/edit/main/README.md#observations-) <br />
8) [Author](https://github.com/Shubhang1234/MixedSIgnal_Hackathon/blob/main/README.md#author-) <br />
9) [Acknowledgements](https://github.com/Shubhang1234/TwoStage-OTA/edit/main/README.md#acknowledgements-) <br />
10) [References](https://github.com/Shubhang1234/TwoStage-OTA/edit/main/README.md#references-) <br />
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
## Circuit Schematic <br />
![ckt](https://user-images.githubusercontent.com/56774313/194709382-8ef1ee63-ad68-4ced-9988-0dc1d0f8e2e1.png)
<br />
Fig 1: Circuit Schematic
## Simulated Waveforms <br />
 <br />

Fig 2: Achieved waveforms (displaying clk,rst,a,b,c)
## Netlist <br />
```
*Custom Compiler Version S-2021.09
*Mon Feb 28 04:59:50 2022

.global gnd!
********************************************************************************
* Library          : wk_shubhang_ota
* Cell             : OTA_netlist
* View             : schematic
* View Search List : hspice hspiceD cmos.sch cmos_sch schematic veriloga
* View Stop List   : hspice hspiceD veriloga
********************************************************************************
.subckt ota_netlist vin+ vin- vout
xm24 net5 net5 gnd! gnd! n105 w=3.5u l=500n nf=1 m=1
xm26 net3 net5 gnd! gnd! n105 w=3.5u l=500n nf=1 m=1
xm27 vout net3 gnd! gnd! n105 w=52.5u l=500n nf=15 m=1
xm30 net2 net2 net1 net1 p105 w=12u l=500n nf=4 m=1
xm29 net4 net2 net1 net1 p105 w=12u l=500n nf=4 m=1
xm28 vout net2 net1 net1 p105 w=77u l=500n nf=22 m=1
xm23 net3 vin+ net4 net4 p105 w=12u l=500n nf=4 m=1
xm25 net5 vin- net4 net4 p105 w=12u l=500n nf=4 m=1
i27 net2 gnd! dc=2u
c24 vout gnd! c=1p
c23 net3 vout c=1p
v24 net1 gnd! dc=1
.ends ota_netlist
 
``` 
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

[1]	Maekawa, Tomoaki & Amakawa, Shuhei & Ishihara, Noboru & Masu, Kazuya. (2009). Design of CMOS inverter-based output buffers adapting the Cherry-Hooper broadbanding technique. 511 - 514. 10.1109/ECCTD.2009.5275025.
[2]	Mariyamol, p.p & Aswathy, N.. (2016). CMOS Buffer Design Approach for Low Power and Lower Delay SRAM Design. Procedia Technology. 25. 481-488. 10.1016/j.protcy.2016.08.135. 
[3]	Thomas L. Floyd “Digital Fundamentals”, 11th ed global edition, pp. 507-527



