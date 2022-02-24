# TwoStage-OTA@28nm_IITH_HACKATHON
This repository contains information about Double stage Operational Trnasconductance amplifier implemented on Synopsys Custom Compiler on 28nm technology node.
# Table of Contents
1) [Abstract](https://github.com/Shubhang1234/TwoStage-OTA/edit/main/README.md#abstract-) <br />
2) [Synopsys Custom Compiler Tool](https://github.com/Shubhang1234/TwoStage-OTA/edit/main/README.md#synopsys-custom-compiler-tool)
3) [Refrence Circuit Details & Circuit Diagram](https://github.com/Shubhang1234/TwoStage-OTA/edit/main/README.md#refrence-circuit-details--circuit-diagram-) <br /> 
4) [Refrence Circuit Waveform](https://github.com/Shubhang1234/TwoStage-OTA/edit/main/README.md#refrence-circuit-waveform-) <br />
5) [Actual Simulation Stimuli](https://github.com/Shubhang1234/TwoStage-OTA/edit/main/README.md#actual-simulation-stimuli-) <br />
6) [Schematic](https://github.com/Shubhang1234/TwoStage-OTA/edit/main/README.md#schematic-) <br />
7) [Netlist](https://github.com/Shubhang1234/TwoStage-OTA/edit/main/README.md#netlist-) <br />
8) [Simulated actual waveforms](https://github.com/Shubhang1234/TwoStage-OTA/edit/main/README.md#simulated-actual-waveforms-) <br />
9) [Observations](https://github.com/Shubhang1234/TwoStage-OTA/edit/main/README.md#observations-) <br />
10) [Author](https://github.com/Shubhang1234/TwoStage-OTA/edit/main/README.md#author-) <br />
11) [Acknowledgements](https://github.com/Shubhang1234/TwoStage-OTA/edit/main/README.md#acknowledgements-) <br />
12) [References](https://github.com/Shubhang1234/TwoStage-OTA/edit/main/README.md#references-) <br />
## Abstract <br />
Operational transconductance amplifiers are 
widely used in various applications like BGRs, VCO, VGA etc. <br />
Here a double stage operational transconductance amplifier is designed and simulated on Synopsys custom compiler on 28nm technology node. 
## Synopsys Custom Compiler Tool
The [Synopsys Custom Compiler™](https://www.synopsys.com) design environment is a modern solution for full-custom analog, custom digital, and mixed-signal IC design. As the heart of the Synopsys Custom Design Platform, Custom Compiler provides design entry, simulation management and analysis, and custom layout editing features. It delivers industry-leading productivity, performance, and ease-of-use while remaining easy to adopt for users of legacy tools.
## Refrence Circuit Details & Circuit Diagram <br />
![image](https://user-images.githubusercontent.com/56774313/155373573-14cedc3a-13c6-45fe-821e-bdb5b2cd07dd.png)
## Refrence Circuit Waveform <br />
![image](https://user-images.githubusercontent.com/56774313/155373852-d32fa98b-4f78-4053-9e01-09aa18b6a138.png) <br />
## Actual Simulation Stimuli <br />
Input common mode voltage-->0.3 V <br />
Small signal AC fluctuation-->![MergedImages](https://user-images.githubusercontent.com/56774313/155460689-fc33f329-06f1-4d11-811d-5864c1810580.png) <br />
vin+(L) & vin-(R)
## Schematic <br />
![ckt_design](https://user-images.githubusercontent.com/56774313/155382191-6a6a4f65-16eb-44a4-ab8e-7a7f831f83ba.png)
## Netlist <br />
## Simulated actual waveforms <br />
![BODEPLOT](https://user-images.githubusercontent.com/56774313/155464974-f0aa7c86-77f1-41d7-88f1-8ec2c4e6faee.png)
Obtained BODE PLOT indicates a DC Gain of ~53dB and Phase Margin of ~63.5° <br />
*Side note-->By proper miller compensation this ampifier is best suited for audio signal amplification purposes.
## Observations <br />
A breif contrast between targeted and actual specifications is mentioned below:
| Specifications        | Targeted       | Actual     | Result  |
| --------------------- |:--------------:| -------:   | :------:|      
| DC Gain               | ~50dB          |   53.5 dB  | PASS    |  
| GBW                   | >100kHz        |   4.11 MHz | PASS    |  
| Supply Voltage        | ~1V            |   1V       | PASS    |  
| Power Consumption     | <100µW         |   17.37 µW | PASS    |  
| Phase Margin          | ~60°           |   63.5°    | PASS    |  
| Slew rate             | >0.1 µV/s      |   >0.1 µV/s| PASS    |  
| Area                  | <100μm2        |   <100μm2  | PASS    |  
## Author <br />
Shubhang Srivastava <br />
Student <br />
Dept of Electrical engineering <br />
Indian Institute of Technology Jammu <br />
## Acknowledgements <br />
I would like to give my sincere thanks to undermentioned Organization/Persons for their invaluable guidance and software support which enabled me to participate and learn a lot from this Hackathon:
1) [Synopsys Team](https://www.synopsys.com)
2) Kunal Ghosh, Co-founder, VSD Corp. Pvt. Ltd.
3) Chinmay Panda, IIT Hyderabad
4) Sumanto Kar, IIT Bombay
5) Sameer Durgoji, NIT Karnataka
## References <br />
[1] Z. Yan, C. Zhang and M. Wang, "Low-Voltage Bandgap Reference 
Circuit in 28nm CMOS," 2018 IEEE Asia Pacific Conference on 
Circuits and Systems (APCCAS), 2018, pp. 14-17, doi: 
10.1109/APCCAS.2018.8605676.J. Clerk Maxwell, A Treatise on 
Electricity and Magnetism, 3rd ed., vol. 2. Oxford: Clarendon, 1892, 
pp.68–73.<br />
[2] M. H. Hamzah, A. B. Jambek and U. Hashim, "Design and analysis of 
a two-stage CMOS op-amp using Silterra's 0.13 μm technology," 
2014 IEEE Symposium on Computer Applications and Industrial 
Electronics (ISCAIE), 2014, pp. 55-59, doi: 
10.1109/ISCAIE.2014.7010209. <br />
[3] R. Nagulapalli, K. Hayatleh, S. Barker, B. N. K. Reddy and B. 
Seetharamulu, "A Low Power Miller Compensation Technique for 
Two Stage Op-amp in 65nm CMOS Technology," 2019 10th 
International Conference on Computing, Communication and 
Networking Technologies (ICCCNT), 2019, pp. 1-5, doi: 
10.1109/ICCCNT45670.2019.8944553. <br />
[4] M. P. Sarma, N. Kalita and N. E. Mastorakis, "Design of an low 
power miller compensated two stage OP-AMP using 45 nm 
technology for high data rate communication," 2017 4th International 
Conference on Signal Processing and Integrated Networks (SPIN), 
2017, pp. 463-467, doi: 10.1109/SPIN.2017.8049994. <br />
[5] E. Kargaran, H. Khosrowjerdi and K. Ghaffarzadegan, "A 1.5 v High 
Swing Ultra-Low-Power Two Stage CMOS OP-AMP in 0.18 µm 
Technology," 2010 2nd International Conference on Mechanical and 
Electronics Engineering, 2010, pp. V1-68-V1-71, doi: 
10.1109/ICMEE.2010.5558594. <br />
[6] A. Boni, "Op-amps and startup circuits for CMOS bandgap references 
with near 1-V supply," in IEEE Journal of Solid-State Circuits, vol. 
37, no. 10, pp. 1339-1343, Oct. 2002, doi: 
10.1109/JSSC.2002.803055. <br />
