module pwm (
  input clk,
  input rst,
  input [1:0] sw,
  input [7:0] pwm_time,
  output reg R_out,
  output reg G_out,
  output reg B_out
);
  
  reg [7:0] counter;
  
//counter
always@(posedge clk or posedge rst)
begin
  if(rst) counter<=8'd0;
  else counter<=(counter==8'd255)?8'd0:counter+8'd1;
end

//R_out,G_out,B_out
always@(posedge clk or posedge rst)
begin
  if(rst)begin
    R_out<=1'b0;
	G_out<=1'b0;
	B_out<=1'b0;
  end
  else begin
    R_out<=(counter<pwm_time&&sw==2'b01)?1'b1:1'b0;
	G_out<=(counter<pwm_time&&sw==2'b10)?1'b1:1'b0;
	B_out<=(counter<pwm_time&&sw==2'b11)?1'b1:1'b0;
  end
end


endmodule
