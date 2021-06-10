`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   12:47:18 05/26/2021
// Design Name:   Comprehensive
// Module Name:   Z:/WorkSpace/Verilog/Young_05_RAM_64x32bit/Comprehensive_Test.v
// Project Name:  Young_05_RAM_64x32bit
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Comprehensive
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Comprehensive_Test;

	// Inputs
	reg clk;
	reg Write_Reg;
	reg [2:0] ALU_OP;
	reg Mem_Write;
	reg [1:0] wr_data_s;
	reg Reset;
	reg [4:0] rs;
	reg [4:0] rt;
	reg [4:0] rd;

	// Outputs
	wire ZF;
	wire OF;
	wire [31:0] M_R_Data;
	wire [31:0] R_Data_A;
	wire [31:0] R_Data_B;
	wire [31:0] W_Data;
	wire [31:0] F;
	
	// Instantiate the Unit Under Test (UUT)
	Comprehensive uut (
		.clk(clk), 
		.Write_Reg(Write_Reg), 
		.ALU_OP(ALU_OP), 
		.Mem_Write(Mem_Write), 
		.wr_data_s(wr_data_s), 
		.Reset(Reset), 
		.rs(rs), 
		.rt(rt), 
		.rd(rd), 
		.ZF(ZF), 
		.OF(OF), 
		.M_R_Data(M_R_Data), 
		.R_Data_A(R_Data_A), 
		.R_Data_B(R_Data_B), 
		.W_Data(W_Data), 
		.F(F)
	);

	initial begin
		// Initialize Inputs 准备信号
		clk = 0;
		Write_Reg = 0;//禁止写入寄存器堆
		ALU_OP = 3'b100;//ALU切换至加法
		Mem_Write = 0;//禁止写入RAM
		wr_data_s = 0;//W_Data连接的是ALU的F
		Reset = 0;//准备给寄存器堆清零
		rs = 5'b000_00;
		rt = 5'b000_01;
		rd = 5'b000_10;
		#100;
		
		//clk上升&寄存器堆完成清零&ALU完成加法运算||| 100-200
		Reset=1;clk=1;#100;
		/*
		理想数据：
		R_Data_A=0000_FFFF
		R_Data_B=FFFF_0000
		ZF=0
		OF=0
		F=FFFF_FFFF
		Mem_Addr=6'b111111
		M_R_Data=X;
		W_Data=F=FFFF_FFFF
		*/
		
		//clk下降，准备信号
		clk=0;
		Reset=0;//Reset信号结束
		Write_Reg=1;//准备将F=A+B=REG[rs]+REG[rt]写入REG[rd]
		#100;
		
		//clk上升&RAM开始读出有效数据&寄存器堆完成写入||| 300-400
		clk=1;#100;
		/*
		理想数据：
		M_R_Data=RAM[F]=RAM[A+B]=AAAA_AAAA;
		*/
		
		//clk下降，准备信号
		clk=0;
		rd = 5'b000_11;//切换rd到四号寄存器
		wr_data_s = 2'b01;//W_Data连接的是RAM的M_R_Data
		Write_Reg = 1;//赘余语句:准备读出M_R_Data=RAM[F]=RAM[A+B]写入REG[rd']
		Mem_Write = 1;//准备将R_Data_B写入RAM[F]=RAM[A+B]=RAM[REG[rs]+REG[rt]]
		#100;
		
		//clk上升&W_Data由于选择信号切换变为M_R_Data||| 500-600
		clk=1;#100;
		/*
		理想数据:
		W_Data=M_R_Data=AAAA_AAAA;
		*/
		
		//clk下降，准备信号
		clk=0;
		Write_Reg=0;//写入结束
		Mem_Write=0;//写入结束
		rs=5'b000_10;//R_Data_A检查rs_data_s为0时写入的F=A+B
		rt=5'b000_11;//R_Data_B检查es_data_s为0时写入的RAM[F]=RAM[A+B]=RAM[REG[rs]+REG[rt]]
		#100;
		
		//clk上升&数据大范围更新||| 700-800
		clk=1;#100;
		/*
		理想数据:
		R_Data_A=FFFF_FFFF
		R_Data_B=AAAA_AAAA
		ZF=0
		OF=0
		F=AAAA_AAA9
		Mem_Addr=6'b101001//41号RAM单元
		M_R_Data=FFFF_FFFF
		W_Data=F=FFFF_FFFF
		*/
		
		//end;

	end
      
endmodule

