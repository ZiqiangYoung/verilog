`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:52:40 04/15/2021 
// Design Name: 
// Module Name:    LookaheadAdder_4bit_M 
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
module LookaheadAdder_4bit_M(A,B,C0,C4,F);
	input [3:0] A;
	input [3:0] B;
	input C0;
	
	output [3:0] F;
	output C4;
	
	wire [4:0] C; 
	wire [3:0] G,P;
	
	assign G=A&B;
	assign P=A|B;
	
	
	assign C[0]=C0;
	assign C[1]=G[0] | 																  	                P[0]&C0;
	assign C[2]=G[1] | 												 	 P[1]&G[0] |           P[1]&P[0]&C0;
   assign C[3]=G[2] | 						P[2]&G[1] |	     P[2]&P[1]&G[0] |      P[2]&P[1]&P[0]&C0;
	assign C[4]=G[3] | P[3]&G[2] | P[3]&P[2]&G[1] | P[3]&P[2]&P[1]&G[0] | P[3]&P[2]&P[1]&P[0]&C0;
	
	assign C4=C[4];
	assign F = A^B^C[3:0];
endmodule