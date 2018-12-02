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
    assign X0 = XOR(D[0],D[1]);
    assign X1 = XOR(D[2],D[3]);
    assign X2 = XOR(D[4],D[5]);
    assign X3 = XOR(D[6],D[7]);
    assign X4 = XOR(D[8],D[9]);
    assign X5 = XOR(D[10],D[11]);
    assign X6 = XOR(D[12],D[13]);
    assign X7 = XOR(D[14],D[15]);
    assign X8 = XOR(D[16],D[17]);
    assign X9 = XOR(D[18],D[19]);
    assign X10 = XOR(D[20],D[21]);
    assign X11 = XOR(D[22],D[23]);
    assign X12 = XOR(D[24],D[25]);
    assign X13 = XOR(D[26],D[27]);
    assign X14 = XOR(D[28],D[29]);
    assign X15 = XOR(D[30],D[31]);
    assign X16 = XOR(X0,X1);
    assign X17 = XOR(X2,X3);
    assign X18 = XOR(X4,X5);
    assign X19 = XOR(X6,X7);
    assign X20 = XOR(X8,X9);
    assign X21 = XOR(X10,X11);
    assign X22 = XOR(X12,X13);
    assign X23 = XOR(X14,X15);
    assign X24 = XOR(X16,X17);
    assign X25 = XOR(X18,X19);
    assign X26 = XOR(X20,X21);
    assign X27 = XOR(X22,X23);
    assign X28 = XOR(X24,X25);
    assign X29 = XOR(X26,X27);
    assign X30 = XOR(X28,X29); 
    
    //ª÷¦r¶ð«¬,so tired,but very fast
    
    assign P = X30;
    
    
endmodule
