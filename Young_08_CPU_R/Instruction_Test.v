`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:46:30 06/03/2021
// Design Name:   Instruction
// Module Name:   Z:/WorkSpace/Verilog/Young_08_CPU_R/Instruction_Test.v
// Project Name:  Young_08_CPU_R
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Instruction
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Instruction_Test;

	// Inputs
	reg Reset;
	reg clk;

	// Outputs
	wire [5:0] op_code;
	wire [4:0] rs_addr;
	wire [4:0] rt_addr;
	wire [4:0] rd_addr;
	wire [4:0] shamt;
	wire [5:0] func;
	wire [31:0] imm;
	wire [25:0] address;

	// Instantiate the Unit Under Test (UUT)
	Instruction uut (
		.Reset(Reset), 
		.clk(clk), 
		.op_code(op_code), 
		.rs_addr(rs_addr), 
		.rt_addr(rt_addr), 
		.rd_addr(rd_addr), 
		.shamt(shamt), 
		.func(func), 
		.imm(imm), 
		.address(address)
	);

	initial begin
		Reset = 0;
		clk = 0;
		#100;
		
		Reset=1;
		#100;//reset…œ…˝£¨PC«Â¡„
		
		Reset=0;//reset÷√0
		clk=1;#100;//clk…œ…˝£¨∂¡0£∫0000_0000
		clk=0;#100;
		
		clk=1;#100;//clk…œ…˝£¨∂¡1£∫FFFF_FFFF
		clk=0;#100;
		
		clk=1;#100;//clk…œ…˝£¨∂¡2£∫0000_FFFF
		clk=0;#100;
		
		clk=1;#100;//clk…œ…˝£¨∂¡3£∫AAAA_AAAA
	end
      
endmodule

