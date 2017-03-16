`timescale 1ns / 1ps
module SimpleAI (
	input [8:0] X_state,
	input [8:0] O_state,
	output wire [8:0] AIMove 
	);

    wire [8:0] win, block, empty;

    // Win as X
    TwoInGrid winX(X_state, O_state, win);
    // Block O from Winning
    TwoInGrid blockO(O_state, X_state, block);
    // Pick a "Random" Empty square
    Empty emptyx (~(X_state | O_state), empty); 
    Select3 pick(win, block, empty, AIMove);
endmodule



module TwoInRow(
    input [2:0] Xin,
    input [2:0] Yin,
    output wire [2:0] cout
    );

    assign cout[0] = ~Yin[0] & ~Xin[0] & Xin[1] & Xin[2];
    assign cout[1] = ~Yin[1] & Xin[0] & ~Xin[1] & Xin[2];
    assign cout[2] = ~Yin[2] & Xin[0] & Xin[1] & ~Xin[2];

endmodule


//Note that this module is actually reversible -- If you assign Y to X and X to Y it'll behave as expected.
//This solves for X with the current terminology (finds all spaces that have two in a row for X). 
module TwoInGrid(
    input [8:0] X_state,
    input [8:0] Y_state,
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
    TwoInRow col2 ({X_state[1], X_state[4], X_state[7]}, {Y_state[1], Y_state[4], Y_state[7]}, {cols[1], cols[4], cols[7]});
    TwoInRow col3 ({X_state[0], X_state[3], X_state[6]}, {Y_state[0], Y_state[3], Y_state[6]}, {cols[0], cols[3], cols[6]});

    //check diagonals
    TwoInRow diagCheck1 ({X_state[8], X_state[4], X_state[0]}, {Y_state[8], Y_state[4], Y_state[0]}, diag1);
    TwoInRow diagCheck2 ({X_state[6], X_state[4], X_state[2]}, {Y_state[6], Y_state[4], Y_state[2]}, diag2);

    assign cout = rows | cols | 
        {diag1[2], 1'b0, 1'b0, 1'b0, diag1[1], 1'b0, 1'b0, 1'b0, diag1[0]} | //diag1
        {1'b0, 1'b0, diag2[2], 1'b0, diag2[1], 1'b0, diag2[0], 1'b0, 1'b0}; //diag2
endmodule

// Arbitriter, selecting the most significant bit. 
module RARb #(parameter n = 8)
	(r, g);
    input [n - 1 : 0] r;
    output [n - 1 : 0] g;
    wire [ n - 1  : 0 ] c = {1'b1, (~r[n-1:1] & c[n-1:1])};
    assign g = r & c;
endmodule

module Empty(
    input [8:0] in,
    output [8:0] out);

    RARb #(9) ra({in[7],in[0],in[2],in[6],in[8],in[1],in[3],in[5],in[4]},
        {out[7],out[0],out[2],out[6],out[8],out[1],out[3],out[5],out[4]}) ;
endmodule



module Select3(
    input [8:0] a,
    input [8:0] b,
    input [8:0] c,
    output wire [8:0] out);


    wire [26:0] x;
    RARb #(27) ra({a, b, c}, x);

    assign out = x[26:18] | x[17:9] | x[8:0];

endmodule

module Select2(
    input [8:0] a,
    input [8:0] b,
    output wire [8:0] out);


    wire [17:0] x;
    RARb #(18) ra({a, b}, x);

    assign out = x[17:9] | x[8:0];

endmodule
