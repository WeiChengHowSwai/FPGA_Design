`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/12/02 19:13:43
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
        datain,
        paritybit
    );
input [31:0] datain;
output paritybit; 

wire w1,w2,w3,w4,w5,w6,w7,w8,w9,w10,w11,w12,w13,w14,w15,w16,w17,w18,w19,w20,w21,w22,w23,w24,w25,w26,w27,w28,w29,w30;

    xor x1(w1,datain[0],datain[1]);
    xor x2(w2,datain[2],datain[3]);
    xor x3(w3,datain[4],datain[5]);
    xor x4(w4,datain[6],datain[7]);
    xor x5(w5,datain[8],datain[9]);
    xor x6(w6,datain[10],datain[11]);
    xor x7(w7,datain[12],datain[13]);
    xor x8(w8,datain[14],datain[15]);
    xor x9(w9,datain[16],datain[17]);
    xor x10(w10,datain[18],datain[19]);
    xor x11(w11,datain[20],datain[21]);
    xor x12(w12,datain[22],datain[23]);
    xor x13(w13,datain[24],datain[25]);
    xor x14(w14,datain[26],datain[27]);
    xor x15(w15,datain[28],datain[29]);
    xor x16(w16,datain[30],datain[31]);
    
    xor x17(w17,w1,w2);
    xor x18(w18,w3,w4);
    xor x19(w19,w5,w6);
    xor x20(w20,w7,w8);
    xor x21(w21,w9,w10);
    xor x22(w22,w11,w12);
    xor x23(w23,w13,w14);
    xor x24(w24,w15,w16);
    
    xor x25(w25,w17,w18);
    xor x26(w26,w19,w20);
    xor x27(w27,w21,w22);
    xor x28(w28,w23,w24);
    
    xor x29(w29,w25,w26);
    xor x30(w30,w27,w28);
    
    xor x31(paritybit,w29,w30);
endmodule