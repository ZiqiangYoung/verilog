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
	
	output reg [31:0] F;//��Ϊ��ģ��ʽalways����Ϊwire������ģ�͵����ߣ�������˲�����wire��
	output ZF,OF;
	
	reg C31;//�ڼӼ������з���λ(���λ31λ)�Ľ�λ
	
	always @ *
		begin//�����ʵ����ֻ��ִ��һ����䣬���Բ���Ҫ�����÷�������ֵ<=���Ч��
			case(ALU_OP)
				3'b000: F=A&B;
				3'b001: F=A|B;
				3'b010: F=A^B;
				3'b011: F=~(A|B);
				3'b100:
					begin
						{C31,F}=A+B;
					end
				3'b101:
					begin
						{C31,F}=A-B;//A+~B+1
					end
				3'b110: F=A<B;//A<B?1,0
				3'b111: F=B<<A;//<<<����������
			endcase
		end
					
		assign ZF = F==0;//F������������ʱ����λ���ݲ�������
		assign OF = A[30]^B[30]^F[30]^C31;//ͬ�ϣ���ֻ�Դ������������������б�ʾ���������
		//OP��������ABF�������Чλ�ͷ���λ��λ���(����λ31���������Чλ30)
		
endmodule
