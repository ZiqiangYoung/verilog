`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:13:19 06/16/2021 
// Design Name: 
// Module Name:    DecodingController_M 
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
module DecodingController_M(OP,func,ALU_OP,Write_Reg);
	//��ʱֻ��R��CPU�ļ��������ź�
	input [5:0] OP;
	input [5:0] func;

	output [2:0] ALU_OP;
	output Write_Reg;

	assign ALU_OP=(OP==6'b000_000)?(
					(func==6'b100_000)?3'b100://add
					(func==6'b100_010)?3'b101://sub
					(func==6'b100_100)?3'b000://and
					(func==6'b100_101)?3'b001://or
					(func==6'b100_110)?3'b010://xor
					(func==6'b100_111)?3'b011://nor
					(func==6'b101_011)?3'b110://sltu
					(func==6'b000_100)?3'b111://sllv
					 3'bX//ʣ��R��ָ�� Ԥ��
				)://����ΪR��ָ��
				3'bX;//��������ָ�� Ԥ��
	
	assign Write_Reg=(OP==6'b000_000)?1'b1://����ȫ��R��ָ�������R��ָ��Write_Reg!=1����Ҫ�ع�
							1'b0;//��������ָ�� Ԥ��

endmodule

	/*
	//���µ�always�ǰ��տα�Ҫ�����Ϊ��ģ��ʽ��ģ�ģ������źű�Ϊ*��
	//�����������źŵ�ƽ�仯�͸ߵ�ƽ״̬�����������ֵ�ı䡣
	//��ᵼ�³���������벻����������
	
	
	output reg [2:0] ALU_OP;
	output reg Write_Reg;
	
	always @ *
		begin
			case(OP)
				6'b000_000://R��ָ��
					begin
						case(func)
							6'b100_000://add
								begin
									ALU_OP<=3'b100;
									Write_Reg<=1;
								end
							6'b100_010://sub
								begin
									ALU_OP<=3'b101;
									Write_Reg<=1;
								end
							6'b100_100://and
								begin
									ALU_OP<=3'b000;
									Write_Reg<=1;
								end
							6'b100_101://or
								begin
									ALU_OP<=3'b001;
									Write_Reg<=1;
								end
							6'b100_110://xor
								begin
									ALU_OP<=3'b010;
									Write_Reg<=1;
								end
							6'b100_111://nor
								begin
									ALU_OP<=3'b011;
									Write_Reg<=1;
								end
							6'b101_011://sltu
								begin
									ALU_OP<=3'b110;
									Write_Reg<=1;
								end
							6'b000_100://sllv
								begin
									ALU_OP<=3'b111;
									Write_Reg<=1;
								end
							default://default R��ָ��
								begin
									Write_Reg<=0;
								end
						endcase
					end
				default://��R��ָ��
					begin
						Write_Reg<=0;
					end
			endcase
		end
	*/	