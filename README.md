# Design-and-Simulate-of-1001-Sequence-detector-Using-eSim-Tool
- [Abstract](#abstract)
- [Sequence 1001 detector](#Sequence-1001-detector)
- [State diagram of sequence 1001 diagram](#State-diagram-of-sequence1001-diagram)
- [Software Used](#software-used)
    * [eSim](#esim)
    * [NgSpice](#ngspice)
    * [Makerchip](#makerchip)
- [Code used](#Code-used)
- [Waveforms](#waveforms)
    


- [Acknowlegdements](#acknowlegdements)
- [References](#references)


# Abstract

Sequence detector is a part of digital circuit which takes bit strings as input and gives output as one when the correct sequence has been detected. Sequence detector work on the principal of finite state machine.State machine are of two typeas mealy and moore machine.Mealy machine is and FSM whose output depends on the present state as well as the present input where as moore machine only depends on only present input.

# Sequence 1001 detector

In paper this post we are going to discuss the Verilog code of 1001 sequence detector. The sequence detector is of overlapping type. It means that the sequencer keep track of the previous sequences. Whenever the sequencer finds the incoming sequence matches with the 1001 sequence it gives the output 1. As Moore machine is used mostly in all practical designs the Verilog code for 1001 sequence detector fsm is written in Moore fsm logic.

# State diagram of sequence 1001 diagram
![1001_moore-134x300](https://user-images.githubusercontent.com/101328805/157676738-1c78ed6c-d069-4c1b-a11f-a0eab1cd2db6.png)

## Software Used
### eSim
It is an Open Source EDA developed by FOSSEE, IIT Bombay. It is used for electronic circuit simulation. It is made by the combination of two software namely NgSpice and KiCAD.
</br>
For more details refer:
</br>
https://esim.fossee.in/home
### NgSpice
It is an Open Source Software for Spice Simulations. For more details refer:
</br>
http://ngspice.sourceforge.net/docs.html
### Makerchip
It is an Online Web Browser IDE for Verilog/System-verilog/TL-Verilog Simulation. Refer
</br> https://www.makerchip.com/
### Verilator
It is a tool which converts Verilog code to C++ objects. Refer:
https://www.veripool.org/verilator/

# Code used
```

\TLV_version 1d: tl-x.org
\SV
     /* verilator lint_off WIDTH*/  /* verilator lint_off CASEINCOMPLETE */
//Your Verilog/System Verilog Code Starts Here:
`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/10/2022 06:23:45 PM
// Design Name: 
// Module Name: anand_seq
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module anand_seq(I,CLK,RST,Z);
input I,CLK,RST;
output reg Z;
reg [4:0]state;
parameter S0=5'b00000,S1=5'b00001,S2=5'b00010,S3=5'b00011,S4=5'b00100;

always @(posedge CLK,posedge RST) 
begin
if (RST==0) 
state <= S0;

else
begin

if (I ==0)
case (state)
S0: state <= S0;
S1: state <=S2;
S2: state <=S3;
S3: state <= S0;
S4: state <= S0;

 endcase

 else 
 case ( state)
S0: state <= S1;
S1: state <=S1;
S2: state <=S1;
S3: state <= S4;
S4: state <= S1;
 endcase  
 
 if ((I == 1)&&(state == S4)) Z <=1;
 else Z <=0;
end
 end
endmodule


//Top Module Code Starts here:
	module top(input logic clk, input logic reset, input logic [31:0] cyc_cnt, output logic passed, output logic failed);
		logic  I;//input
		logic  CLK;//input
		logic  RST;//input
		logic  Z;//output
//The $random() can be replaced if user wants to assign values
		assign I = 32'h9;
		assign CLK = 1;
		assign RST = 0;
		anand_seq anand_seq(.I(I), .CLK(CLK), .RST(RST), .Z(Z));
	
\TLV
//Add \TLV here if desired                                     
\SV
endmodule


```

# Waveforms
![Capture](https://user-images.githubusercontent.com/101328805/157678042-29132e9d-bd31-4b31-aa9d-6ea1896cc120.JPG)
## Acknowlegdements
1. FOSSEE, IIT Bombay
2. Steve Hoover, Founder, Redwood EDA
3. Kunal Ghosh, Co-founder, VSD Corp. Pvt. Ltd. - kunalpghosh@gmail.com
4. Sumanto Kar, eSim Team, FOSSEE
## References
[1] Digital Design by Morris Mano.


[2] Minns, Peter D., and Ian Elliott. FSM-based digital design using Verilog HDL. John Wiley & Sons, 2008.
