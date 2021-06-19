`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:54:21 04/21/2021 
// Design Name: 
// Module Name:    MultifunctionalALU_32bit_M 
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
module MultifunctionalALU_32bit_M(A,B,F,ZF,OF,ALU_OP);
	input [31:0] A;
	input [31:0] B;
	input [2 :0] ALU_OP;
	
	output [31:0] F;
	output ZF,OF;
	
	wire [32:0] F_ADD,F_SUB;
	
	assign F_ADD=A+B;
	assign F_SUB=A-B;
	
	assign F=(ALU_OP==3'b000)?(A&B):
				(ALU_OP==3'b001)?(A|B):
				(ALU_OP==3'b010)?(A^B):
				(ALU_OP==3'b011)?(~(A|B)):
				(ALU_OP==3'b100)?F_ADD[31:0]:
				(ALU_OP==3'b101)?F_SUB[31:0]:
				(ALU_OP==3'b110)?(A<B):
				(B<<A);
	
	assign ZF = F==0;
	assign OF = A[30]^B[30]^F[30]^(
					(ALU_OP==3'b100)?F_ADD[32]:
					(ALU_OP==3'b101)?F_SUB[32]:
					1'bX);
	//最后一个括号代表C31,default x
	//只对带符号数的算数运算有表示溢出的意义
	//OF算式意义是ABF的最高有效位和符号位进位异或(符号位31，则最高有效位30)
	
endmodule

	/*
	//以下的always是按照课本要求的行为建模方式建模的，敏感信号表为*，
	//即任意输入信号电平变化和高电平状态都会引起输出值改变。
	//这会导致出现许多意想不到的锁存器
	
	output reg [31:0] F;
	reg C31;
	
	always @ *
		begin
			case(ALU_OP)
				3'b000: F<=A&B;
				3'b001: F<=A|B;
				3'b010: F<=A^B;
				3'b011: F<=~(A|B);
				3'b100: {C31,F}<=A+B;
				3'b101: {C31,F}<=A-B;//A+~B+1
				3'b110: F<=A<B;//A<B?1,0
				3'b111: F<=B<<A;
				//三根线八种情况全部涉及到，不用default了
			endcase
		end
	*/