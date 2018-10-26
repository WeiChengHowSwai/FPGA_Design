module	RGB_LED(
	clk,		
	rst,
	btn,
	sw,
	R_out,
	G_out,
	B_out,
	led
);

	input			clk;		
	input			rst;
	input  [2:0]    btn;
	input  [1:0]    sw;
	output			R_out;
	output			G_out;
	output          B_out;
	output reg  [3:0]   led;

reg     [26:0] btn_divider;
reg		[7:0]	counter;
reg     [7:0]   G_time;
reg     [7:0]   B_time;
reg     [7:0]   R_time;
reg     [3:0]   led_time;
reg     R_out, G_out, B_out;
/*
assign R_out=(sw==2'b01&&counter<R_time)?1'b1:1'b0;
assign G_out=(sw==2'b10&&counter<G_time)?1'b1:1'b0;
assign B_out=(sw==2'b11&&counter<B_time)?1'b1:1'b0;*/

always@(*)begin
  if(btn[0] && sw==2'b00)begin
    R_out=(counter<R_time)?1'b1:1'b0;
    G_out=(counter<G_time)?1'b1:1'b0;
    B_out=(counter<B_time)?1'b1:1'b0;
  end
  else begin
    R_out=1'b0;
    G_out=1'b0;
    B_out=1'b0;
  end
end

//btn_divider
always@(posedge clk or posedge rst)
begin
  if(rst) btn_divider<=27'd0;
  else    btn_divider<=( btn_divider==27'd62500000)?27'd0: btn_divider+27'd1;
end

//counter
always@(posedge clk or posedge rst)
begin
  if(rst) counter<=8'd0;
  else    counter<=(counter==8'd255)?8'd0:counter+8'd1;
end

//R_time B_time G_time
always@(posedge clk or posedge rst)
begin
  if(rst)begin
    R_time<=8'd0;
    G_time<=8'd0;
    B_time<=8'd0;
  end
  
  else if(sw==2'b01)begin
    if(btn[1]&&(R_time!=8'd255)&&(btn_divider==27'd0)) R_time<=R_time+8'd16;
    else if(btn[2]&&(R_time!=8'd0)&&(btn_divider==27'd0)) R_time<=R_time-8'd16;
  end
  
  else if(sw==2'b10)begin
    if(btn[1]&&(G_time!=8'd255)&&(btn_divider==27'd0)) G_time<=G_time+8'd16;
    else if(btn[2]&&(G_time!=8'd0)&&(btn_divider==27'd0)) G_time<=G_time-8'd16;
  end
  
  else if(sw==2'b11)begin
    if(btn[1]&&(B_time!=8'd255)&&(btn_divider==27'd0)) B_time<=B_time+8'd16;
    else if(btn[2]&&(B_time!=8'd0)&&(btn_divider==27'd0)) B_time<=B_time-8'd16;
  end
end

//led
always@(*)
begin
  if(rst) led<=4'd0;
  else if(sw==2'b01) led<=R_time[7:4];
  else if(sw==2'b10) led<=G_time[7:4];
  else if(sw==2'b11) led<=B_time[7:4];
  else led<=4'd0;
end

endmodule
