`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:05:54 12/05/2014 
// Design Name: 
// Module Name:    ID 
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
module ID(
	input clk, 
	input [31:0]instr_id,
	input [31:0]pc_id,
	input [31:0]wd_wb,
	input [31:0]aluout_mem,
	input [4:0]a3_wb,
	input [1:0]forward_a_id,forward_b_id,
	input RegWrite_wb,
/*=========================================================================================================*/
	output RegWrite_id,
	output MemWrite_id,
	output ALUSrc_id,
	output zero,
	output Branch_id,j_id,jal_id,jr_id,
	output [1:0]RegDst_id,MemtoReg_id,ALUop_id,
//	output [4:0]rs_id,rt_id,rd_id,
	output [31:0]tr_rd1_id,tr_rd2_id,imm32_id,beq_npc
    );
/*=========================================================================================================*/
	 wire [31:0]rd1_id,rd2_id;
	 wire [1:0]EXTop_id;
/*=========================================================================================================*/
	control i_CTRL(.op(instr_id[31:26]),
						.func(instr_id[5:0]),
			 /*out*/.RegWrite_id(RegWrite_id),
					  .MemWrite_id(MemWrite_id),
					  .ALUSrc_id(ALUSrc_id),
					  .Branch_id(Branch_id),
					  .j_id(j_id),
					  .jal_id(jal_id),
					  .jr_id(jr_id),
					  .EXTop_id(EXTop_id),
					  .MemtoReg_id(MemtoReg_id),
					  .ALUop_id(ALUop_id),
					  .RegDst_id(RegDst_id));
/*=========================================================================================================*/
	gpr i_GPR( .clk(clk),
				  .a1(instr_id[25:21]),
				  .a2(instr_id[20:16]),
				  .a3(a3_wb),
				  .gpr_we(RegWrite_wb),
				  .gpr_reset(0),//reset?
				  .wd(wd_wb),
	    /*out*/.rd1(rd1_id),
			     .rd2(rd2_id));
/*=========================================================================================================*/
	beq_npc i_Beq_NPC( .pc(pc_id),
							 .imm16(instr_id[15:0]),
					/*out*/.npc(beq_npc));
/*=========================================================================================================*/
	ext i_EXT(.extop(EXTop_id),
				 .imm16(instr_id[15:0]),
		/*out*/.imm32(imm32_id));
/*=========================================================================================================*/
	ifzero i_IfZero(.A(tr_rd1_id),
					    .B(tr_rd2_id),
				/*out*/.ifzero(zero));
/*=========================================================================================================*/
	mux_3_32b i_MUX_Rd1(	.op(forward_a_id),
								.A(rd1_id), 
								.B(wd_wb),
								.C(aluout_mem),	
					  /*out*/.out(tr_rd1_id));
/*=========================================================================================================*/
	mux_3_32b i_MUX_Rd2(	.op(forward_b_id),
								.A(rd2_id), 
								.B(wd_wb),
								.C(aluout_mem),	
					  /*out*/.out(tr_rd2_id));
/*=========================================================================================================*/
	

/*=========================================================================================================*/
endmodule
