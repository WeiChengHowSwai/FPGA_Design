module hash(out,in,clk,rst);

input clk , rst ;
input  [0:7]  in  ;
output [63:0] out ;

reg [63:0] out;
reg [63:0] reg_out ;
reg [3:0] counter ;

always@(posedge clk or posedge rst)
begin
	if(rst)
		counter <= 4'd0 ;
	else if(counter == 4'd8)
		counter <= 4'd0 ;
	else
		counter <= counter + 4'd1 ;
end

always@(posedge clk or posedge rst)
begin
	if(rst)
		out <= 64'd0 ;
	else if (counter == 4'd8)
		out <= reg_out ;
	else
		out <= out ;
end 

always@(posedge clk or posedge rst)
begin
	if(rst)
		reg_out <= 64'd5381 ;
	else if(counter == 4'd8)
		reg_out <= 64'd5381 ;
	else if (counter == 4'd0)
		reg_out <= (reg_out<<5)+reg_out + in[counter] ;
		
end






endmodule