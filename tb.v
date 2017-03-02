`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:28:25 03/19/2013 
// Design Name: 
// Module Name:    Testbench for NERP_demo_top (version #1) 
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

module tb;
	reg clk;			//master clock = 100MHz
	reg clr;			//right-most pushbutton for reset
	//output wire [6:0] seg,	//7-segment display LEDs
	//output wire [3:0] an,	//7-segment display anode enable
	//output wire dp,			//7-segment display decimal point
	wire [2:0] red;	//red vga output - 3 bits
	wire [2:0] green;//green vga output - 3 bits
	wire [1:0] blue;	//blue vga output - 2 bits
	wire hsync;		//horizontal sync out
	wire vsync;			//vertical sync out

	NERP_demo_top nerp (
		.clk(clk), 
		.clr(clr), 
		.red(red), 
		.green(green), 
		.blue(blue), 
		.hsync(hsync), 
		.vsync(vsync)

	);
	initial begin
		clk <= 0;
		clr <= 0;
		/*red <= 0;
		green <= 0;
		blue <= 0;
		hsync <= 0;
		vsync <= 0;*/
	end



	always #5 clk = ~clk;

endmodule

/*
module NERP_demo_top(
	input wire clk,			//master clock = 100MHz
	input wire clr,			//right-most pushbutton for reset
	//output wire [6:0] seg,	//7-segment display LEDs
	//output wire [3:0] an,	//7-segment display anode enable
	//output wire dp,			//7-segment display decimal point
	output wire [2:0] red,	//red vga output - 3 bits
	output wire [2:0] green,//green vga output - 3 bits
	output wire [1:0] blue,	//blue vga output - 2 bits
	output wire hsync,		//horizontal sync out
	output wire vsync			//vertical sync out
	);

// VGA display clock interconnect
wire pix_en;

	reg rst;
	reg rst_ff;
 
	always @(posedge clk or posedge clr) begin
		if (clr) begin
			{rst,rst_ff} <= 2'b11;
		end
		else begin
			{rst,rst_ff} <= {rst_ff,1'b0};
		end
	end


// generate 7-segment clock & display clock
clockdiv U1(
	.clk(clk),
	.rst(rst),
	.pix_en(pix_en)
	);

// VGA controller
vga640x480 U3(
	.pix_en(pix_en),
	.clk(clk),
	.rst(rst),
	.hsync(hsync),
	.vsync(vsync),
	.red(red),
	.green(green),
	.blue(blue)
	);

endmodule
*/