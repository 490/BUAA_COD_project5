`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:32:40 12/05/2014 
// Design Name: 
// Module Name:    MEM 
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
module MEM(
	input clk,
	input MemWrite_mem,
	input [31:0]aluout_mem,tr_b_mem,
	input [4:0]a3_mem,
/*=========================================================================================================*/
	output [31:0]dmout_mem
    );
/*=========================================================================================================*/
	dm i_DM(	.addr(aluout_mem[11:2]),  
				.din(tr_b_mem), 
				.dm_we(MemWrite_mem), 
				.clk(clk), 
	  /*out*/.dout(dmout_mem));
/*=========================================================================================================*/
endmodule
