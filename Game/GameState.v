`timescale 1ns / 1ps
module GameState (
	
	input rst, // start over, new game
	input move ,// indicate that you want to make a move
	input clk,
	
	input [3:0] nextMove, // 4 digits, decides on location to try to make a move,
	input AISwitch,
	input [8:0] AIMove,
	input [8:0] AIMove_Hard,
//	output wire player, // 1 for X, 0 for O
	output wire [8:0] X_state,
	output wire [8:0] O_state,
	output wire [2:0] GameStatus,
	output wire [7:0] numWins
	// 0 (000) AI move
	// 7 (111) Player Move
	// 1 (01) means that X has won
	// 2 (10)means that O has won
	// 3 (11)means that there is a draw
	// 4 (100)invalid move
							
	);

	reg [8:0] X_pos;
	reg [8:0] tmp_X_pos;
	reg [8:0] O_pos;
	reg [8:0] tmp_O_pos = 9'b000000000;
	reg [2:0] game_stats = 0;
	reg [7:0] tmp_Score = 0;
	reg player;
	reg tmp_player;
		
	// MAKE A MOVE
	// Tile Blocks
	// 0 | 1 | 2
	// 3 | 4 | 5
	// 6 | 7 | 8
	always @(*)
	begin
	if(move)
		// if current board is valid AND you want to make a move (input from user!)
		// by default the board would be valid, but this is just a check
		begin
			if(player == 0) // O move
			begin
				case(nextMove)
					0: // tile 0, O
						if(X_pos[8] | O_pos[8] != 1) // if no move made yet
						begin
							tmp_O_pos = O_pos | 9'b100000000;
							tmp_player = ~player;
						end

					1: // tile 1, O
						if(X_pos[7] | O_pos[7] != 1) // if no move made yet
						begin
							tmp_O_pos = O_pos | 9'b010000000;
							tmp_player = ~player;
						end

					2: // tile 2, O
						if(X_pos[6] | O_pos[6] != 1) // if no move made yet
						begin
							tmp_O_pos = O_pos | 9'b001000000;
							tmp_player = ~player;
						end

					3: // tile 3, O
						if(X_pos[5] | O_pos[5] != 1) // if no move made yet
						begin
							tmp_O_pos = O_pos | 9'b000100000;
							tmp_player = ~player;
						end

					4: // tile 4, O
						if(X_pos[4] | O_pos[4] != 1) // if no move made yet
						begin
							tmp_O_pos = O_pos | 9'b000010000;
							tmp_player = ~player;
						end

					5: // tile 5, O
						if(X_pos[3] | O_pos[3] != 1) // if no move made yet
						begin
							tmp_O_pos = O_pos | 9'b000001000;
							tmp_player = ~player;
						end

					6: // tile 6, O
						if(X_pos[2] | O_pos[2] != 1) // if no move made yet
						begin
							tmp_O_pos = O_pos | 9'b000000100;
							tmp_player = ~player;
						end

					7: // tile 7, O
						if(X_pos[1] | O_pos[1] != 1) // if no move made yet
						begin
							tmp_O_pos = O_pos | 9'b000000010;
							tmp_player = ~player;
						end

					8: // tile 8, O
						if(X_pos[0] | O_pos[0] != 1) // if no move made yet
						begin
							tmp_O_pos = O_pos | 9'b000000001;
							tmp_player = ~player;
						end

					default: // wrong move, do nothing 
					//(taken care of in game status below)
					;
				endcase
				
			end
			
		end
		else if(player == 1 && move == 0 ) // X move
			begin // easy if AI Switch is false, else, use hard move
				if(AISwitch == 1'b0) begin
					tmp_X_pos = X_pos | AIMove;
					tmp_player = ~player;
				end
				else begin
					tmp_X_pos = X_pos | AIMove_Hard;
					tmp_player = ~player;
				end
				
//				X_pos = AISwitch ? X_pos | AIMove_Hard: X_pos | AIMove;
			end
	end
	
	always @ (posedge clk or posedge rst)
	begin
		if (rst) begin
			game_stats <= 0; // game status
			player <= 1; // initial player is AI
			X_pos <= 9'b000000000;
			O_pos <= 9'b000000000;
		end
		else begin
			player <= tmp_player;
			X_pos <= tmp_X_pos;
			O_pos <= tmp_O_pos;
			if (move) begin // player moved
				// UPDATE game state!
				case(nextMove)
					0,1,2,3,4,5,6,7,8: 
					begin
						game_stats <= 0;
					end
					default: // wrong move, do nothing
						game_stats <= 4;
				endcase
				
				// Check if O won.  
				// If not, and xoring two positions together creates 111111111, then there is draw
				if(O_pos == 9'b000_000_111 || O_pos == 9'b000_111_000 || O_pos == 9'b111_000_000 || // horizontal
					O_pos == 9'b100_100_100 || O_pos == 9'b010_010_010 || O_pos == 9'b001_001_001 || //vertical
					O_pos == 9'b100_010_001 || O_pos == 9'b001_010_100) //diagonal
				begin
						tmp_Score <= tmp_Score + 1;
						game_stats <= 2;
				end
				else if((O_pos | X_pos) == 9'b111_111_111)
						game_stats <= 3;
			end
			else  begin // AI moved
			
							
				// Check if X won
				// If not, and xoring two positions together creates 111111111, then there is draw
				if(X_pos == 9'b000_000_111 || X_pos == 9'b000_111_000 || X_pos == 9'b111_000_000 || // horizontal
					X_pos == 9'b100_100_100 || X_pos == 9'b010_010_010 || X_pos == 9'b001_001_001 || //vertical
					X_pos == 9'b100_010_001 || X_pos == 9'b001_010_100) //diagonal
				begin
					tmp_Score <= tmp_Score + 1;
					game_stats <= 1;
				end
				else if((O_pos | X_pos) == 9'b111_111_111)
					game_stats <= 3;
			end
		end
	end
	
	assign GameStatus = game_stats; 
	assign X_state = X_pos;
	assign O_state = O_pos;
	assign numWins = tmp_Score;


endmodule
