`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:32:59 12/05/2014 
// Design Name: 
// Module Name:    id_ex 
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
module id_ex(
	input clk,
	input reset,
	input RegWrite_id,
	input MemWrite_id,
	input ALUSrc_id,
	input [1:0]RegDst_id,MemtoReg_id,ALUop_id,
	input [4:0]rs_id,rt_id,rd_id,
	input [31:0]rd1_id,rd2_id,imm32_id,pc_id,
/*=========================================================================================================*/
	output reg RegWrite_ex,
	output reg MemWrite_ex,
	output reg ALUSrc_ex,
	output reg [1:0]RegDst_ex,MemtoReg_ex,ALUop_ex,
	output reg [4:0]rs_ex,rt_ex,rd_ex,
	output reg [31:0]rd1_ex,rd2_ex,imm32_ex,pc_ex
    );
/*=========================================================================================================*/
	initial
	begin
		RegWrite_ex<=0;
		MemWrite_ex<=0;
		ALUSrc_ex<=0;
		RegDst_ex<=0;
		MemtoReg_ex<=0;
		ALUop_ex<=0;
		rs_ex<=0;
		rt_ex<=0;
		rd_ex<=0;
		rd1_ex<=0;
		rd2_ex<=0;
		imm32_ex<=0;
		pc_ex<=0;
	end
/*=========================================================================================================*/
	always@(posedge clk)
	if(reset)
		begin
			RegWrite_ex<=0;
			MemWrite_ex<=0;
			ALUSrc_ex<=0;
			RegDst_ex<=0;
			MemtoReg_ex<=0;
			ALUop_ex<=0;
			rs_ex<=0;
			rt_ex<=0;
			rd_ex<=0;
			rd1_ex<=0;
			rd2_ex<=0;
			imm32_ex<=0;
			pc_ex<=0;
		end
/*=========================================================================================================*/
	else
		begin
			RegWrite_ex<=RegWrite_id;
			MemWrite_ex<=MemWrite_id;
			ALUSrc_ex<=ALUSrc_id;
			RegDst_ex<=RegDst_id;
			MemtoReg_ex<=MemtoReg_id;
			ALUop_ex<=ALUop_id;
			rs_ex<=rs_id;
			rt_ex<=rt_id;
			rd_ex<=rd_id;
			rd1_ex<=rd1_id;
			rd2_ex<=rd2_id;
			imm32_ex<=imm32_id;
			pc_ex<=pc_id;
		end
/*=========================================================================================================*/
endmodule
