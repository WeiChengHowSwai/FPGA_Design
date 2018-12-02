`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/02/2018 03:14:49 PM
// Design Name: 
// Module Name: djb2
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
    input [7:0] d_in ,
    input [31:0] hash_in ,
    output reg [31:0] hash_out
    );
    
    always@(*)begin
        hash_out = (hash_in << 5) + hash_in + d_in ;
    end
    
endmodule
