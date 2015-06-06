`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:22:17 12/05/2014 
// Design Name: 
// Module Name:    pc_sel 
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
module pc_sel(
	 input Branch,
	 input zero,
    input j,
    input jal,
    input jr,
    
    output reg [1:0] pc_op
    );
	 
	 always@(*)
	 begin
		if(Branch&&zero)
			pc_op<=2'b01;//B
		 else if(j||jal)
			pc_op<=2'b10;//C
		 else if(jr)
			pc_op<=2'b11;//D
		 else 
			pc_op<=2'b00;//A
	 end
endmodule
