`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:13:25 06/10/2021
// Design Name:   CPU_R_M
// Module Name:   Z:/WorkSpace/Verilog/Young_08_CPU_R/CPU_R_M_Test.v
// Project Name:  Young_08_CPU_R
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: CPU_R_M
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module CPU_R_M_Test;
	reg clk;
	reg Reset;
	wire ZF,OF;
	
	wire [31:0] imm;
	wire [5:0] OP,func;
	wire [2:0] ALU_OP;
	wire Write_Reg;
	
	wire [4:0] rs;
	wire [31:0] R_Data_A;
	wire [4:0] rt;
	wire [31:0] R_Data_B;
	wire [4:0] rd;
	wire [31:0] W_Data;
	integer i;

	// Instantiate the Unit Under Test (UUT)
	CPU_R_M uut (
		.clk(clk), 
		.Reset(Reset), 
		.ZF(ZF), 
		.OF(OF),
		
		.imm(imm),
		.OP(OP),
		.func(func),
		.ALU_OP(ALU_OP),
		.Write_Reg(Write_Reg),
		//Inst_Decoder Debug引脚
		.rs(rs),
		.R_Data_A(R_Data_A),
		.rt(rt),
		.R_Data_B(R_Data_B),
		.rd(rd),
		.W_Data(W_Data)//Reg_Data Debug引脚
		);

	initial begin
		//初始值
		clk = 0;
		Reset = 0;
		#100;
		//初始化寄存器堆
      Reset=1;#100;
		//初始化结束，Reset复位
		Reset=0;
		
		for (i=0;i<64;i=i+1)
			begin
				clk=~clk;
				#100;
			end
	end
       
endmodule

