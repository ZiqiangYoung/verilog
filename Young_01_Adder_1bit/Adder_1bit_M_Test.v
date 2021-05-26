`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   08:41:20 04/21/2021
// Design Name:   Adder_1bit_M
// Module Name:   Z:/WorkSpace/Verilog/Young_01_Adder_1bit/Adder_1bit_M_Test.v
// Project Name:  Young_01_Adder_1bit
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Adder_1bit_M
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Adder_1bit_M_Test;
	reg A,B,C0;
	wire C1,F;
	
	Adder_1bit_M uut (.A(A),.B(B),.C0(C0),.C1(C1),.F(F));

	initial begin
		A = 0;B = 0;C0 = 0;#100;
		A = 0;B = 1;C0 = 0;#100;
		A = 1;B = 0;C0 = 0;#100;
		A = 1;B = 1;C0 = 0;#100;
		A = 0;B = 0;C0 = 1;#100;
		A = 0;B = 1;C0 = 1;#100;
		A = 1;B = 0;C0 = 1;#100;
		A = 1;B = 1;C0 = 1;#100;
	end
      
endmodule

