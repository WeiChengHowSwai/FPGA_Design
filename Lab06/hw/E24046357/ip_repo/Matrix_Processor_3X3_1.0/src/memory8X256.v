`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/04/2018 08:54:06 PM
// Design Name: 
// Module Name: memory8X256
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


(* keep_hierarchy = "yes" *)module memory8X256(
    input clk ,
    input write_enable ,
    input [7:0] d_in ,
    input [7:0] addr ,
    output reg [7:0] d_out
    );
    
    reg [7:0] mem [0:255];
    
    always@(posedge clk)begin
        if(write_enable) mem[addr] <= d_in ;
        else d_out <= mem[addr] ;
    end
    
endmodule
