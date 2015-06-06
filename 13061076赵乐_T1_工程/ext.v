`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:34:01 12/05/2014 
// Design Name: 
// Module Name:    ext 
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
module ext(
    input [1:0] extop,
    input [15:0] imm16,
    output [31:0] imm32
    );
	//assign imm32=(~extop[1])?((~extop[0])?{{16{imm16[15]}},imm16}:{16'b0,imm16}):{imm16,16'b0};
	assign imm32=(~extop[1])?((~extop[0])?{16'b0,imm16}:{{16{imm16[15]}},imm16}):{imm16,16'b0};
endmodule