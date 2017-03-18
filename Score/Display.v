`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:05:23 02/09/2017 
// Design Name: 
// Module Name:    Display 
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

module Display(
	 /* Inputs */
	 Value, clk, 
	 /* Outputs */
	 seg, an
    );
	input clk; // 700 Hz
	
	input [7:0] Value;
	
	output reg [7:0] seg;
	output reg [3:0] an;

    wire [7:0] Minute0;
    wire [7:0] Minute1;
    wire [7:0] Second0;
    wire [7:0] Second1;

	reg [1:0] state;
	reg [1:0] nextState;

	wire [3:0] Digit1Input;
	wire [3:0] Digit3Input;
	wire [3:0] Digit4Input;
	
	binary_to_BCD converter(
		.A(Value),
		.ONES(Digit3Input),
		.TENS(Digit4Input),
		.HUNDREDS(Digit1Input)
	);
	
    DisplayDigit min0 (
        .clk(clk),
        .Digit(Digit1Input),
        .Display(Minute0)
    );
	DisplayDigit sec0 (
        .clk(clk),
        .Digit(Digit3Input),
        .Display(Second0)
    );
	DisplayDigit sec1 (
        .clk(clk),
        .Digit(Digit4Input),
        .Display(Second1)
    );

	always @(posedge clk) begin
        case(state) 
            2'b00: begin
				an = 4'b1110;
				seg = Second0;
				nextState = 2'b01;
			end
            2'b01: begin
				an = 4'b1101;
				seg = Second1;
				nextState = 2'b10;
			end
            2'b10: begin
				an = 4'b1011;
				seg = Minute0;
				nextState = 2'b11;
			end
            default: begin
				an = 4'b0111;
				seg = 8'b11111111;
				nextState = 2'b00;
			end
        endcase
	end


	always @ (posedge clk) begin
		state <= nextState;
    end

endmodule



module DisplayDigit (
	/* Input */
	clk, Digit,
	/* Output */
	Display
    );
    
    input clk;//Clock,
    input [3:0] Digit;
    output reg [7:0] Display;
    
    always @ (posedge clk) begin
        case (Digit)
            4'h0: Display = 8'b11000000;
            4'h1: Display = 8'b11111001;
            4'h2: Display = 8'b10100100;
            4'h3: Display = 8'b10110000;
            4'h4: Display = 8'b10011001;
            4'h5: Display = 8'b10010010;
            4'h6: Display = 8'b10000010;
            4'h7: Display = 8'b11111000;
            4'h8: Display = 8'b10000000;
            4'h9: Display = 8'b10010000;
            default: Display = 8'b11111111;
        endcase
    end
endmodule