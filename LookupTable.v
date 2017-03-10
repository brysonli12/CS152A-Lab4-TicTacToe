`timescale 1ns / 1ps
module LookupTable (
	input [8:0] X_state,
	input [8:0] O_state,
	output wire [8:0] AIMove 
	);

    wire [8:0] move, empty;



    // https://upload.wikimedia.org/wikipedia/commons/d/de/Tictactoe-X.svg
    always @(*)
    begin
        case(X_state)
            9'b000000000: move = 9'b100000000; // Game Start
            9'b100000000: // X ONLY in top left corner
                case(O_state):
                    9'b000000001: move = 9'b001000000;
                    9'b000000010: move = 9'b001000000;
                    9'b000000100: move = 9'b010000000;
                    9'b000001000: move = 9'b000010000;
                    9'b000010000: move = 9'b010000000;
                    9'b000100000: move = 9'b010000000;
                    9'b001000000: move = 9'b000100000;
                    9'b010000000: move = 9'b000100000;
                    9'b100000000:
                    default: // Either invalid state or player has not yet moved
                        move = 9'b000000000;
                endcase
            // This is the Round 2 moves
            9'b101000000:
                case (O_state):
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
                case (O_state):
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
                case (O_state):
                    9'b000001001: move = 9'b001000000; //Game continues
                    9'b000001010: move = 9'b000000001; // Case 1: center right on grid
                    9'b000001100: move = 9'b000000001; 
                    9'b000101000: move = 9'b000000001; 
                    9'b001001000: move = 9'b000000001; 
                    9'b010001000: move = 9'b000000001; 
                    default:  move = 9'b000000000;
                endcase
            9'b100100000:
                case (O_state):
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
            default: move = 9'b000000000;
        endcase
    end


    Empty emptyx (~(X_state | O_state), empty); 
    Select2 pick(move, empty, AIMove);
endmodule


