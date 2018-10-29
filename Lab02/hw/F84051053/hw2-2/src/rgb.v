`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/10/26 01:57:05
// Design Name: 
// Module Name: rgb
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

module rgb(
    input clk,
    input reset,
    input [1:0] sw,
    input [3:1] btn,
    output led4_g,led4_r,led4_b,
    output [3:0] led
);
wire [3:2] pb_dbn;
//debounce circuit
debounce dbn(
    .clk(clk),
    .pb(btn[3]),
    .pb_dbn(pb_dbn[3])
);

debounce dbn2(
    .clk(clk),
    .pb(btn[2]),
    .pb_dbn(pb_dbn[2])
);


pwm PWM(
    .clk(clk),
    .reset(reset),
    .sw(sw),
    .pb_dbn(pb_dbn),
    .btn(btn[1]),
    .red(led4_r),
    .green(led4_g),
    .blue(led4_b),
    .led(led)
);

endmodule