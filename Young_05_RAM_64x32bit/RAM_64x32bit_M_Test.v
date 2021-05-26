`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:03:02 05/13/2021
// Design Name:   RAM_64x32bit_M
// Module Name:   Z:/WorkSpace/Verilog/Young_05_RAM_64x32bit/RAM_64x32bit_M_Test.v
// Project Name:  Young_05_RAM_64x32bit
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: RAM_64x32bit_M
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module RAM_64x32bit_M_Test;

	// Inputs
	reg clk;
	reg Mem_Write;
	reg [7:0] Mem_Addr;
	reg [31:0] M_W_Data;

	// Outputs
	wire [31:0] M_R_Data;

	// Instantiate the Unit Under Test (UUT)
	RAM_64x32bit_M uut (
		.clk(clk), 
		.Mem_Write(Mem_Write), 
		.Mem_Addr(Mem_Addr), 
		.M_W_Data(M_W_Data), 
		.M_R_Data(M_R_Data)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		Mem_Write = 1;//写
		Mem_Addr = 8'b0000_0000;//读0号寄存器
		M_W_Data = 32'hAAAA_AAAA;
		#100;
		clk=1;//clk上升
		//Mem_Write = 1;//Write上升，写入0号寄存器
		Mem_Addr = 8'b0000_0000;//测试低位无效
		#100;
		clk=0;//clk下降
		#100;
		clk=1;//clk上升，写入的读取生效
		#100;
		clk=0;//clk下降
		Mem_Write = 0;//Write下降
		Mem_Addr = 8'b0000_0100;//读1号寄存器
		#100;
		clk=1;//clk上升
		#100;
	end
      
endmodule

