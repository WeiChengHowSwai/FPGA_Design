`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/11/29 22:23:55
// Design Name: 
// Module Name: parity
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


module parity(
    input [31:0] D,
    output wire P
    );
    
    wire X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X18,X19,X20,X21,X22,X23,X24,X25,X26,X27,X28,X29,X30;
    assign X0 = D[0]^D[1];
    assign X1 = D[2]^D[3];
    assign X2 = D[4]^D[5];
    assign X3 = D[6]^D[7];
    assign X4 = D[8]^D[9];
    assign X5 = D[10]^D[11];
    assign X6 = D[12]^D[13];
    assign X7 = D[14]^D[15];
    assign X8 = D[16]^D[17];
    assign X9 = D[18]^D[19];
    assign X10 = D[20]^D[21];
    assign X11 = D[22]^D[23];
    assign X12 = D[24]^D[25];
    assign X13 = D[26]^D[27];
    assign X14 = D[28]^D[29];
    assign X15 = D[30]^D[31];
    assign X16 = X0^X1;
    assign X17 = X2^X3;
    assign X18 = X4^X5;
    assign X19 = X6^X7;
    assign X20 = X8^X9;
    assign X21 = X10^X11;
    assign X22 = X12^X13;
    assign X23 = X14^X15;
    assign X24 = X16^X17;
    assign X25 = X18^X19;
    assign X26 = X20^X21;
    assign X27 = X22^X23;
    assign X28 = X24^X25;
    assign X29 = X26^X27;
    assign X30 = X28^X29; 
    
    //ª÷¦r¶ð«¬,so tired,but very fast
    
    assign P = X30;
    
    
endmodule
