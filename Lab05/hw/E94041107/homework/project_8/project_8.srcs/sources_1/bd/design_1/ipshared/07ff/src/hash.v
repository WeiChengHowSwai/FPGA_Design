module hash(out,in);


input  [31:0]  in  ;
output [31:0] out;

wire [63:0] h0 ,h1 ,h2 ,h3;



assign h0 = (64'd5381 <<5)+ 64'd5381 + in[7:0] ;
assign h1 = (h0<<5) +h0 + in[15:8] ;
assign h2 = (h1<<5) +h1 + in[23:16] ;
assign h3 = (h2<<5) +h2 + in[31:24] ;

assign out=h3[31:0];
/*
always@(posedge clk or negedge rst)
begin
	if(~rst)
		reg_out <= 64'd5381 ;
	else if(counter == 4'd8)
		reg_out <= 64'd5381 ;
	else
		reg_out <= (reg_out<<5)+reg_out + in[counter] ;
		
end
*/





endmodule