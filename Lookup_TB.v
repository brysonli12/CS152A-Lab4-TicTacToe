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
module LookupAI_TB;

	reg [8:0] X_state;
	reg [8:0] O_state;
	wire [8:0] AI_move;
	integer i, j;
	
	initial begin
		#10;
		// do stuff
		X_state = 9'b000000000;
		O_state = 9'b000000000;
		#5;
		$display("X-state: %b O-state: %b Predicted Move: %b", X_state, O_state, AI_move);
		
		#10;
		// do stuff
		X_state = 9'b100000000;
		O_state = 9'b000100000;
		#5;
		$display("X-state: %b O-state: %b Predicted Move: %b", X_state, O_state, AI_move);
		
		
		#10;
		// do stuff
		X_state = 9'b101000000;
		O_state = 9'0001000001;
		#5;
		$display("X-state: %b O-state: %b Predicted Move: %b", X_state, O_state, AI_move);
		
		#10;
		// do stuff
		X_state = 9'b111000000;
		O_state = 9'0000000000;
		#5;
		$display("X-state: %b O-state: %b Predicted Move: %b", X_state, O_state, AI_move);
		
		
		#200;
		$finish;
	end

	LookupTableAI lai (
		X_state,
		O_state,
		AI_move
	);

endmodule
