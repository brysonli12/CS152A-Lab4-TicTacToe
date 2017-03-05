`timescale 1ns / 1ps
module GameState (
	
	input rst, // start over, new game
	input move ,// indicate that you want to make a move
	input clk,
	
	input player, // 1 for X, 0 for O
	input [3:0] nextMove, // 4 digits, decides on location to try to make a move
	output wire [8:0] X_state,
	output wire [8:0] O_state,
	output wire [2:0] GameStatus 
	// 0 (00) means game has just started/ can keep going on
	// 1 (01) means that X has won
	// 2 (10)means that O has won
	// 3 (11)means that there is a draw
	// 4 (100)invalid move
	);

	reg [8:0] X_pos;
	reg [8:0] O_pos;
	
	// MAKE A MOVE
	always @ (posedge clk or posedge rst)
	begin
		if (rst) begin
			game_stats <= 0; // game status
			X_pos <= 0;
			O_pos <= 0;
		end
		else if(move  && ((X_pos & O_pos) == 0))
		// if current board is valid AND you want to make a move (input from user!)
		begin
			if(player == 0) // O move
			begin
				case(nextMove)
					1: // tile 1, O
						if(X_pos[8] == 0 && O_pos[8] != 1) // if no move made yet
							O_pos[8] <= 1;

					2: // tile 2, O
						if(X_pos[7] == 0 && O_pos[7] != 1) // if no move made yet
							O_pos[7] <= 1;

					3: // tile 3, O
						if(X_pos[6] == 0 && O_pos[6] != 1) // if no move made yet
							O_pos[6] <= 1;

					4: // tile 4, O
						if(X_pos[5] == 0 && O_pos[5] != 1) // if no move made yet
							O_pos[5] <= 1;

					5: // tile 5, O
						if(X_pos[4] == 0 && O_pos[4] != 1) // if no move made yet
							O_pos[4] <= 1;

					6: // tile 6, O
						if(X_pos[3] == 0 && O_pos[3] != 1) // if no move made yet
							O_pos[3] <= 1;

					7: // tile 7, O
						if(X_pos[2] == 0 && O_pos[2] != 1) // if no move made yet
							O_pos[2] <= 1;

					8: // tile 8, O
						if(X_pos[1] == 0 && O_pos[1] != 1) // if no move made yet
							O_pos[1] <= 1;

					9: // tile 9, O
						if(X_pos[0] == 0 && O_pos[0] != 1) // if no move made yet
							O_pos[0] <= 1;

					default: // wrong move, do nothing 
					//(taken care of in game status below)
					;
				endcase
						
				// UPDATE game state!
				case(nextMove)
					1,2,3,4,5,6,7,8,9: // tile 9, O
						game_stats <= 0;
					default: // wrong move, do nothing
						game_stats <= 4;
				endcase
				
				// Check if O won.  
				// If not, and xoring two positions together creates 111111111, then there is draw
				if(O_pos == 9'b000_000_111 || O_pos == 9'b000_111_000 || O_pos == 9'b111_000_000 || // horizontal
					O_pos == 9'b100_100_100 || O_pos == 9'b010_010_010 || O_pos == 9'b001_001_001 || //vertical
					O_pos == 9'b100_010_001 || O_pos == 9'b001_010_100) //diagonal
						game_stats <= 1;
				else if(O_pos ^ X_pos == 9'b111_111_111)
						game_stats <= 2;
			end
			else // X move
			begin
				case(nextMove)
					1: // tile 1, X
						if(O_pos[8] == 0 && X_pos[8] != 1) // if no move made yet
							X_pos[8] <= 1;

					2: // tile 2, X
						if(O_pos[7] == 0 && X_pos[7] != 1) // if no move made yet
							X_pos[7] <= 1;

					3: // tile 3, X
						if(O_pos[6] == 0 && X_pos[6] != 1) // if no move made yet
							X_pos[6] <= 1;

					4: // tile 4, X
						if(O_pos[5] == 0 && X_pos[5] != 1) // if no move made yet
							X_pos[5] <= 1;

					5: // tile 5, X
						if(O_pos[4] == 0 && X_pos[4] != 1) // if no move made yet
							X_pos[4] <= 1;

					6: // tile 6, X
						if(O_pos[3] == 0 && X_pos[3] != 1) // if no move made yet
							X_pos[3] <= 1;

					7: // tile 7, X
						if(O_pos[2] == 0 && X_pos[2] != 1) // if no move made yet
							X_pos[2] <= 1;

					8: // tile 8, X
						if(O_pos[1] == 0 && X_pos[1] != 1) // if no move made yet
							X_pos[1] <= 1;

					9: // tile 9, X
						if(O_pos[0] == 0 && X_pos[0] != 1) // if no move made yet
							X_pos[0] <= 1;

					default: // wrong move, do nothing 
					//(taken care of in game status below)
					;
				endcase
							
				// CHECK WIN for X
				case(nextMove)
					1,2,3,4,5,6,7,8,9: // X
					game_stats <= 0;
				default: // wrong move, do nothing
					game_stats <= 4;
				endcase
							
				// Check if X won
				// If not, and xoring two positions together creates 111111111, then there is draw
				if(X_pos == 9'b000_000_111 || X_pos == 9'b000_111_000 || X_pos == 9'b111_000_000 || // horizontal
					X_pos == 9'b100_100_100 || X_pos == 9'b010_010_010 || X_pos == 9'b001_001_001 || //vertical
					X_pos == 9'b100_010_001 || X_pos == 9'b001_010_100) //diagonal
					game_stats <= 1;
				else if(O_pos ^ X_pos == 9'b111_111_111)
					game_stats <= 3;
			end
		end
	end
	
	assign GameStatus = game_stats; 
	assign X_state = X_pos;
	assign O_state = O_pos;
endmodule