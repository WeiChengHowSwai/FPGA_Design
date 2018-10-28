`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/10/28 11:32:07
// Design Name: 
// Module Name: pwm
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module pwm(
    input clk,
    input reset,
    input [1:0] sw,
    input [3:2] pb_dbn,
    input [1:1] btn,
    output red,green,blue,
    output [3:0] led
);

parameter SEGMENT = 8'd195;
reg [7:0] cnt;
reg [7:0] system_seg;
reg [7:0] PWM_g,PWM_r,PWM_b;



always@(posedge clk or posedge reset)
begin
    if(reset)
        cnt <= 8'd0;
    else if (cnt == SEGMENT)
        cnt <= 8'd0;
    else 
        cnt <= cnt + 1'b1;
end    
    
always@(posedge clk or posedge reset)
begin
    if(reset)
        system_seg <= 8'd0;
    else if(system_seg == 8'd255)
        system_seg <= 8'd0;
    else if(cnt == SEGMENT)
        system_seg <= system_seg + 1'b1;
end        
    
    
//PWM     
always@(posedge clk or posedge reset)
begin
if(reset)
begin
    PWM_r <= 8'd255;
    PWM_g <= 8'd255;
    PWM_b <= 8'd255;
end
else
case(sw)
2'b01:
begin

    if(pb_dbn[3])
        if(PWM_r > 8'd16)
            PWM_r <= PWM_r - 8'd16;  //減少
        else
            PWM_r <= 8'd0;
    else if(pb_dbn[2])
        if(PWM_r < 8'd239)
            PWM_r <= PWM_r + 8'd16;  //增加
        else
            PWM_r <= 8'd255;
end

2'b10:
begin
    if(pb_dbn[3])
        if(PWM_g > 8'd16)
            PWM_g <= PWM_g - 8'd16;  //減少
        else
            PWM_g <= 8'd0;
    else if(pb_dbn[2])
        if(PWM_g < 8'd239)
            PWM_g <= PWM_g + 8'd16;  //增加
        else
            PWM_g <= 8'd255;
end

2'b11:
begin
    if(pb_dbn[3]) 
        if(PWM_b > 8'd16)
            PWM_b <= PWM_b - 8'd16;  //減少
        else
            PWM_b <= 8'd0;
    else if(pb_dbn[2])
            if(PWM_b < 8'd239)
                PWM_b <= PWM_b + 8'd16;  //增加
            else
                PWM_b <= 8'd255;
end
endcase
end
              
assign red = ((system_seg < PWM_r) && (sw == 2'b00) && btn[1]) ? 1'b1:1'b0;
assign green = ((system_seg < PWM_g) && (sw == 2'b00) && btn[1]) ? 1'b1:1'b0;
assign blue = ((system_seg < PWM_b) && (sw == 2'b00) && btn[1]) ? 1'b1:1'b0;
assign led = (sw == 2'b01) ? PWM_r[7:4] : ((sw == 2'b10) ? PWM_g[7:4] : ((sw == 2'b11) ? PWM_b[7:4]:4'b0000));

    
endmodule