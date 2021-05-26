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
	input [32:1] A;
	input [32:1] B;
	input [2 :0] ALU_OP;
	
	output reg [32:1] F;//行为建模方式always，因为wire是物理模型的连线，所以左端不能是wire型
	output ZF,OF;
	
	reg C32;//在加减运算中表示超出32位(0-31)有效范围的最高位进位/借位
	
	always @ *
		begin//这个块实际上只会执行一条语句，所以不需要考虑用非阻塞赋值<=提高效率
			case(ALU_OP)
				3'b000: F=A&B;
				3'b001: F=A|B;
				3'b010: F=A^B;
				3'b011: F=~(A|B);
				3'b100:
					begin
						{C32,F}=A+B;
					end
				3'b101:
					begin
						{C32,F}=A-B;//A+~B+1
					end
				3'b110: F=A<B;//A<B?1,0
				3'b111: F=B<<A;//<<<是算数左移
			endcase
		end
					
		assign ZF = F==0;//F中数据有意义时，该位数据才有意义
		assign OF = A[31]^B[31]^F[31]^C32;//同上，且只对带符号数的算数运算有表示溢出的意义
		
endmodule
