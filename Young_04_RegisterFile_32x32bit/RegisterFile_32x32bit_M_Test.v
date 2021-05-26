`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:58:55 05/06/2021
// Design Name:   RegisterFile_32x32bit_M
// Module Name:   Z:/WorkSpace/Verilog/Young_04_RegisterFile_32x32bit/RegisterFile_32x32bit_M_Test.v
// Project Name:  Young_04_RegisterFile_32x32bit
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: RegisterFile_32x32bit_M
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module RegisterFile_32x32bit_M_Test;

	// Inputs
	reg [4:0] R_Addr_A;
	reg [4:0] R_Addr_B;
	reg [4:0] W_Addr;
	reg [31:0] W_Data;
	reg Write_Reg;
	reg Reset;
	reg Clk;

	// Outputs
	wire [31:0] R_Data_A;
	wire [31:0] R_Data_B;

	// Instantiate the Unit Under Test (UUT)
	RegisterFile_32x32bit_M uut (
		.R_Addr_A(R_Addr_A), 
		.R_Addr_B(R_Addr_B), 
		.W_Addr(W_Addr), 
		.W_Data(W_Data), 
		.Write_Reg(Write_Reg), 
		.R_Data_A(R_Data_A), 
		.R_Data_B(R_Data_B), 
		.Reset(Reset), 
		.Clk(Clk)
	);

	initial begin
		//初始化信号
		Clk=0;
		Reset = 0;
		Write_Reg = 0;
		R_Addr_A = 5'b000_00;
		R_Addr_B = 5'b111_11;
		#100
		
		//clk上升，读0,31(X,X)
		Clk = 1;#100;
		
		//reset上升，清零(读0,31(0,0))&clk下降，准备信号。
		Reset = 1;
		Clk = 0;
		W_Addr = 5'b000_01;
		W_Data = 32'hFFFF_AAAA;
		Write_Reg = 1;
		#100;
		
		//reset下降,clk上升,读0,31(0,0),写1(FFFF_AAAA)
		Reset = 0;Clk = 1;#100;
		
		//clk下降,准备信号(读1,31,(FFFF_AAAA,0))
		Clk = 0;
		R_Addr_A = 5'b000_01;
		W_Addr = 5'b111_10;
		W_Data = 32'hAAAA_FFFF;
		Write_Reg = 1;
		#100;
		
		//clk上升，读1,31,(FFFF_AAAA,0),写30(AAAA_FFFF)
		Clk = 1;#100;
		
		//clk下降，准备信号(读1,30,(FFFF_AAAA,AAAA_FFFF))
		Clk = 0;
		R_Addr_A = 5'b0000_1;
		R_Addr_B = 5'b1111_0;
		Write_Reg = 0;
		#100;
		
		//clk上升，读1,30,(FFFF_AAAA,AAAA_FFFF)
		Clk = 1;#100;
	end
      
endmodule

