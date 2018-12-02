`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/12/02 19:09:18
// Design Name: 
// Module Name: math
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

module math(
    operand,
    a,
    b,
    answer
    );
    input [1:0] operand;
    input [31:0] a;
    input [31:0] b;
    output reg [31:0] answer;
  
    


always@(operand)  begin  
    case(operand) 
    2'b00:
      answer = a + b;
    2'b01:
      answer = a - b;
    2'b10:
      answer = a * b;   
    endcase
  end 
endmodule
