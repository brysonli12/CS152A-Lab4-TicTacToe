# CS152A-Lab4-TicTacToe

## Layout of Files

1. VGA folder contains VGA related code: clock divider, vga640x480 which includes code we modified.
2. Game folder contains GameState (handles state), Game.v (top module)
3. AI Folder: AI.v - contains the simple AI;  Lookup.v - Lookup Table AI, Game.v (basic functionality of Game is here, which works with GameState and controls the output to segment display and vga)
4. Score Folder: Display.v - A module from lab 3 that we used for stopwatch display, modified for score display..  Uses a binary to BCD converter (binary_to_bcd.v, from online) to simplify how we output the score.
5. HandlingInput folder: Synchronizer.v and Debouncer.c - modules from lab 3 used fro synchronizing and debouncing signals from buttons/ switches
6. programsOnSide: one example of how we got the bit vector (later the program was changed so that it also printed out the zeros)

## Some Testbench files
1. Game/GameState_TB.v used to test our GameState
2. Lookup_TB.v used to test our lookup table AI
3. SimpleAI_TB.v used to test our simple/ easier AI

