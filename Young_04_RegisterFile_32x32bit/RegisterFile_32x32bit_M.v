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
module RegisterFile_32x32bit_M(R_Addr_A,R_Addr_B,W_Addr,W_Data,Write_Reg,R_Data_A,R_Data_B,Reset,Clk);
	input [4:0] R_Addr_A,R_Addr_B,W_Addr;//寄存器号
	input Write_Reg;//写入使能信号
	input Reset,Clk;//寄存器清0信号、时钟信号
	input [31:0] W_Data;//需要写入的数据
	
	output [31:0] R_Data_A,R_Data_B;//相应寄存器号的数据
	
	integer i;//循环控制变量
	reg [31:0] REG_Files [0:31];//存储器类型 # R是32（0:31）x32bit(31:0)的存储器
	
	always @ (posedge Clk or posedge Reset)
	begin
		if(Reset)
			begin
				for(i=0;i<32;i=i+1)
					begin
						REG_Files [i] <= 32'b0;//非阻塞赋值，所有寄存器挨个清零
					end
			end
		else
			begin
				if(Write_Reg)
					begin
						REG_Files [W_Addr] <= W_Data;//写入数据，非阻塞赋值
					end
			end
	end
	
	assign R_Data_A = REG_Files [R_Addr_A];//32-1A数据选择器，32位
	assign R_Data_B = REG_Files [R_Addr_B];//32-1B数据选择器，32位
	
endmodule
