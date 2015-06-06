`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:25:49 12/05/2014 
// Design Name: 
// Module Name:    if_0 
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
module if_0(
    input [31:0] A,
    input [31:0] B,
    output ifzero
    );
	 assign result=A==B?1:0;
endmodule
