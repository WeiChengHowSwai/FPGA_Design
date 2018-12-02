`timescale 1ns / 1ps

module arithmetic(A,B,operator,result);
input [2:0] A,B;
input [5:0] operator;
output wire [5:0] result;


 
 assign result=(operator==6'd43)?({3'd0,A}+{3'd0,B}):
                (operator==6'd45)?({3'd0,A}+{3'd1,~B+1}):
                (operator==6'd42)?A*B:6'd0;
 
endmodule
