`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:31:38 12/05/2014 
// Design Name: 
// Module Name:    mux_2_32b 
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
module mux_2_32b(
	input op,
	input [31:0] A, B,	
	output reg [31:0] out
);
	always@(*)
	begin
		case(op)
			0:out<=A;
			1:out<=B;
		endcase
	end
endmodule