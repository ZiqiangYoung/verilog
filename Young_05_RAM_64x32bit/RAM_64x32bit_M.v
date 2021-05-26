`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:38:00 05/13/2021 
// Design Name: 
// Module Name:    RAM_64x32bit_M 
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
module RAM_64x32bit_M(clk,Mem_Write,Mem_Addr,M_W_Data,M_R_Data);

	input clk,Mem_Write;//ʱ���źţ�д��ʹ���ź�
	input [31:0] M_W_Data;//д������
	input [5:0] Mem_Addr;//д��Ĵ�����(��ַ)

	output [31:0] M_R_Data;//��������

	RAM_64x32bit_C RAM_64x32bit_IC (
		.clka(clk), // input clka
		.wea(Mem_Write), // input [0 : 0] wea
		.addra(Mem_Addr [5:0]), // input [5 : 0] addra
		.dina(M_W_Data), // input [31 : 0] dina
		.douta(M_R_Data) // output [31 : 0] douta
	);

endmodule
