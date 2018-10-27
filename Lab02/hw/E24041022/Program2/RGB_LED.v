module	RGB_LED(
	input			clk,		//100MHz
	input			rst,
	input           butt2,
	input	[8:0]	R_time_in,
	input	[8:0]	G_time_in,
	input	[8:0]	B_time_in,
	output			R_out,
	output			G_out,
	output			B_out
);

wire	[8:0]	next_counter_300;

reg		[8:0]	counter_300;

assign			next_counter_300 = (counter_300 == 9'd299)? 9'd0 : counter_300 + 9'd1;	//400KHz

assign			R_out = (counter_300 < R_time_in)? 1'd1 : 1'd0;
assign			G_out = (counter_300 < G_time_in)? 1'd1 : 1'd0;
assign			B_out = (counter_300 < B_time_in)? 1'd1 : 1'd0;

always @(posedge clk or posedge rst)
begin
	if(rst)
	begin
		counter_300	<= 9'd0;
	end
	
	else
	begin
		counter_300	<= next_counter_300;
	end
end

endmodule
