module Decoder (
input clk,
  input  [1:0] sw,
  input butt1,
  input butt2,
  input butt3,
  input butt4,
  output reg [3:0] led,
  output reg [8:0] R_time_out,
  output reg [8:0] G_time_out,
  output reg [8:0] B_time_out
);
reg [8:0] R_temp,G_temp,B_temp;

 

  always @ (posedge clk ) begin
    if(sw == 2'b01)
      led <= R_temp/20;
    else if(sw == 2'b10)
      led <= G_temp/20;
    else if(sw == 2'b11)
      led <= B_temp/20;
    else
      led <= 0;
  end


  always @ (posedge clk  ) begin
    
    if(sw == 2'b00) begin
      if(butt1) begin
           R_temp <= 0;
           G_temp <= 0;
           B_temp <= 0;
         end
      if(butt2) begin
        R_time_out <= R_temp;
        G_time_out <= G_temp;
        B_time_out <= B_temp;        
      end
     
      else begin
        R_time_out <= 0;
        G_time_out <= 0;
        B_time_out <= 0;
      end
    
    end 
    else if(sw == 2'b01) begin
    
      if(butt3) begin
        if(R_temp < 300) 
        R_temp <= R_temp + 20;
        else;
      end
      else if(butt4) begin 
        if(R_temp > 0)
        R_temp <= R_temp - 20;
        else;
      end
    
      else;
    end 
    
      else if(sw == 2'b10) begin
      if(butt3) begin
        if(G_temp < 300)
        G_temp <= G_temp + 20;
        else;
      end
      else if(butt4) begin 
        if(G_temp > 0)
        G_temp <= G_temp - 20;
        end
      
        else;
      end
      
      else if(sw == 2'b11) begin
      if(butt3) begin
        if(B_temp < 300)
        B_temp <= B_temp + 20;
        else;
      end
      else if(butt4) begin 
        if(B_temp > 0)
        B_temp <= B_temp - 20;
        else;
      end
    
      else;
      end
         
    end

endmodule // Decoder
