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
		���µ�always�ǰ��տα�Ҫ�����Ϊ��ģ��ʽ��ģ�ģ�������ʵ������ʱ����Ƶ�·
		�����źű�ʵ��Ϊ*�������������źŵ�ƽ�仯��������F�Ĵ�����ֵ�ı�
		��������������Ӧ����������������ģ��ʽ����������Ӳ�����߼����Ƶ�·
		��ʱ���·Ҳ���ǲ����ԣ����ǻ����ɶ����������������λ����
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
				//�����߰������ȫ���漰��������default��
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
	//���һ�����Ŵ���C31,default x
	//ֻ�Դ������������������б�ʾ���������
	//OF��ʽ������ABF�������Чλ�ͷ���λ��λ���(����λ31���������Чλ30)
		
endmodule
