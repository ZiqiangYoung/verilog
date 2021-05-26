`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:13:17 05/20/2021 
// Design Name: 
// Module Name:    Comprehensive 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 按照泛雅题目要求，根据rs,rt两寄存器号去读出数据，将这两个数据送去ALU运算，运算结果F作为RAM存储单元号
//			RAM读取数据和F根据rw_data_s信号的值竞争写入rd为寄存器号的寄存器。此外rt寄存器号读出的数据还可存进RAM。
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module Comprehensive(clk,Write_Reg,ALU_OP,Mem_Write,wr_data_s,Reset,rs,rt,rd,ZF,OF,//正常引脚
		M_R_Data,R_Data_A,R_Data_B,W_Data,Mem_Addr,A,B,F,R_Addr_A,R_Addr_B,W_Addr,M_W_Data//debug引脚
	);
	input clk,Write_Reg,Mem_Write,Reset;//重置信号、时钟信号、2‘写入使能控制信号|4
	input [1:0] wr_data_s;//写入寄存器堆数据选择控制信号|1
	input [2:0] ALU_OP;//ALU计算功能选择控制信号|1
	input [4:0] rs,rt,rd;//寄存器号|3
	
	output ZF,OF;//运算结果标志信号|2
	output [31:0] R_Data_A,R_Data_B;//读出指定寄存器号的数据|2
	output [31:0] M_R_Data;//读出RAM指定存储单元号的数据|1
	output [5:0] Mem_Addr;//需要读写RAM的储存单元号|1
	output [31:0] M_W_Data;//写入RAM指定存储单元的数据|1
	
	output reg [31:0] W_Data;//写入指定寄存器号的数据|1

	output wire [32:1] A,B,F;//ALU运算数据|3
	
	assign A[32:1] = R_Data_A[31:0];
	assign B[32:1] = R_Data_B[31:0];
	assign M_W_Data = R_Data_B;
	assign Mem_Addr[5:0] = F[6:1];
	
	output wire [4:0] R_Addr_A,R_Addr_B,W_Addr;//需要读写数据的寄存器号|3
	
	assign R_Addr_A = rs;
	assign R_Addr_B = rt;
	assign W_Addr = rd;
	
	always @ (wr_data_s,F,M_R_Data)
	 begin
		case(wr_data_s)
			2'b00: W_Data[31:0] <= F[32:1];
			2'b01: W_Data <= M_R_Data;
			default: W_Data <= 32'hFFFF_FFFF;
		endcase
	 end
	
	MultifunctionalALU_32bit_M MultifunctionalALU_32bit_I (
		.A(A),
		.B(B),
		.F(F),
		.ZF(ZF),
		.OF(OF),
		.ALU_OP(ALU_OP)
	);
	
	RegisterFile_32x32bit_M RegisterFile_32x32bit_I (
		.R_Addr_A(R_Addr_A), 
		.R_Addr_B(R_Addr_B), 
		.W_Addr(W_Addr), 
		.W_Data(W_Data), 
		.Write_Reg(Write_Reg), 
		.R_Data_A(R_Data_A), 
		.R_Data_B(R_Data_B), 
		.Reset(Reset), 
		.clk(clk)
	);
	
	RAM_64x32bit_M RAM_64x32bit_I (
		.clk(clk), 
		.Mem_Write(Mem_Write), 
		.Mem_Addr(Mem_Addr), 
		.M_W_Data(M_W_Data), 
		.M_R_Data(M_R_Data)
	);


	endmodule
