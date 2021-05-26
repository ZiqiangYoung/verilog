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
	input [4:0] R_Addr_A,R_Addr_B,W_Addr;//�Ĵ�����
	input Write_Reg;//д��ʹ���ź�
	input Reset,Clk;//�Ĵ�����0�źš�ʱ���ź�
	input [31:0] W_Data;//��Ҫд�������
	
	output [31:0] R_Data_A,R_Data_B;//��Ӧ�Ĵ����ŵ�����
	
	integer i;//ѭ�����Ʊ���
	reg [31:0] REG_Files [0:31];//�洢������ # R��32��0:31��x32bit(31:0)�Ĵ洢��
	
	always @ (posedge Clk or posedge Reset)
	begin
		if(Reset)
			begin
				for(i=0;i<32;i=i+1)
					begin
						REG_Files [i] <= 32'b0;//��������ֵ�����мĴ�����������
					end
			end
		else
			begin
				if(Write_Reg)
					begin
						REG_Files [W_Addr] <= W_Data;//д�����ݣ���������ֵ
					end
			end
	end
	
	assign R_Data_A = REG_Files [R_Addr_A];//32-1A����ѡ������32λ
	assign R_Data_B = REG_Files [R_Addr_B];//32-1B����ѡ������32λ
	
endmodule
