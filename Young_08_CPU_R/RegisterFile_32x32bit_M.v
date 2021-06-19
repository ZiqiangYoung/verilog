`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:04:01 04/29/2021 
// Design Name: 
// Module Name:    RegisterFile_32x32bit_M 
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
module RegisterFile_32x32bit_M(R_Addr_A,R_Addr_B,W_Addr,W_Data,Write_Reg,R_Data_A,R_Data_B,Reset,clk);
	
	input [4:0] R_Addr_A,R_Addr_B,W_Addr;
	input Write_Reg;
	input Reset,clk;
	input [31:0] W_Data;
	
	output [31:0] R_Data_A,R_Data_B;	
	
	integer i;
	reg [31:0] REG_Files [0:31];//存储器类型 # R是32（0:31）x32bit(31:0)的存储器
	
	always @ (posedge Reset	or posedge clk)
		begin
			if(Reset)
				for(i=0;i<32;i=i+1)
					REG_Files[i] <= 32'b0;
			else if(Write_Reg)
				REG_Files[W_Addr] <= W_Data;
		end
	
	assign R_Data_A = REG_Files [R_Addr_A];//32-1A数据选择器，32位
	assign R_Data_B = REG_Files [R_Addr_B];//32-1B数据选择器，32位
	
endmodule
