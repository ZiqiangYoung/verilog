`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:54:55 04/15/2021
// Design Name:   LookaheadAdder_4bit_M
// Module Name:   Z:/WorkSpace/Verilog/Young_02_LookaheadAdder_4bit/LookaheadAdder_4bit_M_Test.v
// Project Name:  Young_02_LookaheadAdder_4bit
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: LookaheadAdder_4bit_M
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module LookaheadAdder_4bit_M_Test;
	reg [3:0] A;
	reg [3:0] B;
	reg C0;
	wire C4;
	wire [3:0] F;
	
	LookaheadAdder_4bit_M uut (.A(A),.B(B),.C0(C0),.C4(C4),.F(F));

	initial begin
		A = 4'b0100;B = 4'b0011;C0 = 0;#100;//F=0111,C4=0
		A = 4'b1010;B = 4'b0101;C0 = 0;#100;//F=1111,C4=0
		A = 4'b0011;B = 4'b0010;C0 = 0;#100;//F=0101,C4=0
		A = 4'b1100;B = 4'b0111;C0 = 0;#100;//F=0011,C4=1
		A = 4'b1111;B = 4'b1111;C0 = 0;#100;//F=1110,C4=1
		A = 4'b0100;B = 4'b0011;C0 = 1;#100;//F=1110,C4=0
		A = 4'b1010;B = 4'b0101;C0 = 1;#100;//F=1110,C4=1
		A = 4'b0011;B = 4'b0010;C0 = 0;#100;//F=0110,C4=0
		A = 4'b1100;B = 4'b0111;C0 = 0;#100;//F=0110,C4=1
		A = 4'b1111;B = 4'b1111;C0 = 0;#100;//F=1111,C4=1
	end
endmodule

