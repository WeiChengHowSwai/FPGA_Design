`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/10/23 13:12:51
// Design Name: 
// Module Name: RGB_top
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
//////////////////////////////////////////////////////////////////////////////////"

module RGB_top(clk,rst,btn,led,R_out, G_out, B_out,led5_r, led5_g, led5_b);

input clk,rst;
input [3:1] btn;
output R_out, G_out, B_out,led5_r, led5_g, led5_b;
output [3:0] led;

wire clk_div;

divider divider( .clk(clk), .rst(rst), .clk_div(clk_div));
RGB_LED RGB_LED(.div_clk(clk_div),.rst(rst),.btn(btn),.led(led),.R1_out(R_out),.G1_out(G_out),.B1_out(B_out),
                .R2_out(led5_r),.G2_out(led5_g),. B2_out(led5_b));

endmodule
