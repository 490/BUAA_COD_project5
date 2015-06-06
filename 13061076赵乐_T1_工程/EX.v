`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:25:11 12/05/2014 
// Design Name: 
// Module Name:    EX 
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
module EX(
	input ALUSrc_ex,
	input [1:0]RegDst_ex,ALUop_ex,
	input [4:0]rs_ex,rt_ex,rd_ex,
	input [31:0]rd1_ex,rd2_ex,imm32_ex,pc_ex,
	input [1:0]forward_a_ex,forward_b_ex,
	input [31:0]wd_wb,aluout_mem,
/*=========================================================================================================*/
	output  [4:0]a3_ex,
	output  [31:0]aluout_ex,tr_b_ex
);
wire [31:0]alu_a,alu_b;
/*=========================================================================================================*/
	alu i_ALU(  .a(alu_a),
					.b(alu_b),
					.op(ALUop_ex),
		 // /*out*/.zero(0),//?
					.aluout(aluout_ex));
/*=========================================================================================================*/
	mux_3_32b i_MUX_alu_a(.op(forward_a_ex),
								 .A(rd1_ex), 
							    .B(wd_wb),
								 .C(aluout_mem),	
					   /*out*/.out(alu_a));
/*=========================================================================================================*/
	mux_3_32b i_MUX_tr_b(.op(forward_b_ex),
								.A(rd2_ex), 
								.B(wd_wb),
								.C(aluout_mem),	
					  /*out*/.out(tr_b_ex));	
/*=========================================================================================================*/
	mux_2_32b i_MUX_alu_b(.op(ALUSrc_ex),
								 .A(tr_b_ex),
								 .B(imm32_ex),
						/*out*/.out(alu_b));	
/*=========================================================================================================*/
	mux_3_5b  i_MUX_a3(	.op(RegDst_ex),
								.A(rt_ex), 
								.B(rd_ex),
								.C(5'b11111),	
					  /*out*/.out(a3_ex));
/*=========================================================================================================*/
endmodule
