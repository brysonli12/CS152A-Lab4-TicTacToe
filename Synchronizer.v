`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:56:26 02/23/2017 
// Design Name: 
// Module Name:    Synchronizer 
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
module Synchronizer(clk, async_in, reset, synch_out);

input clk;
input async_in;
input reset;

output reg synch_out;

reg meta;

always @(posedge clk)

	if (reset) begin

		meta <= 1'b0;

		synch_out <= 1'b0;
	end

	else begin

		meta <= async_in;

		synch_out <= meta;
	end

endmodule