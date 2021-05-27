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
// Description: ���շ�����ĿҪ�󣬸���rs,rt���Ĵ�����ȥ�������ݣ���������������ȥALU���㣬������F��ΪRAM�洢��Ԫ��
//			RAM��ȡ���ݺ�F����rw_data_s�źŵ�ֵ����д��rdΪ�Ĵ����ŵļĴ���������rt�Ĵ����Ŷ��������ݻ��ɴ��RAM��
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module Comprehensive(clk,Reset,Write_Reg,Mem_Write,wr_data_s,rs,rt,rd,ALU_OP,ZF,OF,//��������
		R_Data_A,R_Data_B,W_Data,F,M_R_Data//debug����
	);
	input clk,Write_Reg,Mem_Write,Reset;//�����źš�ʱ���źš�2д��ʹ�ܿ����ź�|4
	input [1:0] wr_data_s;//д��Ĵ���������ѡ������ź�|1
	input [2:0] ALU_OP;//ALU���㹦��ѡ������ź�|1
	input [4:0] rs,rt,rd;//�Ĵ�����|3
	//��Ĵ�����Addr���� assign R_Addr_A = rs;assign R_Addr_B = rt;assign W_Addr = rd;
	
	output ZF,OF;//��������־�ź�|2
	output [31:0] R_Data_A,R_Data_B;//����ָ���Ĵ����ŵ�����|2
	//��AB���ö˿� assign A[31:0] = R_Data_A[31:0];assign B[31:0] = R_Data_B[31:0];
	//��B���ö˿�	assign M_W_Data = R_Data_B;
	
	output [31:0] F;//ALU��������|3
	//��Mem_Addr���ö˿� assign Mem_Addr = F[5:0];	
	
	output [31:0] M_R_Data;//����RAMָ���洢��Ԫ�ŵ�����|1	
	output reg [31:0] W_Data;//д��ָ���Ĵ����ŵ�����|1	
	
	always @ (wr_data_s,F,M_R_Data)
	 begin
		case(wr_data_s)
			2'b00: W_Data <= F;
			2'b01: W_Data <= M_R_Data;
			default: W_Data <= 32'hFFFF_FFFF;
		endcase
	 end
	
	MultifunctionalALU_32bit_M MultifunctionalALU_32bit_I (
		.A(R_Data_A),
		.B(R_Data_B),
		.F(F),
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
		.clk(clk)
	);
	
	RAM_64x32bit_M RAM_64x32bit_I (
		.clk(clk), 
		.Mem_Write(Mem_Write), 
		.Mem_Addr(F[5:0]), 
		.M_W_Data(R_Data_B), 
		.M_R_Data(M_R_Data)
	);


	endmodule
