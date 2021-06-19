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
	//���һ�����Ŵ���C31,default x
	//ֻ�Դ������������������б�ʾ���������
	//OF��ʽ������ABF�������Чλ�ͷ���λ��λ���(����λ31���������Чλ30)
	
endmodule

	/*
	//���µ�always�ǰ��տα�Ҫ�����Ϊ��ģ��ʽ��ģ�ģ������źű�Ϊ*��
	//�����������źŵ�ƽ�仯�͸ߵ�ƽ״̬�����������ֵ�ı䡣
	//��ᵼ�³���������벻����������
	
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
				//�����߰������ȫ���漰��������default��
			endcase
		end
	*/