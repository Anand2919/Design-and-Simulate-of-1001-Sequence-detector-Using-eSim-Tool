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

