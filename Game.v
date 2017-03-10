`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:28:25 03/19/2013 
// Design Name: 
// Module Name:    NERP_demo_top 
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
module Game(
	input wire clk,			//master clock = 100MHz
	input wire clr,			//right-most pushbutton for reset
	input wire [4:0] sw,  // Controls the input move number, AI difficulty
	input wire btnInput, // Middle Button
	input wire btnReset, // Top Button
	//output wire [6:0] seg,	//7-segment display LEDs
	//output wire [3:0] an,	//7-segment display anode enable
	//output wire dp,			//7-segment display decimal point
	output wire [2:0] red,	//red vga output - 3 bits
	output wire [2:0] green,//green vga output - 3 bits
	output wire [1:0] blue,	//blue vga output - 2 bits
	output wire hsync,		//horizontal sync out
	output wire vsync			//vertical sync out
	);

// VGA display clock interconnect
wire pix_en;
wire logic_en;//logic clock interconnect
wire logic_en_delay;//logic clock interconnect

reg rst_vga;
reg rst_ff;
 
always @(posedge clk or posedge clr) begin
	if (clr) begin
		{rst_vga,rst_ff} <= 2'b11;
	end
	else begin
		{rst_vga,rst_ff} <= {rst_ff,1'b0};
	end
end

// generate 7-segment clock & display clock
clockdiv U1(
	.clk(clk),
	.rst(rst_vga),
	.logic_en(logic_en),
	.logic_en_1(logic_en_delay),
	.pix_en(pix_en)
	);

wire move; // Player indicates they want to make a move - debounced btnInput rising edge
wire player;
reg [3:0] nextMove;


/* DEBOUCNING INPUT */

	
	wire btnMove_sync;
	wire rst;

	
	wire AI_switch;
	wire switch1, switch2, switch3, switch4;
	
	Synchronizer rst_sync(
		.clk(clk),
		.async_in(btnReset),
		.reset(1'b0),
		.synch_out(rst)
	);
	
	Synchronizer input_move_sync(
		.clk(clk),
		.async_in(btnInput),
		.reset(rst),
		.synch_out(btnMove_sync)
	);
	
	Synchronizer AI_sw_sync(
		.clk(clk),
		.async_in(sw[0]),
		.reset(rst),
		.synch_out(AI_switch)
	);
		// syncrhonize user's move input
	Synchronizer input1_sw_sync(
		.clk(clk),
		.async_in(sw[1]),
		.reset(rst),
		.synch_out(switch1)
	);

	Synchronizer input2_sw_sync(
		.clk(clk),
		.async_in(sw[2]),
		.reset(rst),
		.synch_out(switch2)
	);
	
	Synchronizer input3_sw_sync(
		.clk(clk),
		.async_in(sw[3]),
		.reset(rst),
		.synch_out(switch3)
	);

	Synchronizer input4_sw_sync(
		.clk(clk),
		.async_in(sw[4]),
		.reset(rst),
		.synch_out(switch4)
	);
	
	Debouncer deb_S(
		.clk(clk),
		.clk2(logic_en),
		.real_btn_input(btnMove_sync),
		.debounced_btn_input(move)
	);
	
	always @(*)
	begin	nextMove = {switch4, switch3, switch2, switch1};
	end


wire [8:0] X_state;
wire [8:0] O_state;
wire [2:0] GameStatus;
wire [8:0] AIMove;

SimpleAI sa(
	.X_state(X_state),
	.O_state(O_state),
	.AIMove(AIMove)
	);

GameState state(
	.rst(rst),
	.move(move),
	.clk(logic_en_delay),
	
	.player(player),
	.nextMove(nextMove),
	.AIMove(AIMove),
	
	.X_state(X_state),
	.O_state(O_state),
	.GameStatus(GameStatus)
	);


// VGA controller
vga640x480 U3(
	.pix_en(pix_en),
	.clk(clk),
	.rst(rst_vga),
	.o_vec(O_state),
	.x_vec(X_state),
	.game_status(GameStatus),
	.hsync(hsync),
	.vsync(vsync),
	.red(red),
	.green(green),
	.blue(blue)
	);

endmodule
