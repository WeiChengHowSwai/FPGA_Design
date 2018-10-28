module Decoder (
  input  clk,
  input rst,
  input  [1:0] sw,
  input  [3:0] btn,
  output reg [7:0] R_time_out,
  output reg [7:0] G_time_out,
  output reg [7:0] B_time_out,
  output reg  led_r,
  output reg  led_g,
  output reg  led_b,
  output reg [3:0] led
);


//R,G,B_time_out
  always @ (posedge clk or posedge rst) begin
  if(rst)begin
     R_time_out <= 8'd128;
     G_time_out <= 8'd128;
     B_time_out <= 8'd128;
   end
   else begin
    case (sw)
      2'b00: begin
      if(btn[1])begin
        R_time_out <= 8'd255;
        G_time_out <= 8'd255;
        B_time_out <= 8'd255;
       end
      end
      2'b01: begin
      if(btn[2])
        R_time_out <= (R_time_out==8'd240)?8'd240:R_time_out+8'd16;
      else if(btn[3])
        R_time_out <= (R_time_out==8'd0)?8'd0:R_time_out-8'd16;
      end
      2'b10: begin
       if(btn[2])
          G_time_out <= (G_time_out==8'd240)?8'd240:G_time_out+8'd16;
       else if(btn[3])
          G_time_out <=(G_time_out==8'd0)?8'd0: G_time_out-8'd16;
      end
      2'b11: begin
     if(btn[2])
         B_time_out <= (B_time_out==8'd240)?8'd240:B_time_out+8'd16;
     else if(btn[3])
         B_time_out <= (B_time_out==8'd0)?8'd0:B_time_out-8'd16;
      end
      default: begin
       R_time_out <= 8'd128;
       G_time_out <= 8'd128;
       B_time_out <= 8'd128;
      end
    endcase
  end
end

//led
always@(*)begin
  case(sw)
  2'b00: led[3:0]=4'd0;
  2'b01: led[3:0]=R_time_out[7:4];
  2'b10: led[3:0]=G_time_out[7:4];
  2'b11: led[3:0]=B_time_out[7:4];
  default:led[3:0]=4'd0;
  endcase
end

//led_r,g,b
always@(posedge clk or posedge rst)begin
    if(rst)begin
      led_r=1'b0;
      led_g=1'b0;
      led_b=1'b0;
    end
    case(sw)
    2'b00:begin
          led_r=1'b0;
          led_g=1'b0;
          led_b=1'b0;
     end
     2'b01:begin
           led_r=1'b1;
           led_g=1'b0;
           led_b=1'b0;
      end
      2'b10:begin
            led_r=1'b0;
            led_g=1'b1;
            led_b=1'b0;
      end
     2'b11: begin
            led_r=1'b0;
            led_g=1'b0;
            led_b=1'b1;
      end
      default:begin
            led_r=1'b0;
            led_g=1'b0;
            led_b=1'b0;
     end
    endcase
end

endmodule // Decoder
