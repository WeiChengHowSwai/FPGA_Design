module Decoder (
  input  clk,
  input  rst,
  input  btn,
  input  [7:0]G_time,
  input  [7:0]Y_time,
  input  [7:0]R_time,
  output reg [7:0] R1_time_out,
  output reg [7:0] G1_time_out,
  output reg [7:0] B1_time_out,
  output reg [7:0] R2_time_out,
  output reg [7:0] G2_time_out,
  output reg [7:0] B2_time_out,
  output reg [3:0]led
);

parameter G1=2'd0;
parameter Y1=2'd1;
parameter G2=2'd2;
parameter Y2=2'd3;

reg [1:0] cs,ns;
reg       fliker;

wire	[7:0]	next_counter_256;
reg		[7:0]	counter_256;
assign			next_counter_256 = ((counter_256 > (G_time + Y_time + R_time))||(counter_256 == (G_time + Y_time + R_time)))? 8'd0 : counter_256 + 8'd1;

wire    [7:0]   led_time;
assign  led_time = R_time + G_time - counter_256;

  always @ (posedge clk or posedge rst) begin
    if(rst)begin
        fliker <= 1'd0;
        cs <= G1;
        counter_256	<= 8'd0;
    end
    else begin
        fliker <= fliker + 1'd1; 
        cs <= ns;
        counter_256	<= next_counter_256;
    end
  end

  always @ (*) begin
    case(cs)
        G1:begin
          R1_time_out = 8'd0;
          G1_time_out = 8'd255;
          B1_time_out = 8'd0;
          R2_time_out = 8'd255;
          G2_time_out = 8'd0;
          B2_time_out = 8'd0;
          led = G_time[3:0] - counter_256[3:0];
          ns = (counter_256 < G_time) ? G1 : Y1;
        end
        Y1:begin
          R1_time_out = 8'd100;
          G1_time_out = 8'd100;
          B1_time_out = 8'd0;
          R2_time_out = 8'd255;
          G2_time_out = 8'd0;
          B2_time_out = 8'd0;
          led = 4'd0;
          ns = (counter_256 < G_time+Y_time) ? Y1 : G2;
        end
        G2:begin
          R1_time_out = 8'd255;
          G1_time_out = 8'd0;
          B1_time_out = 8'd0;
          R2_time_out = 8'd0;
          G2_time_out = 8'd255;
          B2_time_out = 8'd0;   
          led = led_time[3:0];  
          ns = (counter_256 < G_time+Y_time+G_time) ? G2 : Y2;   
        end
        Y2:begin
          R1_time_out = 8'd255;
          G1_time_out = 8'd0;
          B1_time_out = 8'd0;
          R2_time_out = 8'd100;
          G2_time_out = 8'd100;
          B2_time_out = 8'd0;  
          led = 4'd0;   
          ns = (counter_256 > G_time+Y_time+G_time) ? Y2 : G1;   
        end
        default: begin
          R1_time_out = 8'd0;
          G1_time_out = 8'd0;
          B1_time_out = 8'd0;
          R2_time_out = 8'd0;
          G2_time_out = 8'd0;
          B2_time_out = 8'd0;
          led = 4'd0;
        end
    endcase
    
    if(btn)begin
          R1_time_out = (fliker)? 8'd100: 8'd0;
          G1_time_out = (fliker)? 8'd100: 8'd0;
          B1_time_out = 8'd0;
          R2_time_out = (fliker)? 8'd0: 8'd255;
          G2_time_out = 8'd0;
          B2_time_out = 8'd0;  
          led = 4'd0;    
    end
    
  end

endmodule // Decoder
