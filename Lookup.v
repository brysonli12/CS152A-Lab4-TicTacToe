`timescale 1ns / 1ps
module LookupTableAI (
    input [8:0] X_state,
	input [8:0] O_state,
	output wire [8:0] AIMove 
)
    wire [8:0] rotation1, rotation2, rotation3, rotation4, empty;

    LookupTable rot1 (X_state, O_state, rotation1);
    LookupTable rot2 ({X_state[6], X_state[3], X_state[0], X_state[7], X_state[4], X_state[1], X_state[8], X_state[5], X_state[2]}, 
                      {O_state[6], O_state[3], O_state[0], O_state[7], O_state[4], O_state[1], O_state[8], O_state[5], O_state[2]}, rotation2);
    LookupTable rot3 ({X_state[2], X_state[5], X_state[8], X_state[1], X_state[4], X_state[7], X_state[0], X_state[3], X_state[6]}, 
                      {O_state[2], O_state[5], O_state[8], O_state[1], O_state[4], O_state[7], O_state[0], O_state[3], O_state[6]}, rotation3);
    LookupTable rot4 ({X_state[8], X_state[7], X_state[6], X_state[5], X_state[4], X_state[3], X_state[2], X_state[1], X_state[0]}, 
                      {O_state[8], O_state[7], O_state[6], O_state[5], O_state[4], O_state[3], O_state[2], O_state[1], O_state[0]}, rotation4);

    Empty emptyx (~(X_state | O_state), empty); 

    Select5 pick(rotation1, rotation2, rotation3, rotation4, empty);
endmodule


module LookupTable (
	input [8:0] X_state,
	input [8:0] O_state,
	output wire [8:0] AIMove 
	);

    reg [8:0] move;
	 wire  [8:0] empty;



    // https://upload.wikimedia.org/wikipedia/commons/d/de/Tictactoe-X.svg
    always @(*)
    begin
        case(X_state)
            9'b000000000:  move = 9'b100000000; // Game Start
            9'b100000000: // X ONLY in top left corner
                case(O_state)
                    9'b000000001: move = 9'b001000000;
                    9'b000000010: move = 9'b001000000;
                    9'b000000100: move = 9'b010000000;
                    9'b000001000: move = 9'b000010000;
                    9'b000010000: move = 9'b010000000;
                    9'b000100000: move = 9'b010000000;
                    9'b001000000: move = 9'b000100000;
                    9'b010000000: move = 9'b000100000;
                    //9'b100000000:
                    default: // Either invalid state or player has not yet moved
                        move = 9'b000000000;
                endcase
            // This is the Round 2 moves
            9'b101000000:
                case (O_state)
                    9'b000000011: move = 9'b010000000; // case 1: bottom right on grid
                    9'b000000101: move = 9'b010000000;
                    9'b000001001: move = 9'b010000000;
                    9'b000010001: move = 9'b010000000;
                    9'b000100001: move = 9'b010000000;
                    9'b010000001: move = 9'b000000100; // Game continues
                    9'b000000110: move = 9'b010000000; // case 2: bottom center on grid
                    9'b000001010: move = 9'b010000000;
                    9'b000010010: move = 9'b010000000;
                    9'b000100010: move = 9'b010000000;
                    9'b010000010: move = 9'b000010000; // Game continues
                    default:  move = 9'b000000000;
                endcase
            9'b110000000:
                case (O_state)
                    9'b000000011: move = 9'b001000000; // Case 1: bottom left on grid
                    9'b000000110: move = 9'b001000000; 
                    9'b000001010: move = 9'b001000000; 
                    9'b000010010: move = 9'b001000000; 
                    9'b000100010: move = 9'b001000000; 
                    9'b001000010: move = 9'b000010000; // Game continues
                    9'b000010001: move = 9'b001000000; // Case 2: center center on grid
                    9'b000010100: move = 9'b001000000;
                    9'b000011000: move = 9'b001000000;
                    9'b000110000: move = 9'b001000000;
                    9'b001010000: move = 9'b000000100; // Game continues
                    9'b000100001: move = 9'b001000000; // Case 3: middle left on grid
                    9'b000100100: move = 9'b001000000;
                    9'b000101000: move = 9'b001000000;
                    9'b001100000: move = 9'b000010000; // Game continues
                    default:  move = 9'b000000000;
                endcase
            9'b100010000:
                case (O_state)
                    9'b000001001: move = 9'b001000000; //Game continues
                    9'b000001010: move = 9'b000000001; // Case 1: center right on grid
                    9'b000001100: move = 9'b000000001; 
                    9'b000101000: move = 9'b000000001; 
                    9'b001001000: move = 9'b000000001; 
                    9'b010001000: move = 9'b000000001; 
                    default:  move = 9'b000000000;
                endcase
            9'b100100000:
                case (O_state)
                    9'b001000001: move = 9'b000000100; // Case 1: top right on grid
                    9'b001000010: move = 9'b000000100; 
                    9'b001000100: move = 9'b000010000; // Game continues
                    9'b001001000: move = 9'b000000100; 
                    9'b001010000: move = 9'b000000100; 
                    9'b011000000: move = 9'b000000100; 
                    9'b010000001: move = 9'b000000100; // Case 2: top center on grid
                    9'b010000010: move = 9'b000000100;
                    9'b010000100: move = 9'b000010000; // Game continues
                    9'b010001000: move = 9'b000000100;
                    9'b010010000: move = 9'b000000100;
                    default: move = 9'b000000000;
                endcase
            // This is Round 3 moves
            9'b100110000:
                case (O_state)
                    9'b011000100: move = 9'b000001000; // Case 1: top center on grid
                    9'b010001100: move = 9'b000000001;
                    9'b010000110: move = 9'b000001000;
                    9'b010000101: move = 9'b000001000; 
                    9'b001001100: move = 9'b000000001; // Case 2: top right on grid
                    9'b001000110: move = 9'b000001000;
                    9'b001000101: move = 9'b000001000;
                    default:  move = 9'b000000000;
                endcase
            9'b110010000:
                case (O_state)
                    9'b001101000: move = 9'b000000010; // Case 1: center left on grid
                    9'b001100100: move = 9'b000000010;
                    9'b001100010: move = 9'b000000001;
                    9'b001100001: move = 9'b000000010; // Case 2: bottom left on grid
                    9'b001001100: move = 9'b000000010;
                    9'b001000110: move = 9'b000000001;
                    9'b001000101: move = 9'b000000010;
                    default:  move = 9'b000000000;
                endcase
            9'b110000100:
                case (O_state)
                    9'b001110000: move = 9'b000001000; // Case 1: center center on grid, Game continues
                    9'b001011000: move = 9'b000100000;
                    9'b001010010: move = 9'b000100000;
                    9'b001010001: move = 9'b000100000;
                    default:  move = 9'b000000000;
                endcase
            9'b101010000:
                case (O_state)
                    9'b010001001: move = 9'b000000100; // Case 1: center right on grid
                    9'b000101001: move = 9'b010000000;
                    9'b000001101: move = 9'b010000000;
                    9'b000001011: move = 9'b010000000;
                    9'b010100010: move = 9'b000000100; // Case 2: center bottom on grid
                    9'b010001010: move = 9'b000000100;
                    9'b010000110: move = 9'b000000001;
                    9'b010000011: move = 9'b000000100;
                    default:  move = 9'b000000000;
                endcase
            9'b101000100:
                case (O_state)
                    9'b010100001: move = 9'b000010000; // Case 1: bottom right on the grid
                    9'b010010001: move = 9'b000100000;
                    9'b010001001: move = 9'b000100000;
                    9'b010000011: move = 9'b000100000;
                    default:  move = 9'b000000000;
                endcase
            // This is round 4 moves
            9'b110001100:
                case (O_state)
                    9'b001110010: move = 9'b000000001;
                    9'b001110001: move = 9'b000000010;
                endcase
            default: move = 9'b000000000;
        endcase
    end
    assign AIMove = move;
endmodule

module Select5(
    input [8:0] a,
    input [8:0] b,
    input [8:0] c,
    input [8:0] d,
    input [8:0] e,
    output wire [8:0] out);


    wire [44:0] x;
    RARb #(45) ra({a, b, c, d, e}, x);

    assign out = x[44:36] | x[35:27] | x[26:18] | x[17:9] | x[8:0];

endmodule