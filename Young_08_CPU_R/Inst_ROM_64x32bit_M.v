`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:28:59 06/03/2021 
// Design Name: 
// Module Name:    Inst_ROM_64x32bit_M 
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
module Inst_ROM_64x32bit_M(Inst_addr,clk,Inst_code
    );
	input [5:0] Inst_addr;
	input clk;
	output [31:0] Inst_code;
	Inst_ROM_64x32bit_C Inst_ROM_64x32bit_IC (
		.a(Inst_addr), // input [5 : 0] a
		.clk(clk), // input clk
		.spo(Inst_code) // output [31 : 0] spo
	);

endmodule
