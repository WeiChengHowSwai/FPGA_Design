module	RGB_LED(
	clk,		//100MHz
	rst,
	btn,
	R_out,
	G_out,
	led5_g,
	led5_r,
	led
);

	input			clk;		//100MHz
	input			rst;
	input  [3:0]    btn;
	output			R_out;
	output			G_out;
	output          led5_g;
	output          led5_r;
	output reg  [3:0]   led;

//wire	[7:0]	next_counter_256;

reg		[7:0]	counter_256;
reg     [7:0]   g_time;
reg     [7:0]   y_time;
reg     [7:0]   r_time;
reg     [3:0]   led_time;
reg     [3:0]   decrease; //record the decrease of green light
reg     [3:0]   increase; //record the increase of green light


assign	R_out = (counter_256 < r_time||counter_256>=(g_time+r_time))? 1'd1 : 1'd0;
assign	G_out = (counter_256 >= r_time)? 1'd1 : 1'd0;
assign  led5_g= (counter_256<(g_time+y_time))? 1'd1 : 1'd0;
assign	led5_r = (counter_256 >= g_time)? 1'd1 : 1'd0;

always@(posedge clk or posedge rst)
begin
  if(rst) begin
    g_time<=8'd30;
    y_time<=8'd10;
    r_time<=8'd40;
  end
  else if(counter_256==(r_time+g_time+y_time))begin
    g_time<=(g_time+8'd2*(increase+btn[3]-decrease-btn[2])<8'd1)?8'd1:g_time+8'd2*(increase+btn[3]-decrease-btn[2]);
    r_time<=(g_time+8'd2*(increase+btn[3]-decrease-btn[2])<8'd1)?(8'd1+y_time):r_time+8'd2*(increase+btn[3]-decrease-btn[2]);
  end   
end

//decrease and increase
always@(posedge clk or posedge rst)
begin
  if(rst) begin
    decrease<=4'd0;
    increase<=4'd0;
  end
  else if(btn[2]) decrease<=decrease+4'd1;
  else if(btn[3]) increase<=increase+4'd1;
  else if(counter_256==(g_time+y_time+r_time)) begin
    decrease<=4'd0;
    increase<=4'd0;
  end
end


always@(posedge clk or posedge rst)
begin
  if(rst)  led_time<=4'b1111;   
  else if(counter_256==r_time+g_time+y_time)begin
    led_time<=((led_time+increase-decrease)<4'd1)?4'd1:led_time+increase-decrease;
  end
end

always @(posedge clk or posedge rst)
begin
	if(rst)	begin
		counter_256	<= 8'd0;
	end
	else if(btn[1])begin
	   if(counter_256>=r_time && counter_256<(r_time+g_time)) counter_256<=r_time+g_time;
	   else if(counter_256<g_time) counter_256<=g_time;
	end
	else begin
	  if(counter_256 == (g_time+y_time+r_time)) counter_256<=8'd0;
	  else counter_256<=counter_256+8'd1;
		//counter_256	<= next_counter_256;
	end
end

always@(posedge clk or posedge rst)
begin
  if(rst) led<=4'b1111;
  else begin
    if(btn[1]) led<=4'd0;
    else if(counter_256<g_time && counter_256[0]==1'b1) led<=led-4'd1;
    else if(counter_256==(r_time-8'd1)) led<=led_time;
     else if(/*counter_256==(r_time-8'd1)||*/counter_256==(g_time+y_time+r_time)) led<=((led_time+increase-decrease)<4'd1)?4'd1:led_time+increase-decrease;
     else if(counter_256>r_time && counter_256<(r_time+g_time) && counter_256[0]==1'b1) led<=led-4'd1;
  end
end

endmodule
