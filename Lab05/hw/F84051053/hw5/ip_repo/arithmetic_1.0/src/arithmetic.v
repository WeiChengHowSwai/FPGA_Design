module arithmetic(
  input [3:0] A,
  input [3:0] B,
  input [1:0] op, //0 : * , 1 : + , 3 : -
  output reg [7:0] ans
);
    always@(*)begin
  
    case(op)
	  2'd0: ans = A*B;
    2'd1: ans = {4'b0, A} + {4'b0, B};
	  2'd3: ans = (A>B)? {3'b0, A} - {4'b0, B}:{4'b0, B} - {4'b0, A};
	  default: ans = 8'd0;
	endcase
  end

endmodule