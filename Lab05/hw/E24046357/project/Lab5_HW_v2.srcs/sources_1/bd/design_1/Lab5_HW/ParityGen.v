`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/26/2018 07:22:52 PM
// Design Name: 
// Module Name: ParityGen
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


module ParityGen(
    input [31:0] data , 
    output wire parity
    );
    wire a0 , a1 , a2 , a3 , a4 , a5 , a6 , a7 , a8 , a9 , a10 , a11 , a12 , a13 , a14 , a15 ;
    wire b0 , b1 , b2 , b3 , b4 , b5 , b6 , b7 ;
    wire c0 , c1 , c2 , c3 ;
    wire d0 , d1 ;
    
    assign a0 = data[0] ^ data[1] ;
    assign a1 = data[2] ^ data[3] ;
    assign a2 = data[4] ^ data[5] ;
    assign a3 = data[6] ^ data[7] ;
    assign a4 = data[8] ^ data[9] ;
    assign a5 = data[10] ^ data[11] ;
    assign a6 = data[12] ^ data[13] ;
    assign a7 = data[14] ^ data[15] ;
    assign a8 = data[16] ^ data[17] ;
    assign a9 = data[18] ^ data[19] ;
    assign a10 = data[20] ^ data[21] ;
    assign a11 = data[22] ^ data[23] ;
    assign a12 = data[24] ^ data[25] ;
    assign a13 = data[26] ^ data[27] ;
    assign a14 = data[28] ^ data[29] ;
    assign a15 = data[30] ^ data[31] ;
    assign b0 = a0 ^ a1;
    assign b1 = a2 ^ a3;
    assign b2 = a4 ^ a5;
    assign b3 = a6 ^ a7;
    assign b4 = a8 ^ a9;
    assign b5 = a10 ^ a11;
    assign b6 = a12 ^ a13;
    assign b7 = a14 ^ a15;
    assign c0 = b0 ^ b1;
    assign c1 = b2 ^ b3;
    assign c2 = b4 ^ b5;
    assign c3 = b6 ^ b7;
    assign d0 = c0 ^ c1;
    assign d1 = c2 ^ c3;
    assign parity = d0 ^ d1;
    
endmodule
