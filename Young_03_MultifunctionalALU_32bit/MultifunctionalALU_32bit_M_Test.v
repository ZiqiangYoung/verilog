`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   12:13:36 04/22/2021
// Design Name:   MultifunctionalALU_32bit_M
// Module Name:   Z:/WorkSpace/Verilog/Young_03_MultifunctionalALU_32bit/MultifunctionalALU_32bit_M_Test.v
// Project Name:  Young_03_MultifunctionalALU_32bit
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: MultifunctionalALU_32bit_M
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module MultifunctionalALU_32bit_M_Test;

	reg [32:1] A;
	reg [32:1] B;
	reg [2:0] ALU_OP;


	wire [32:1] F;
	wire ZF;
	wire OF;

	MultifunctionalALU_32bit_M uut (.A(A),.B(B),.F(F),.ZF(ZF),.OF(OF),.ALU_OP(ALU_OP));

	initial begin
		//and 0ns
		A = 32'hFFFF_FFFF;B = 32'h0000_0000;ALU_OP = 3'b000;#100;//F=32'h0000_0000,ZF=1,OF=X
		A = 32'hFFFF_FFFF;B = 32'hFFFF_FFFF;ALU_OP = 3'b000;#100;//F=32'hFFFF_FFFF,ZF=0,OF=X
		A = 32'hFFFF_0000;B = 32'h0000_FFFF;ALU_OP = 3'b000;#100;//F=32'h0000_0000,ZF=1,OF=X
		//or 300ns
		A = 32'hFFFF_FFFF;B = 32'h0000_0000;ALU_OP = 3'b001;#100;//F=32'hFFFF_FFFF,ZF=0,OF=X
		A = 32'h0000_0000;B = 32'h0000_0000;ALU_OP = 3'b001;#100;//F=32'h0000_0000,ZF=1,OF=X
		A = 32'hFFFF_0000;B = 32'h0000_FFFF;ALU_OP = 3'b001;#100;//F=32'hFFFF_FFFF,ZF=0,OF=X
		//xor 600ns
		A = 32'hFFFF_0000;B = 32'hFFFF_0000;ALU_OP = 3'b010;#100;//F=32'h0000_0000,ZF=1,OF=X
		A = 32'hFFFF_0000;B = 32'h0000_FFFF;ALU_OP = 3'b010;#100;//F=32'hFFFF_FFFF,ZF=0,OF=X
		A = 32'hF0F0_0000;B = 32'h0F0F_0000;ALU_OP = 3'b010;#100;//F=32'hFFFF_0000,ZF=0,OF=X
		//nor 900ns
		A = 32'hFFFF_FFFF;B = 32'h0000_0000;ALU_OP = 3'b011;#100;//F=32'h0000_0000,ZF=1,OF=X
		A = 32'h0000_0000;B = 32'h0000_0000;ALU_OP = 3'b011;#100;//F=32'h0000_0000,ZF=0,OF=X
		A = 32'hFFFF_0000;B = 32'h0000_FFFF;ALU_OP = 3'b011;#100;//F=32'h0000_0000,ZF=1,OF=X
		//add 1200ns
		A = 32'h0000_FFFF;B = 32'h0000_FFFF;ALU_OP = 3'b100;#100;//F=32'h0001_FFFE,ZF=0,OF=0
		A = 32'h7FFF_0000;B = 32'h7FFF_0000;ALU_OP = 3'b100;#100;//F=32'hFFFE_0000,ZF=0,OF=1正溢出
		A = 32'h8FFF_0000;B = 32'h8FFF_0000;ALU_OP = 3'b100;#100;//F=32'h1FFE_0000,ZF=0,OF=1负溢出
		//sub 1500ns
		A = 32'hFFFF_0000;B = 32'hFFFF_0000;ALU_OP = 3'b101;#100;//F=32'h0000_0000,ZF=1,OF=0
		A = 32'h0000_0002;B = 32'h0000_0001;ALU_OP = 3'b101;#100;//F=32'h0000_0001,ZF=0,OF=0
		A = 32'h0000_0001;B = 32'h0000_0002;ALU_OP = 3'b101;#100;//F=32'h1111_1111,ZF=0,OF=0
		//a<b? 1800ns
		A = 32'h0000_0001;B = 32'hFFFF_0000;ALU_OP = 3'b110;#100;//F=32'h0000_0001,ZF=0,OF=X
		A = 32'h0000_0002;B = 32'h0000_0001;ALU_OP = 3'b110;#100;//F=32'h0000_0000,ZF=1,OF=X
		A = 32'h0000_0000;B = 32'h0000_0000;ALU_OP = 3'b110;#100;//F=32'h0000_0000,ZF=0,OF=X
		//b<<a 2100ns
		A = 32'h0000_0001;B = 32'h0000_FFFF;ALU_OP = 3'b111;#100;//F=32'h0001_FFFE,ZF=0,OF=X
		A = 32'h0000_0002;B = 32'h0000_FFFF;ALU_OP = 3'b111;#100;//F=32'h0003_FFFC,ZF=0,OF=X!!!!
		A = 32'h0000_0004;B = 32'h0000_FFFF;ALU_OP = 3'b111;#100;//F=32'h000F_FFF0,ZF=0,OF=X!!!!
		//null 2400ns
		A = 32'h0000_0000;B = 32'h0000_0000;ALU_OP = 3'b000;#100;//F=32'h0000_0000,ZF=0,OF=X
		A = 32'h0000_0000;B = 32'h0000_0000;ALU_OP = 3'b000;#100;//F=32'h0000_0000,ZF=0,OF=X
		A = 32'h0000_0000;B = 32'h0000_0000;ALU_OP = 3'b000;#100;//F=32'h0000_0000,ZF=0,OF=X
		
	end
      
endmodule

