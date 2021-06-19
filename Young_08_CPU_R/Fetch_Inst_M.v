`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:39:10 06/15/2021 
// Design Name: 
// Module Name:    Fetch_Inst_M 
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
module Fetch_Inst_M(Reset,clk,op_code,rs_addr,rt_addr,rd_addr,shamt,func,imm,address
	);
	input clk,Reset;
	
	output [5:0] op_code;
	output [4:0] rs_addr;
	output [4:0] rt_addr;
	output [4:0] rd_addr;
	output [4:0] shamt;
	output [5:0] func;
	output [31:0] imm;
	output [25:0] address;
	
	wire [31:0] Inst_code;
	reg [5:0] PC;
	wire [6:0] PC_new;
	
	always @ (posedge clk or posedge Reset)
		begin
			if (Reset)
				PC<=0;
			else
				PC[5:0]<=PC_new[5:0];
		end
	
	assign PC_new = PC+1;
	
	Inst_ROM_64x32bit_M Inst_ROM_64x32bit_I (
		.Inst_addr(PC),
		.clk(clk),
		.Inst_code(Inst_code)
	);
	
	assign op_code[5:0]=Inst_code[31:26];
	assign rs_addr[4:0]=Inst_code[25:21];
	assign rt_addr[4:0]=Inst_code[20:16];
	assign rd_addr[4:0]=Inst_code[15:11];
	assign shamt[4:0]=Inst_code[10:6];
	assign func[5:0]=Inst_code[5:0];
	assign imm=Inst_code;
	assign address[25:0]=Inst_code[25:0];

endmodule