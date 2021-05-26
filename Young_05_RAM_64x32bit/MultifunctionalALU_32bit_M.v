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
	
	output reg [32:1] F;//��Ϊ��ģ��ʽalways����Ϊwire������ģ�͵����ߣ�������˲�����wire��
	output ZF,OF;
	
	reg C32;//�ڼӼ������б�ʾ����32λ(0-31)��Ч��Χ�����λ��λ/��λ
	
	always @ *
		begin//�����ʵ����ֻ��ִ��һ����䣬���Բ���Ҫ�����÷�������ֵ<=���Ч��
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
				3'b111: F=B<<A;//<<<����������
			endcase
		end
					
		assign ZF = F==0;//F������������ʱ����λ���ݲ�������
		assign OF = A[31]^B[31]^F[31]^C32;//ͬ�ϣ���ֻ�Դ������������������б�ʾ���������
		
endmodule
