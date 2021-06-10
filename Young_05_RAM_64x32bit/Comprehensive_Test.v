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
		// Initialize Inputs ׼���ź�
		clk = 0;
		Write_Reg = 0;//��ֹд��Ĵ�����
		ALU_OP = 3'b100;//ALU�л����ӷ�
		Mem_Write = 0;//��ֹд��RAM
		wr_data_s = 0;//W_Data���ӵ���ALU��F
		Reset = 0;//׼�����Ĵ���������
		rs = 5'b000_00;
		rt = 5'b000_01;
		rd = 5'b000_10;
		#100;
		
		//clk����&�Ĵ������������&ALU��ɼӷ�����||| 100-200
		Reset=1;clk=1;#100;
		/*
		�������ݣ�
		R_Data_A=0000_FFFF
		R_Data_B=FFFF_0000
		ZF=0
		OF=0
		F=FFFF_FFFF
		Mem_Addr=6'b111111
		M_R_Data=X;
		W_Data=F=FFFF_FFFF
		*/
		
		//clk�½���׼���ź�
		clk=0;
		Reset=0;//Reset�źŽ���
		Write_Reg=1;//׼����F=A+B=REG[rs]+REG[rt]д��REG[rd]
		#100;
		
		//clk����&RAM��ʼ������Ч����&�Ĵ��������д��||| 300-400
		clk=1;#100;
		/*
		�������ݣ�
		M_R_Data=RAM[F]=RAM[A+B]=AAAA_AAAA;
		*/
		
		//clk�½���׼���ź�
		clk=0;
		rd = 5'b000_11;//�л�rd���ĺżĴ���
		wr_data_s = 2'b01;//W_Data���ӵ���RAM��M_R_Data
		Write_Reg = 1;//׸�����:׼������M_R_Data=RAM[F]=RAM[A+B]д��REG[rd']
		Mem_Write = 1;//׼����R_Data_Bд��RAM[F]=RAM[A+B]=RAM[REG[rs]+REG[rt]]
		#100;
		
		//clk����&W_Data����ѡ���ź��л���ΪM_R_Data||| 500-600
		clk=1;#100;
		/*
		��������:
		W_Data=M_R_Data=AAAA_AAAA;
		*/
		
		//clk�½���׼���ź�
		clk=0;
		Write_Reg=0;//д�����
		Mem_Write=0;//д�����
		rs=5'b000_10;//R_Data_A���rs_data_sΪ0ʱд���F=A+B
		rt=5'b000_11;//R_Data_B���es_data_sΪ0ʱд���RAM[F]=RAM[A+B]=RAM[REG[rs]+REG[rt]]
		#100;
		
		//clk����&���ݴ�Χ����||| 700-800
		clk=1;#100;
		/*
		��������:
		R_Data_A=FFFF_FFFF
		R_Data_B=AAAA_AAAA
		ZF=0
		OF=0
		F=AAAA_AAA9
		Mem_Addr=6'b101001//41��RAM��Ԫ
		M_R_Data=FFFF_FFFF
		W_Data=F=FFFF_FFFF
		*/
		
		//end;

	end
      
endmodule

