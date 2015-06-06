`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:40:13 12/05/2014 
// Design Name: 
// Module Name:    control 
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
module control(
	 input [31:26] op,
	 input [5:0] func,
	 output RegWrite_id,
	 output MemWrite_id,
	 output ALUSrc_id,
	 output Branch_id,
	 output j_id,
	 output jal_id,
	 output jr_id,
	 output [1:0] EXTop_id,
	 output [1:0] MemtoReg_id,
	 output [1:0] ALUop_id,
	 output [1:0] RegDst_id
	 
    );
/*=========================================================================================================*/	 
	 parameter 	i_R=6'b000000, 
					//加载
					i_lw=6'b100011, 
					//保存
					i_sw=6'b101011,
					//R-R运算
					i_addu=6'b100001,i_subu=6'b100011,i_OR=6'b100101, 
					//R-I运算
					i_ori=6'b001101,i_addiu=6'b001001,i_andi=6'b001100,i_lui=6'b001111, 
					//跳转
					i_jr=6'b001000,i_j=6'b000010,i_jal=6'b000011,
					//分支
					i_beq=6'b000100;
			
/*=========================================================================================================*/
reg addu,subu,ori,lw,sw,beq,lui,jal,jr,j,addiu,andi,OR;
initial
begin
	addu<=0;subu<=0;ori<=0;lw<=0;sw<=0;beq<=0;lui<=0;jal<=0;jr<=0;j<=0;addiu<=0;andi<=0;OR<=0;
end
/*=========================================================================================================*/
	always@(*)
	 begin
		 if((op==i_R)&&(func==i_addu))
			addu=1;else addu=0;			
		 if((op==i_R)&&(func==i_subu))
			subu=1;else subu=0;
		 if((op==i_R)&&(func==i_OR))
			OR=1;else OR=0;
		 if((op==i_R)&&(func==i_jr))		 
			jr=1;else jr=0;
		 if(op==i_ori)
			ori=1;else ori=0;
		 if(op==i_addiu)
			addiu=1;else addiu=0;
		 if(op==i_andi)
			andi=1;else andi=0;
		 if(op==i_lw)
			lw=1;else lw=0;
		 if(op==i_sw)
			sw=1;else sw=0;
		 if(op==i_lui)
			lui=1;else lui=0;
		 if(op==i_beq)
			beq=1;else beq=0;
		 if(op==i_j)
			j=1;else j=0;
		 if(op==i_jal)
			jal=1;else jal=0;
		
	 end
/*=========================================================================================================*/
	assign ALUop_id[1]		=ori|lui|OR|andi;
	assign ALUop_id[0]		=subu|beq|andi;
	assign RegDst_id[0]	=addu|subu|OR;
	assign RegDst_id[1]	=jal;//
	assign ALUSrc_id		=ori|lw|sw|lui|addiu|andi;
	assign MemtoReg_id[0]=lw;
	assign MemtoReg_id[1]=jal;
	assign RegWrite_id	=addu|subu|ori|lw|lui|jal|addiu|andi|OR;
	assign EXTop_id[1]	=lui;
	assign EXTop_id[0]	=lw|sw;
	assign MemWrite_id	=sw;
	assign Branch_id		=beq;
	assign jr_id			=jr;
	assign jal_id			=jal;
	assign j_id				=j;
/*=========================================================================================================*/
endmodule
