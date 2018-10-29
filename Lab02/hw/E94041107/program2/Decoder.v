module Decoder (
  input			div_clk,		//100MHz
  input			rst,
  input  [1:0] sw,
  input  [3:1] btn,
  output reg [7:0] R_time_out,
  output reg [7:0] G_time_out,
  output reg [7:0] B_time_out,
  output reg [3:0] led
);
reg [7:0] R;
reg [7:0] G;
reg [7:0] B;


  always @ ( * ) begin
    case (sw)
      2'b00: begin
        R_time_out = (btn[1])?R:0;
        G_time_out = (btn[1])?G:0;
        B_time_out = (btn[1])?B:0;
      end
      2'b01: begin
        R_time_out = R;
        G_time_out = 8'd0;
        B_time_out = 8'd0;
      end
      2'b10: begin
        R_time_out = 8'd0;
        G_time_out = G;
        B_time_out = 8'd0;
      end
      2'b11: begin
        R_time_out = 8'd0;
        G_time_out = 8'd0;
        B_time_out = B;
      end
      default: begin
        R_time_out = 8'd0;
        G_time_out = 8'd0;
        B_time_out = 8'd0;
      end
    endcase
  end
/////R
  always@(posedge div_clk or posedge rst)
  begin
	if(rst)
		R<=8'd128;
	else if(btn[2] && sw==2'b01)
		R<=R+5'd16;
	else if(btn[3] && sw==2'b01)
		R<=R-5'd16;	
  end
/////G 
  always@(posedge div_clk or posedge rst)
  begin
	if(rst)
		G<=8'd128;
	else if(btn[2] && sw==2'b10)
		G<=G+5'd16;
	else if(btn[3] && sw==2'b10)
		G<=G-5'd16;
  end
  
  ///////B
  always@(posedge div_clk or posedge rst)
  begin
	if(rst)
		B<=8'd128;
	else if(btn[2] && sw==2'b11)
		B<=B+5'd16;
	else if(btn[3] && sw==2'b11)
		B<=B-5'd16;
  end
  
  always@(*)
     case(sw)
       2'b01:led=R[7:4];
	   2'b10:led=G[7:4];
	   2'b11:led=B[7:4];
	   default:led=4'b0000;
	 endcase
  
  
endmodule // Decoder
