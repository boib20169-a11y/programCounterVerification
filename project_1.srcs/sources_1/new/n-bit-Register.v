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

module nbitRegister(
    input [31:0] d,
    input ld, clr, clk,
    output reg [31:0] q
);

always @ (posedge clk)

    q <= ~clr ? 32'd0 : ld ? d : q;
endmodule
