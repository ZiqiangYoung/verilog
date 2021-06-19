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
	//暂时只有R型CPU的几个控制信号
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
					 3'bX//剩余R型指令 预留
				)://以上为R型指令
				3'bX;//其他类型指令 预留
	
	assign Write_Reg=(OP==6'b000_000)?1'b1://现有全部R型指令，若新增R型指令Write_Reg!=1则需要重构
							1'b0;//其他类型指令 预留

endmodule

	/*
	//以下的always是按照课本要求的行为建模方式建模的，敏感信号表为*，
	//即任意输入信号电平变化和高电平状态都会引起输出值改变。
	//这会导致出现许多意想不到的锁存器
	
	
	output reg [2:0] ALU_OP;
	output reg Write_Reg;
	
	always @ *
		begin
			case(OP)
				6'b000_000://R型指令
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
							default://default R型指令
								begin
									Write_Reg<=0;
								end
						endcase
					end
				default://非R型指令
					begin
						Write_Reg<=0;
					end
			endcase
		end
	*/	