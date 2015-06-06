`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:40:47 12/05/2014 
// Design Name: 
// Module Name:    mips 
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
module mips(
input clk,
input reset
    );
/*=========================================================================================================*/
	 
	 
/*=========================================================================================================*/
	wire zero,Branch_id,j_id,jal_id,stall,jr_id;
	wire [31:0]pc_if,instr_if,beq_npc;
/***********************************************************************/
	IF i_IF(	 .clk(clk),
				 .zero(zero),
				 .branch(Branch_id),
				 .j(j_id),
				 .jal(jal_id),
				 .stall(stall),
				 .jr(jr_id),
				 .beq_npc(beq_npc),
				 .pc_id(pc_id),
				 .instr_id(instr_id),
				 .tr_rd1_id(tr_rd1_id),
		/*out*/.instr_if(instr_if),
				 .pc_if(pc_if));
/*=========================================================================================================*/

/***********************************************************************/
	if_id i_IF_ID(.clk(clk),
					  .IF_ID_we(stall),//stall?
					  .instr_if(instr_if),
					  .pc_if(pc_if),
			 /*out*/.instr_id(instr_id),
					  .pc_id(pc_id));
/*=========================================================================================================*/
	wire [31:0]wd_wb,aluout_mem,tr_rd1_id,tr_rd2_id,imm32_id,instr_id,pc_id;
	wire [4:0]a3_wb;
	wire [1:0]forward_a_id,forward_b_id,RegDst_id,MemtoReg_id,ALUop_id;
	wire RegWrite_wb,ALUSrc_id;
/***********************************************************************/
	ID i_ID(	.clk(clk),
				.instr_id(instr_id),
				.pc_id(pc_id),
				.wd_wb(wd_wb),
				.aluout_mem(aluout_mem),
				.a3_wb(a3_wb),
				.forward_a_id(forward_a_id),
				.forward_b_id(forward_b_id),
				.RegWrite_wb(RegWrite_wb),
	  /*out*/.RegWrite_id(RegWrite_id),
				.MemWrite_id(MemWrite_id),
				.ALUSrc_id(ALUSrc_id),
				.zero(zero),
				.Branch_id(Branch_id),
				.j_id(j_id),
				.jal_id(jal_id),
				.jr_id(jr_id),
				.RegDst_id(RegDst_id),
				.MemtoReg_id(MemtoReg_id),
				.ALUop_id(ALUop_id),
				.tr_rd1_id(tr_rd1_id),
				.tr_rd2_id(tr_rd2_id),
				.imm32_id(imm32_id),
				.beq_npc(beq_npc));
/*=========================================================================================================*/
	wire RegWrite_ex,MemWrite_ex,ALUSrc_ex;
	wire [1:0]RegDst_ex,MemtoReg_ex,ALUop_ex;
	wire [4:0]rs_ex,rt_ex,rd_ex;
	wire [31:0]rd1_ex,rd2_ex,imm32_ex,pc_ex;
	
/***********************************************************************/
	id_ex i_ID_EX(  .clk(clk),
						 .reset(stall),//stall?
						 .RegWrite_id(RegWrite_id),
						 .MemWrite_id(MemWrite_id),
						 .ALUSrc_id(ALUSrc_id),
						 .RegDst_id(RegDst_id),
						 .MemtoReg_id(MemtoReg_id),
						 .ALUop_id(ALUop_id),
						 .rs_id(instr_id[25:21]),
						 .rt_id(instr_id[20:16]),
						 .rd_id(instr_id[15:11]),
						 .rd1_id(tr_rd1_id),
						 .rd2_id(tr_rd2_id),
						 .imm32_id(imm32_id),
						 .pc_id(pc_id),
				/*out*/.RegWrite_ex(RegWrite_ex),
						 .MemWrite_ex(MemWrite_ex),
						 .ALUSrc_ex(ALUSrc_ex),
						 .RegDst_ex(RegDst_ex),
						 .MemtoReg_ex(MemtoReg_ex),
						 .ALUop_ex(ALUop_ex),
						 .rs_ex(rs_ex),
						 .rt_ex(rt_ex),
						 .rd_ex(rd_ex),
						 .rd1_ex(rd1_ex),
						 .rd2_ex(rd2_ex),
						 .imm32_ex(imm32_ex),
						 .pc_ex(pc_ex));
/*=========================================================================================================*/
	wire [1:0]forward_a_ex,forward_b_ex;
	wire [31:0]aluout_ex,tr_b_ex;
/***********************************************************************/
	EX i_EX( .ALUSrc_ex(ALUSrc_ex),
				.RegDst_ex(RegDst_ex),
				.ALUop_ex(ALUop_ex),
				.rs_ex(rs_ex),
				.rt_ex(rt_ex),
				.rd_ex(rd_ex),
				.rd1_ex(rd1_ex),
				.rd2_ex(rd2_ex),
				.imm32_ex(imm32_ex),
				.pc_ex(pc_ex),
				.forward_a_ex(forward_a_ex),
				.forward_b_ex(forward_b_ex),
				.wd_wb(wd_wb),
				.aluout_mem(aluout_mem),
		/*out*/.a3_ex(a3_ex),
				 .aluout_ex(aluout_ex),
				 .tr_b_ex(tr_b_ex));
/*=========================================================================================================*/
	wire RegWrite_mem,MemWrite_mem;
	wire [1:0]MemtoReg_mem;
	wire [4:0]a3_mem,a3_ex;
	wire [31:0]pc_mem,tr_b_mem;
/***********************************************************************/
	ex_mem i_EX_MEM(.clk(clk),
						 .RegWrite_ex(RegWrite_ex),
						 .MemWrite_ex(MemWrite_ex),
						 .MemtoReg_ex(MemtoReg_ex),
						 .a3_ex(a3_ex),
						 .pc_ex(pc_ex),
						 .aluout_ex(aluout_ex),
						 .tr_b_ex(tr_b_ex),
				/*out*/.RegWrite_mem(RegWrite_mem),
						 .MemWrite_mem(MemWrite_mem),
						 .MemtoReg_mem(MemtoReg_mem),
						 .a3_mem(a3_mem),
						 .aluout_mem(aluout_mem),
						 .pc_mem(pc_mem),
						 .tr_b_mem(tr_b_mem));
/*=========================================================================================================*/
	wire [31:0]dmout_mem;
/***********************************************************************/
	MEM i_MEM(.clk(clk),
				 .MemWrite_mem(MemWrite_mem),
				 .aluout_mem(aluout_mem),
				 .tr_b_mem(tr_b_mem),
				 .a3_mem(a3_mem),
		/*out*/.dmout_mem(dmout_mem));
/*=========================================================================================================*/
	wire [1:0]MemtoReg_wb;
	wire [31:0]dmout_wb,aluout_wb,pc_wb;
/***********************************************************************/
	mem_wb i_MEM_WB( .clk(clk),
						  .RegWrite_mem(RegWrite_mem),
						  .MemtoReg_mem(MemtoReg_mem),
						  .dmout_mem(dmout_mem),
						  .aluout_mem(aluout_mem),
						  .a3_mem(a3_mem),
						  .pc_mem(pc_mem),
				/*out*/.RegWrite_wb(RegWrite_wb),
						 .MemtoReg_wb(MemtoReg_wb),
						 .dmout_wb(dmout_wb),
						 .aluout_wb(aluout_wb),
						 .pc_wb(pc_wb),
						 .a3_wb(a3_wb));
/*=========================================================================================================*/

/***********************************************************************/
	WB i_WB(.MemtoReg_wb(MemtoReg_wb),
			 .dmout_wb(dmout_wb),
			 .aluout_wb(aluout_wb),
			 .pc_wb(pc_wb),
	/*out*/.wd_wb(wd_wb));
/*=========================================================================================================*/

/***********************************************************************/
	hazard i_Hazard(  .jr(jr_id),
						   .beq(Branch_id),
							.RegWrite_ex(RegWrite_ex),
							.RegWrite_mem(RegWrite_mem),
						   .MemtoReg_ex(MemtoReg_ex),
							.MemtoReg_mem(MemtoReg_mem),
							.rs_id(instr_id[25:21]),
						   .rt_id(instr_id[20:16]),
							.a3_ex(a3_ex),
							.a3_mem(a3_mem),
				  /*out*/.stall(stall));
/*=========================================================================================================*/

/***********************************************************************/
	forward i_Forward(.beq(Branch_id),
							.jr(jr_id),
							.RegWrite_mem(RegWrite_mem),
							.RegWrite_wb(RegWrite_wb),
							.rs_id(instr_id[25:21]),
							.rt_id(instr_id[20:16]),
							.rs_ex(rs_ex),
							.rt_ex(rt_ex),
							.a3_ex(a3_ex),
							.a3_mem(a3_mem),
							.a3_wb(a3_wb),
					/*out*/.forward_a_id(forward_a_id),
							.forward_b_id(forward_b_id),
							.forward_a_ex(forward_a_ex),
							.forward_b_ex(forward_b_ex));
/*=========================================================================================================*/
/*=========================================================================================================*/
/*=========================================================================================================*/
endmodule
