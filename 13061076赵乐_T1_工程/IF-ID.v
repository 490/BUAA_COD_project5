`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:19:23 12/05/2014 
// Design Name: 
// Module Name:    IF-ID 
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
module IF-ID(
	 input Clk,
	 input IFIDen,
	 input [31:0] IF,
	 input [29:0] PC_IF,
	 output reg [31:0] ID,
	 output reg [29:0] PC_ID
    );
	 
	 initial 
	 begin
		ID<=0;
		PC_ID<=0;
	 end
	 
	 always@(posedge Clk)
	 begin
	   if(~IFIDen)
	   begin
			ID<=IF;
			PC_ID<=PC_IF;
	   end
		
		else;
	 end


endmodule