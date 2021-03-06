`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:44:54 12/05/2014 
// Design Name: 
// Module Name:    hazard 
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
module hazard(
	 input jr,
	 input beq,
	 input RegWrite_ex,RegWrite_mem,
	 input [1:0] MemtoReg_ex,MemtoReg_mem,
	 input [4:0] rs_id, rt_id,
	 input [4:0] a3_ex, a3_mem,
	 output stall
    );
	 
	 wire stall_1, stall_2, stall_cal_r;
	 
/*һ��*/assign stall_1=(beq|jr)&RegWrite_ex&((rs_id==a3_ex)|(rt_id==a3_ex));
	
/*����*/assign stall_2=(beq|jr)&RegWrite_mem&(MemtoReg_mem!=2'b00)&((rs_id==a3_mem)|(rt_id==a3_mem));
	 
	 assign stall_cal_r=(MemtoReg_ex!=2'b00)&((rs_id==a3_ex)|(rt_id==a3_ex));
	 
	 assign stall=stall_1|stall_cal_r|stall_2;

endmodule
