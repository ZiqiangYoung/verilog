`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:58:27 06/10/2021 
// Design Name: 
// Module Name:    CPU_R_M 
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
module CPU_R_M(clk,Reset,ZF,OF,
		imm,OP,func,ALU_OP,Write_Reg,//Inst_Decoder Debug引脚
		rs,R_Data_A,rt,R_Data_B,rd,W_Data//Reg_Data Debug引脚
    );
	input clk,Reset;
	
	output ZF,OF;
	output Write_Reg;
	output [5:0] OP,func;
	output [2:0] ALU_OP;
	output [4:0] rs,rt,rd;
	output [31:0] W_Data,R_Data_A,R_Data_B,imm;//W_Data也为ALU运算结果F,imm也为指令Inst
	
	wire [4:0] shamt;
	wire [25:0] address;
	
	DecodingController_M DecodingController_I(
		.OP(OP),
		.func(func),
		.ALU_OP(ALU_OP),
		.Write_Reg(Write_Reg)
	);
	
	Fetch_Inst_M Fetch_Inst_I (
		.Reset(Reset), 
		.clk(clk), 
		.op_code(OP), 
		.rs_addr(rs), 
		.rt_addr(rt), 
		.rd_addr(rd), 
		.shamt(shamt), 
		.func(func), 
		.imm(imm), 
		.address(address)
	);

	MultifunctionalALU_32bit_M MultifunctionalALU_32bit_I (
		.A(R_Data_A),
		.B(R_Data_B),
		.F(W_Data),
		.ZF(ZF),
		.OF(OF),
		.ALU_OP(ALU_OP)
	);
	
	RegisterFile_32x32bit_M RegisterFile_32x32bit_I (
		.R_Addr_A(rs), 
		.R_Addr_B(rt), 
		.W_Addr(rd), 
		.W_Data(W_Data), 
		.Write_Reg(Write_Reg), 
		.R_Data_A(R_Data_A), 
		.R_Data_B(R_Data_B), 
		.Reset(Reset), 
		.clk(~clk)
	);
	
	
endmodule
