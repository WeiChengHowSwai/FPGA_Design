module	RGB_LED(
	input			clk,		//100MHz
	input			rst,
	input	[7:0]	R1_time_in,
	input	[7:0]	G1_time_in,
	input	[7:0]	B1_time_in,
	input	[7:0]	R2_time_in,
	input	[7:0]	G2_time_in,
	input	[7:0]	B2_time_in,
	output			R1_out,
	output			G1_out,
	output			B1_out,
	output			R2_out,
	output			G2_out,
	output			B2_out	
);

wire	[7:0]	next_counter_256;

reg		[7:0]	counter_256;

assign			next_counter_256 = (counter_256 == 8'd255)? 8'd0 : counter_256 + 8'd1;	//400KHz

assign			R1_out = (counter_256 < R1_time_in)? 1'd1 : 1'd0;
assign			G1_out = (counter_256 < G1_time_in)? 1'd1 : 1'd0;
assign			B1_out = (counter_256 < B1_time_in)? 1'd1 : 1'd0;
assign			R2_out = (counter_256 < R2_time_in)? 1'd1 : 1'd0;
assign			G2_out = (counter_256 < G2_time_in)? 1'd1 : 1'd0;
assign			B2_out = (counter_256 < B2_time_in)? 1'd1 : 1'd0;

always @(posedge clk or posedge rst)
begin
	if(rst)
	begin
		counter_256	<= 8'd0;
	end
	else
	begin
		counter_256	<= next_counter_256;
	end
end

endmodule
