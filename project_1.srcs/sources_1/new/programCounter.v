`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/14/2026 07:40:24 PM
// Design Name: 
// Module Name: n-bit-Register
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module programCounter(
input [31:0] d,
input clk, ld, clr, inc,
output [31:0] q);

wire [31:0] m;

assign m = inc ? q + 32'd4 : d;

nbitRegister register32( .d(m), .ld(ld), .clr(clr), .clk(clk), .q(q));

endmodule