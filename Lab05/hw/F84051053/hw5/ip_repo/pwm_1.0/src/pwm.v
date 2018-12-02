`timescale 1ns / 1ps


module pwm(
    input clk,
    input [7:0] PWM_g,PWM_r,PWM_b,
    output red,green,blue
);

parameter SEGMENT = 8'd195;
reg [7:0] cnt;
reg [7:0] system_seg;



always@(posedge clk)
begin
    if (cnt == SEGMENT)
        cnt <= 8'd0;
    else 
        cnt <= cnt + 1'b1;
end    
    
always@(posedge clk)
begin
    if(system_seg == 8'd255)
        system_seg <= 8'd0;
    else if(cnt == SEGMENT)
        system_seg <= system_seg + 1'b1;
end        
    
    
//PWM     
              
assign red = (system_seg < PWM_r) ? 1'b1:1'b0;
assign green = (system_seg < PWM_g) ? 1'b1:1'b0;
assign blue = (system_seg < PWM_b) ? 1'b1:1'b0;

    
endmodule