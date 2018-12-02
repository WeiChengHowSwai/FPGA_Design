module arithmetic (
  input [2:0] A,
  input [2:0] B,
  input [1:0] OPERATOR, //0 for + , 1 for - , 2 for *
  output reg [5:0] S
);
  
  //assign S = {1'b0, A} + {1'b0, B};
  
  always@(*)begin
  
    case(OPERATOR)
	  2'd0: S = {3'b0, A} + {3'b0, B};
	  2'd1: S = (A>B)? {3'b0, A} - {3'b0, B}:{3'b0, B} - {3'b0, A};
	  2'd2: S = A*B;
	  default: S = 6'd0;
	endcase
  end

endmodule
