module Decoder (
  input  clk,
  input  rst,
  input  [1:0] sw,
  input  [3:1] btn,
  output reg [7:0] R_time_out,
  output reg [7:0] G_time_out,
  output reg [7:0] B_time_out,
  output reg led_enable,
  output reg [3:0] led
);


  always @ (posedge clk or posedge rst)begin
    if(rst)begin
      R_time_out <= 8'd48;
      G_time_out <= 8'd48;
      B_time_out <= 8'd48;
    end
    else begin
      if(btn[2])begin
        case (sw)
          2'b00: begin
            R_time_out <= R_time_out;
            G_time_out <= G_time_out;
            B_time_out <= B_time_out;
          end
          2'b01: begin
            R_time_out <= R_time_out + 8'd16;
            G_time_out <= G_time_out;
            B_time_out <= B_time_out;
          end
          2'b10: begin
            R_time_out <= R_time_out;
            G_time_out <= G_time_out + 8'd16;
            B_time_out <= B_time_out;
          end
          2'b11: begin
            R_time_out <= R_time_out;
            G_time_out <= G_time_out;
            B_time_out <= B_time_out + 8'd16;
          end                              
        endcase 
      end
      else if(btn[3])begin
        case (sw)
        2'b00: begin
          R_time_out <= R_time_out;
          G_time_out <= G_time_out;
          B_time_out <= B_time_out;
        end
        2'b01: begin
          R_time_out <= R_time_out - 8'd16;
          G_time_out <= G_time_out;
          B_time_out <= B_time_out;
        end
        2'b10: begin
          R_time_out <= R_time_out;
          G_time_out <= G_time_out - 8'd16;
          B_time_out <= B_time_out;
        end
        2'b11: begin
          R_time_out <= R_time_out;
          G_time_out <= G_time_out;
          B_time_out <= B_time_out - 8'd16;
        end                              
      endcase 
      end
      else begin
        R_time_out <= R_time_out;
        G_time_out <= G_time_out;
        B_time_out <= B_time_out;
      end     
    end
  end
  
  always @ ( * ) begin
    if(sw==2'b00 && btn[1]==1)
      led_enable = 1'b1 ;
    else 
      led_enable = 1'b0 ;
      
    case(sw) 
      2'b00: led = 4'd0;
      2'b01: led = R_time_out[7:4];
      2'b10: led = G_time_out[7:4];
      2'b11: led = B_time_out[7:4];
    endcase
  end

endmodule // Decoder
