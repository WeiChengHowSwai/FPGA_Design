module alu (
  input [2:0] A,
  input [2:0] B,
  input [1:0] sel,
  output reg [3:0] S
);
  
  always@(*)
  case(sel)
     2'b00:S=A+B;
     2'b01:S=A-B;
     2'b10:S=A*B;
     default:S=4'b0000;
  endcase	 
 
endmodule
