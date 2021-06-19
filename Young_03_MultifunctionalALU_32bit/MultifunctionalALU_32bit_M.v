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
	
	/*
		以下的always是按照课本要求的行为建模方式建模的，产生的实际上是时序控制电路
		敏感信号表实际为*，即任意输入信号电平变化都会引起F寄存器的值改变
		但是在我设想中应当是用数据流级建模方式，产生的是硬布线逻辑控制电路
		用时序电路也不是不可以，但是会生成额外的锁存器，按电位触发
	reg F,C31;
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
	
	wire [31:0] F_AND,F_OR,F_XOR,F_NOR,F_SHIFT_LEFT;
	wire [32:0] F_ADD,F_SUB;
	wire F_LessCMP;
	
	assign F_AND=A&B;
	assign F_OR=A|B;
	assign F_XOR=A^B;
	assign F_NOR=~(A|B);
	assign F_ADD=A+B;
	assign F_SUB=A-B;
	assign F_SHIFT_LEFT=A<<B;
	assign F_LessCMP=A<B;
	
	assign F=(ALU_OP==3'b000)?F_AND:
				(ALU_OP==3'b001)?F_OR:
				(ALU_OP==3'b010)?F_XOR:
				(ALU_OP==3'b011)?F_NOR:
				(ALU_OP==3'b100)?F_ADD[31:0]:
				(ALU_OP==3'b101)?F_SUB[31:0]:
				(ALU_OP==3'b110)?F_LessCMP:
				(ALU_OP==3'b111)?F_SHIFT_LEFT;
	
	assign ZF = F==0;
	assign OF = A[30]^B[30]^F[30]^(
					(ALU_OP==3'b100)?F_ADD[32]:
					(ALU_OP==3'b101)?F_SUB[32]:
					1'bX);
	//最后一个括号代表C31,default x
	//只对带符号数的算数运算有表示溢出的意义
	//OF算式意义是ABF的最高有效位和符号位进位异或(符号位31，则最高有效位30)
		
endmodule
