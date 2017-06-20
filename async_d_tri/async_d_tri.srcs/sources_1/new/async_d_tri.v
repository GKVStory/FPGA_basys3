`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/06/21 00:54:18
// Design Name: 
// Module Name: async_d_tri
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module async_d_tri(
	input clk,
	input rst,
	input D,
	output reg Q,
	output reg Q_n
    );
	

	always @(posedge clk or negedge rst) begin 
		if(!rst) begin 
			Q = 0;
			Q_n = 1;
		end else begin 
			Q = D;
			Q_n = ~D;
		end
	end
endmodule
