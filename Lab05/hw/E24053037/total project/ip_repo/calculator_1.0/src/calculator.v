module calculator(A,B,cmd,C);
	input  [31:0]A,B;
	input  [1:0]cmd;
	output reg [31:0]C;
	
	parameter add = 2'd0;
	parameter sub = 2'd1;
	parameter multiply =2'd2;
	always@(*)begin
	case (cmd)
		add:
			C=A+B;
		
		
		sub:
			C=A-B;
		
		
		multiply:
			C=A*B;
		
		
		default:
		
			C=32'b0;
	
	
	endcase 
	
	end
	





endmodule