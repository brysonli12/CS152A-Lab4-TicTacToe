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
module SimpleAI_TB;

	reg [8:0] X_state;
	reg [8:0] O_state;
	wire [8:0] AI_move;
	integer i, j;
	
	initial begin
		#10;
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
		X_state = 9'b110000000;
		O_state = 9'b000000011;
		#5;
		$display("X-state: %b O-state: %b Predicted Move: %b", X_state, O_state, AI_move);
		
		#10;
		X_state = 9'b100000000;
		O_state = 9'b000010000;
		#5;
		$display("X-state: %b O-state: %b Predicted Move: %b", X_state, O_state, AI_move);
		
		#10;
		X_state = 9'b110000000;
		O_state = 9'b000110000;
		#5;
		$display("X-state: %b O-state: %b Predicted Move: %b", X_state, O_state, AI_move);
		
		#10;
		X_state = 9'b10001001;
		O_state = 9'b001101000;
		#5;
		$display("X-state: %b O-state: %b Predicted Move: %b", X_state, O_state, AI_move);
		
		
		
		#200;
		$finish;
	end

	//always #5 clk = ~clk;

	SimpleAI sa (
		X_state,
		O_state,
		AI_move
	);

endmodule
