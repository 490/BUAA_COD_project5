`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:26:47 12/05/2014 
// Design Name: 
// Module Name:    ifzero 
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
module ifzero(
	 input [31:0] A,
    input [31:0] B,
    output ifzero
    );
	 assign ifzero=(A==B)?1:0;
endmodule
