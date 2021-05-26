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
module Comprehensive(clk,Write_Reg,ALU_OP,Mem_Write,wr_data_s,Reset,rs,rt,rd,ZF,OF,//��������
		M_R_Data,R_Data_A,R_Data_B,W_Data,Mem_Addr,A,B,F,R_Addr_A,R_Addr_B,W_Addr,M_W_Data//debug����
	);
	input clk,Write_Reg,Mem_Write,Reset;//�����źš�ʱ���źš�2��д��ʹ�ܿ����ź�|4
	input [1:0] wr_data_s;//д��Ĵ���������ѡ������ź�|1
	input [2:0] ALU_OP;//ALU���㹦��ѡ������ź�|1
	input [4:0] rs,rt,rd;//�Ĵ�����|3
	
	output ZF,OF;//��������־�ź�|2
	output [31:0] R_Data_A,R_Data_B;//����ָ���Ĵ����ŵ�����|2
	output [31:0] M_R_Data;//����RAMָ���洢��Ԫ�ŵ�����|1
	output [5:0] Mem_Addr;//��Ҫ��дRAM�Ĵ��浥Ԫ��|1
	output [31:0] M_W_Data;//д��RAMָ���洢��Ԫ������|1
	
	output reg [31:0] W_Data;//д��ָ���Ĵ����ŵ�����|1

	output wire [32:1] A,B,F;//ALU��������|3
	
	assign A[32:1] = R_Data_A[31:0];
	assign B[32:1] = R_Data_B[31:0];
	assign M_W_Data = R_Data_B;
	assign Mem_Addr[5:0] = F[6:1];
	
	output wire [4:0] R_Addr_A,R_Addr_B,W_Addr;//��Ҫ��д���ݵļĴ�����|3
	
	assign R_Addr_A = rs;
	assign R_Addr_B = rt;
	assign W_Addr = rd;
	
	always @ (wr_data_s,F,M_R_Data)
	 begin
		case(wr_data_s)
			2'b00: W_Data[31:0] <= F[32:1];
			2'b01: W_Data <= M_R_Data;
			default: W_Data <= 32'hFFFF_FFFF;
		endcase
	 end
	
	MultifunctionalALU_32bit_M MultifunctionalALU_32bit_I (
		.A(A),
		.B(B),
		.F(F),
		.ZF(ZF),
		.OF(OF),
		.ALU_OP(ALU_OP)
	);
	
	RegisterFile_32x32bit_M RegisterFile_32x32bit_I (
		.R_Addr_A(R_Addr_A), 
		.R_Addr_B(R_Addr_B), 
		.W_Addr(W_Addr), 
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
		.Mem_Addr(Mem_Addr), 
		.M_W_Data(M_W_Data), 
		.M_R_Data(M_R_Data)
	);


	endmodule
