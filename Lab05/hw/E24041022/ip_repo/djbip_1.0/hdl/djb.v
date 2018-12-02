`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/12/02 19:20:14
// Design Name: 
// Module Name: djb
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


module djb2(
hash,din,dout
    );
    input [7:0] din;
    input [31:0] hash;
    output [31:0] dout;
    assign dout=hash+(hash<<5)+din;
endmodule

