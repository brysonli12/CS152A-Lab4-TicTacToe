
`timescale 1ns / 1ps

module tb;
	reg rst;
	reg move;
	reg clk;
	reg player;
	reg [3:0] nextMove;

	wire [8:0] X_state;
	wire [8:0] O_state;
	wire [2:0] status;
	integer i, j;
	
	initial begin
		clk = 0;
		rst = 1;
		#1 rst = 0;
		move =1;//make move
		player =0;//O
		nextMove = 0; // top left
		#250
		move =1;//make move
		player =0;//O
		nextMove = 1; // top left
		#250
		i = 0; j = 0;
		while(i < 9 && j < 9)
		begin
			if(X_state[i] == 1)
				$display("X");
			else if(O_state[i] == 1)
				$display("O");
			else
				$display("B");
			if(i +1 %3 == 0) $display("\n");
			i = i+1; j=j+1;
		end
		$display("Game Status: %d", status);
		$finish;
	end

	always #3 clk = ~clk;

	GameState gs (
		.rst(rst), // start over, new game
		.move(move) ,// indicate that you want to make a move
		.clk(clk),
		.player(player), // 1 for X, 0 for O
		.nextMove(nextMove), // 4 digits, decides on location to try to make a move
		.X_state(X_state),
		.O_state(O_state),
		.GameStatus(status)
	// 0 (00) means game has just started/ can keep going on
	// 1 (01) means that X has won
	// 2 (10)means that O has won
	// 3 (11)means that there is a draw
	// 4 (100)invalid move
	);

	




endmodule