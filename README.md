# 3-bit Synchronous up counter with buffered reset_google-iitb-esim-mixed-signal-HACKATHON
This repository contains information about a 3 bit up counnter with synchronus buffered reset implemented on esim using SKY130 PDK.
# Table of Contents
1) [Abstract](https://github.com/Shubhang1234/MixedSIgnal_Hackathon/blob/main/README.md#abstract-) <br />
2) [eSim and SKY130 PDK](https://github.com/Shubhang1234/MixedSIgnal_Hackathon/blob/main/README.md#esim-and-sky130-pdk) <br />
3) [Circuit Details](https://github.com/Shubhang1234/MixedSIgnal_Hackathon/blob/main/README.md#circuit-details-) <br /> 
4) [Circuit Schematic](https://github.com/Shubhang1234/MixedSIgnal_Hackathon/blob/main/README.md#circuit-schematic-) <br />
5) [Simulated Waveforms](https://github.com/Shubhang1234/MixedSIgnal_Hackathon/blob/main/README.md#simulated-waveforms-) <br />
6) [Netlist](https://github.com/Shubhang1234/MixedSIgnal_Hackathon/blob/main/README.md#netlist-) <br />
7) [Author](https://github.com/Shubhang1234/MixedSIgnal_Hackathon/blob/main/README.md#author-) <br />
8) [Acknowledgements](https://github.com/Shubhang1234/MixedSIgnal_Hackathon/blob/main/README.md#acknowledgements-) <br />
9) [References](https://github.com/Shubhang1234/MixedSIgnal_Hackathon/blob/main/README.md#references-) <br />
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
Fig 1: Circuit Schematic
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

[1]	Maekawa, Tomoaki & Amakawa, Shuhei & Ishihara, Noboru & Masu, Kazuya. (2009). Design of CMOS inverter-based output buffers adapting the Cherry-Hooper broadbanding technique. 511 - 514. 10.1109/ECCTD.2009.5275025. <br />
[2]	Mariyamol, p.p & Aswathy, N.. (2016). CMOS Buffer Design Approach for Low Power and Lower Delay SRAM Design. Procedia Technology. 25. 481-488. 10.1016/j.protcy.2016.08.135. <br />
[3]	Thomas L. Floyd “Digital Fundamentals”, 11th ed global edition, pp. 507-527



