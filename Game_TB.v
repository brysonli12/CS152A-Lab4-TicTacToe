`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:14:01 03/09/2017 
// Design Name: 
// Module Name:    SimpleAI_TB 
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
module Game_TB;

	reg [8:0] X_state;
	reg [8:0] O_state;
	wire [8:0] AI_move;
	integer i, j;
	
	reg clk;
	reg clr;
	reg [4:0] sw;
	reg btnInput;
	reg btnReset;
	wire [2:0] red;
	wire [2:0] green;
	wire [1:0] blue;
	wire hsync;
	wire vsync;
	
	/*input wire clk,			//master clock = 100MHz
	input wire clr,			//right-most pushbutton for reset
	input wire [4:0] sw,  // Controls the input move number, AI difficulty
	input wire btnInput, // Middle Button
	input wire btnReset, // Top Button
	//output wire [6:0] seg,	//7-segment display LEDs
	//output wire [3:0] an,	//7-segment display anode enable
	//output wire dp,			//7-segment display decimal point
	output wire [2:0] red,	//red vga output - 3 bits
	output wire [2:0] green,//green vga output - 3 bits
	output wire [1:0] blue,	//blue vga output - 2 bits
	output wire hsync,		//horizontal sync out
	output wire vsync			//vertical sync out
	*/
	initial begin
		clr = 1;
		btnReset = 1;
		#10;
		clr = 0;
		sw = 4'b0001;
		btnReset = 0;
		#10
		btnInput = 1;
		#10
		btnInput = 0;
		
		// do stuff
		/*X_state = 9'b000000000;
		O_state = 9'b000000000;
		#5;
		$display("X-state: %b O-state: %b Predicted Move: %b", X_state, O_state, AI_move);
		
		#10;
		// do stuff
		X_state = 9'b000010000;
		O_state = 9'b100000000;
		#5;
		$display("X-state: %b O-state: %b Predicted Move: %b", X_state, O_state, AI_move);
		
		
		#10;
		// do stuff
		X_state = 9'b000010001;
		O_state = 9'b101000000;
		#5;
		$display("X-state: %b O-state: %b Predicted Move: %b", X_state, O_state, AI_move);
		
		#10;
		// do stuff
		X_state = 9'b010010001;
		O_state = 9'b101100000;
		#5;
		$display("X-state: %b O-state: %b Predicted Move: %b", X_state, O_state, AI_move);
		*/
		
		#200;
		$finish;
	end

	always #5 clk = ~clk;

	Game gam(
	clk,			//master clock = 100MHz
	clr,			//right-most pushbutton for reset
	sw,  // Controls the input move number, AI difficulty
	btnInput, // Middle Button
	 btnReset, // Top Button
	//output wire [6:0] seg,	//7-segment display LEDs
	//output wire [3:0] an,	//7-segment display anode enable
	//output wire dp,			//7-segment display decimal point
	red,	//red vga output - 3 bits
	green,//green vga output - 3 bits
	blue,	//blue vga output - 2 bits
	hsync,		//horizontal sync out
	vsync			//vertical sync out
	);

endmodule
