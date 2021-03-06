`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:59:57 12/05/2014 
// Design Name: 
// Module Name:    IF 
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
module IF(
	input clk,
	input zero,
	input branch,
	input j,
	input jal,
	input stall,
	input jr,
	input [31:0]beq_npc,
	input [31:0]pc_id,instr_id,tr_rd1_id,
/*=========================================================================================================*/
	output [31:0]instr_if,
	output [31:0]pc_if
	);
/*=========================================================================================================*/	
	wire [31:0]pc,npc;
	wire [1:0]pc_op;
/*=========================================================================================================*/
	pc i_PC(	.clk(clk),
				.pc_we(stall),
				.npc(npc),
     /*out*/.pc(pc),
				.pc_next(pc_if));
/*=========================================================================================================*/
	im i_IM(	.addr(pc[11:2]),
     /*out*/.dout(instr_if));
/*=========================================================================================================*/
	pc_sel i_PC_SEL(.Branch(branch),
						 .zero(zero),
						 .j(j),
						 .jal(jal),
						 .jr(jr),
				/*out*/.pc_op(pc_op));
/*=========================================================================================================*/
	mux_4_32b i_MUX_pc(.A(pc_if),
							 .B(beq_npc),
							 .C({pc_id[31:28],instr_id[25:0],2'b00}),//j,jal
							 .D(tr_rd1_id),//jr
							 //.D({tr_rd1_id+4}),
							 .pc_op(pc_op),
					/*out*/.out(npc));
/*=========================================================================================================*/	
endmodule
