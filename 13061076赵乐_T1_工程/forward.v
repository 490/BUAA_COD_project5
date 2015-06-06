`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:45:47 12/05/2014 
// Design Name: 
// Module Name:    forward 
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
module forward( 
	 input beq,
	 input jr,
	 input RegWrite_mem,RegWrite_wb,
	 input [4:0] rs_id,rt_id,
	 input [4:0] rs_ex,rt_ex,
	 input [4:0] a3_ex,a3_mem,a3_wb,
	 output reg[1:0] forward_a_id,forward_b_id,
	 output reg[1:0] forward_a_ex,forward_b_ex
    );
/*==================================================================*/
	 always@(*)
	 begin
		if((beq||jr)&&(RegWrite_mem)&&(a3_mem==rs_id)&&(a3_mem!=0))
			forward_a_id=2'b10;
		else if((beq||jr)&&(RegWrite_wb)&&(a3_wb==rs_id)&&(a3_wb!=0))
			forward_a_id=2'b01;
		else 
			forward_a_id=2'b00;
/*==================================================================*/
		if((beq||jr)&&(RegWrite_mem)&&(a3_mem==rt_id)&&(a3_mem!=0))
			forward_b_id=2'b10;
		else if((beq||jr)&&(RegWrite_wb)&&(a3_wb==rt_id)&&(a3_wb!=0))
			forward_b_id=2'b01;
		else 
			forward_b_id=2'b00;
/*==================================================================*/
		if((RegWrite_mem)&&(a3_mem==rs_ex)&&(a3_mem!=0))
			forward_a_ex=2'b10;
		else if((RegWrite_wb)&&(a3_wb==rs_ex)&&(a3_wb!=0))
			forward_a_ex=2'b01;
		else
			forward_a_ex=2'b00;
/*==================================================================*/
		if((RegWrite_mem)&&(a3_mem==rt_ex)&&(a3_mem!=0))
			forward_b_ex=2'b10;
		else if((RegWrite_wb)&&(a3_wb==rt_ex)&&(a3_wb!=0))
			forward_b_ex=2'b01;
		else
			forward_b_ex=2'b00;	
/*==================================================================*/
	 end
endmodule
