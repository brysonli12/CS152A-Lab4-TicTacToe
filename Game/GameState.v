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
							
	// Old input from lab3 (just in case we need it)
	//====================
	// input pause,
	//input select, //select is high for updating seconds over minutes
	//output wire [3:0] Minute0Input,
	//output wire [3:0] Minute1Input,
	//output wire [3:0] Second0Input,
	//output wire [3:0] Second1Input
	/*input clk_slw,
	input clk_fast,
	input clk_blink,*/
	);

	/*reg [3:0] Minute0;
	reg [3:0] Minute1;
	reg [3:0] Second0;
	reg [3:0] Second1;*/

	reg [8:0] X_pos;
	reg [8:0] O_pos;

	/*
    reg [3:0] Minute0Input;
    reg [3:0] Minute1Input;
    reg [3:0] Second0Input;
    reg [3:0] Second1Input;
	*/
	//reg paused = 0;
	//reg blink = 0;
	
	reg game_stats = 0;
	
	/*always @ (posedge clk or posedge rst) 
	begin
		if(rst) begin
			paused <= 0;
			blink <= 0;
		end
		else begin
			if(clk)
			begin
				paused <= pause ? ~paused : paused;
				paused <= clk_blink ? ~blink : blink;
			end
		end
	end*/
	
//	always @ (posedge pause) begin
//		paused = ~paused;
//	end
		
	// MAKE A MOVE
	// Tile Blocks
	// 0 | 1 | 2
	// 3 | 4 | 5
	// 6 | 7 | 8
	always @ (posedge clk or posedge rst)
	begin
		if (rst) begin
			game_stats <= 0; // game status
			X_pos <= 0;
			O_pos <= 0;

			/*Minute0 <= 'b0000;
			Minute1 <= 'b0000;
			Second0 <= 'b0000;
			Second1 <= 'b0000;
			*/
		end
		else if(move  && ((X_pos & O_pos) == 0))
		// if current board is valid AND you want to make a move (input from user!)
		// by default the board would be valid, but this is just a check
		begin
			if(player == 0) // O move
			begin
				case(nextMove)
					0: // tile 0, O
						if(X_pos[8] | O_pos[8] != 1) // if no move made yet
							O_pos[8] <= 1;

					1: // tile 1, O
						if(X_pos[7] | O_pos[7] != 1) // if no move made yet
							O_pos[7] <= 1;

					2: // tile 2, O
						if(X_pos[6] | O_pos[6] != 1) // if no move made yet
							O_pos[6] <= 1;

					3: // tile 3, O
						if(X_pos[5] | O_pos[5] != 1) // if no move made yet
							O_pos[5] <= 1;

					4: // tile 4, O
						if(X_pos[4] | O_pos[4] != 1) // if no move made yet
							O_pos[4] <= 1;

					5: // tile 5, O
						if(X_pos[3] | O_pos[3] != 1) // if no move made yet
							O_pos[3] <= 1;

					6: // tile 6, O
						if(X_pos[2] | O_pos[2] != 1) // if no move made yet
							O_pos[2] <= 1;

					7: // tile 7, O
						if(X_pos[1] | O_pos[1] != 1) // if no move made yet
							O_pos[1] <= 1;

					8: // tile 8, O
						if(X_pos[0] | O_pos[0] != 1) // if no move made yet
							O_pos[0] <= 1;

					default: // wrong move, do nothing 
					//(taken care of in game status below)
					;
				endcase
						
				// UPDATE game state!
				case(nextMove)
					0,1,2,3,4,5,6,7,8: 
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
					0: // tile 0, X
						if(O_pos[8] | X_pos[8] != 1) // if no move made yet
							X_pos[8] <= 1;

					1: // tile 1, X
						if(O_pos[7] | X_pos[7] != 1) // if no move made yet
							X_pos[7] <= 1;

					2: // tile 2, X
						if(O_pos[6] | X_pos[6] != 1) // if no move made yet
							X_pos[6] <= 1;

					3: // tile 3, X
						if(O_pos[5] | X_pos[5] != 1) // if no move made yet
							X_pos[5] <= 1;

					4: // tile 4, X
						if(O_pos[4] | X_pos[4] != 1) // if no move made yet
							X_pos[4] <= 1;

					5: // tile 5, X
						if(O_pos[3] | X_pos[3] != 1) // if no move made yet
							X_pos[3] <= 1;

					6: // tile 6, X
						if(O_pos[2] | X_pos[2] != 1) // if no move made yet
							X_pos[2] <= 1;

					7: // tile 7, X
						if(O_pos[1] | X_pos[1] != 1) // if no move made yet
							X_pos[1] <= 1;

					8: // tile 8, X
						if(O_pos[0] |&& X_pos[0] != 1) // if no move made yet
							X_pos[0] <= 1;

					default: // wrong move, do nothing 
					//(taken care of in game status below)
					;
				endcase
							
				// CHECK WIN for X
				case(nextMove)
					0,1,2,3,4,5,6,7,8: // X
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
        /*
        if (blink && !paused) begin
					Second0 <= 'b1111;
					Second1 <= 'b1111;
					Minute0 <= 'b1111;
					Minute1 <= 'b1111;
		   end
			else if(clk_slw && !paused) begin
			    if (Second0 == 'b1001) begin //carry on 9s
						 Second0 <= 'b0000; 
						 if(Second1 == 'b0101) begin //carry on 6s
							  Second1 <= 'b0000;
							  if(Minute0 == 'b1001)  begin // carry on 9s
									Minute0 <= 'b0000;
									if(Minute1 == 'b1001) begin // carry on 9s
										 Minute1 <= 'b0000;
									end
							  end
							  else begin
									Minute0 <= Minute0 + 1;
							  end
						 end
						 else begin
							  Second1 <= Second1 + 1;
						 end
					end
					else begin
						 Second0 <= Second0 + 1;
					end
			  end
		  end
		  else begin
			if (blink && !paused) begin
					Second0 <= 'b1111;
					Second1 <= 'b1111;
					Minute0 <= 'b1111;
					Minute1 <= 'b1111;
		   end
				else if(clk_fast && !paused) begin
				
					if (!select) begin //updating seconds
						 if (Second0 == 'b1001) begin
							  Second0 <= 'b0000;
							  if(Second1 == 'b0101) begin
									Second1 <= 'b0000;
							  end
							  else begin
									Second1 <= Second1 + 1;
							  end
						 end
						 else begin
							  Second0 <= Second0 + 1;
						 end
					end
					else begin
						 if (Minute0 == 'b1001) begin
							  Minute0 <= 'b0000;
							  if(Minute1 == 'b1001) begin
									Minute1 <= 'b0000;
							  end
							  else begin
									Minute1 <= Minute1 + 1;
							  end
						 end
						 else begin
							  Minute0 <= Minute0 + 1;
						 end
					end
			  end //otherwise we don't do anything
			end
		end
	assign Minute0Input = Minute0;
    assign Minute1Input = Minute1;
    assign Second0Input = Second0;
    assign Second1Input = Second1;*/
	 


endmodule