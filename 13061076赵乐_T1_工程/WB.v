`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:36:45 12/05/2014 
// Design Name: 
// Module Name:    WB 
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
module WB(
	input [1:0] MemtoReg_wb,
	input [31:0] dmout_wb,aluout_wb,pc_wb,
/*=========================================================================================================*/
	output [31:0]wd_wb
    );
/*=========================================================================================================*/
	mux_3_32b i_MUX_wd(.op(MemtoReg_wb),
							 .A(aluout_wb), 
							 .B(dmout_wb),
							 .C({pc_wb+4}),	
							//.C(pc_wb),
							//.C({pc_wb[31:2],2'b00}),
				   /*out*/.out(wd_wb));
/*=========================================================================================================*/


endmodule
