`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:21:18 02/23/2017 
// Design Name: 
// Module Name:    Debouncer 
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

module Debouncer(
    input clk,
	 input clk2,
    input real_btn_input,
    output debounced_btn_input
    );

		reg [1:0] btn_delay_counter;
		assign debounced_btn_input = (~btn_delay_counter[0] && btn_delay_counter[1]);

		always @(posedge clk ) begin
			if( clk2 == 1 ) begin
					btn_delay_counter <= {real_btn_input, btn_delay_counter[1]};
			end
			else begin
					btn_delay_counter <= btn_delay_counter;
			end
		end

endmodule