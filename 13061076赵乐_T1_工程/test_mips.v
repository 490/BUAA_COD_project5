`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:52:49 12/06/2014
// Design Name:   mips
// Module Name:   C:/Users/dell/Desktop/BUAA2/PROJECT/P5-VerilogHDL-pipeline_CPU-V1/zl-p5/test_mips.v
// Project Name:  zl-p5
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: mips
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_mips;

	// Inputs
	reg clk;
	reg reset;

	// Instantiate the Unit Under Test (UUT)
	mips uut (
		.clk(clk), 
		.reset(reset)
	);

	initial begin
		// Initialize Inputs
		#0 clk = 0;
		#0 reset = 0;
		// Wait 100 ns for global reset to finish
		//#100;
        
		// Add stimulus here

	end
		always #50 clk=~clk;
endmodule

