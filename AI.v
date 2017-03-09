`timescale 1ns / 1ps
module SimpleAI (
	input clk,
	input player, // 1 for X, 0 for O
	input [8:0] X_state,
	input [8:0] O_state,
	output wire [3:0] AIMove 
	);




endmodule



module TwoInRow(
    input [2:0] Xin,
    input [2:0] Oin,
    output wire [2:0] cout
    );

    assign cout[0] = ~Oin[0] & ~Xin[0] & Xin[1] & Xin[2];
    assign cout[0] = ~Oin[1] & Xin[0] & ~Xin[1] & Xin[2];
    assign cout[0] = ~Oin[2] & Xin[0] & Xin[1] & ~Xin[2];

endmodule


//Note that this module is actually reversible -- If you assign Y to X and X to Y it'll behave as expected.
//This solves for X with the current terminology (finds all spaces that have two in a row for X). 
module TwoInGrid(
    input [8:0] X_state,
    input [8:0] Y_state
    output wire [8:0] cout
    );

    wire [8:0] rows, cols;
    wire [2:0] diag1, diag2;

    //check rows
    TwoInRow row1 (X_state[2:0], Y_state[2:0], rows[2:0]);
    TwoInRow row2 (X_state[5:3], Y_state[5:3], rows[5:3]);
    TwoInRow row3 (X_state[8:6], Y_state[8:6], rows[8:6]);

    //check columns
    TwoInRow col1 ({X_state[2], X_state[5], X_state[8]}, {Y_state[2], Y_state[5], Y_state[8]}, {cols[2], cols[5], cols[8]});
    TwoInRow col1 ({X_state[1], X_state[4], X_state[7]}, {Y_state[1], Y_state[4], Y_state[7]}, {cols[1], cols[4], cols[7]});
    TwoInRow col1 ({X_state[0], X_state[3], X_state[6]}, {Y_state[0], Y_state[3], Y_state[6]}, {cols[0], cols[3], cols[6]});

    //check diagonals
    TwoInRow diag1 ({X_state[8], X_state[4], X_state[0]}, {Y_state[8], Y_state[4], Y_state[0]}, diag1);
    TwoInRow diag2 ({X_state[6], X_state[4], X_state[2]}, {Y_state[6], Y_state[4], Y_state[2]}, diag2);

    assign cout = rows | cols | 
        {diag1[2], 1'b0, 1'b0, 1'b0, diag1[1], 1'b0, 1'b0, 1'b0, diag1[0]} | //diag1
        {1'b0, 1'b0, diag2[2], 1'b0, diag2[1], 1'b0, diag2[0], 1'b0, 1'b0}; //diag2
endmodule
