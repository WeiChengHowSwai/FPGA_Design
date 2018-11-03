`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/14/2018 02:40:06 PM
// Design Name: 
// Module Name: top
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


module top(
    input clk ,
    input sw[0] ,
    input [3:0] btn ,
    output logic led4_b ,
    output logic led4_g ,
    output logic led4_r ,
    output logic led5_b ,
    output logic led5_g ,
    output logic led5_r ,
    output logic [3:0]  led 
    );
    logic div_clk ;
    
    clk_div clk_div(
        .clk(clk) ,
        .rst(sw[0]) ,
        .clk_div(div_clk)
        );
    
    Prog1 Prog1(
        .clk(div_clk) ,
        .rst(sw[0]) ,
        .btn(btn) ,
        .led4_b(led4_b) ,
        .led4_g(led4_g) ,
        .led4_r(led4_r) ,
        .led5_b(led5_b) ,
        .led5_g(led5_g) ,
        .led5_r(led5_r) ,
        .cnt(led)
        );
        
endmodule
