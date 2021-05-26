`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:06:19 04/17/2021 
// Design Name: 
// Module Name:    Adder_1bit_M 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module Adder_1bit_M(A,B,C0,C1,F);
	input A,B,C0;
	output C1,F;
	
	assign F=A^B^C0;
	assign C1=A&B | (A|B)&C0;

endmodule
