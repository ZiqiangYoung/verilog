`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:55:27 06/16/2021
// Design Name:   Test_M
// Module Name:   Z:/WorkSpace/Verilog/Young_03_MultifunctionalALU_32bit/Test_M_Test1.v
// Project Name:  Young_03_MultifunctionalALU_32bit
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Test_M
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Test_M_Test1;

	// Inputs
	reg [2:0]A;

	// Outputs
	wire F;

	// Instantiate the Unit Under Test (UUT)
	Test_M uut (
		.A(A), 
		.F(F)
	);

	initial begin
		// Initialize Inputs
		A = 3'b000;

		// Wait 100 ns for global reset to finish
		#100;
		
		A=3'b001;
		#100;
        
		// Add stimulus here

	end
      
endmodule

