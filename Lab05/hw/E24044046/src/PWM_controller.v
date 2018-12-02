`timescale 1ns / 1ps


module PWM_controller(clk,rst,R,G,B,R_out,G_out,B_out);

input clk;
input rst;
input [7:0] R,G,B;
output reg R_out,G_out,B_out;

reg	[7:0]	next_counter_256;
reg	[7:0]	counter_256;

    //counter_256
    always@(posedge clk or posedge rst)begin
       if(rst) counter_256<=8'd0;
       else counter_256	<= next_counter_256;
       end

    always@(posedge clk or posedge rst)begin
    if(rst)
        next_counter_256<=8'd0;
    else  next_counter_256 <= (counter_256 == 8'd255)? 8'd0 : counter_256 + 8'd1;
    end
    
    //R_out,G_out,B_out
    always@(posedge clk or posedge rst)begin
        if(rst)begin
            R_out <= 1'd0;
            G_out <= 1'd0;
            B_out <= 1'd0;
            end
        else begin
            R_out <= (counter_256 < R)? 1'd1 : 1'd0;
            G_out <= (counter_256 < G)? 1'd1 : 1'd0;
            B_out <= (counter_256 < B)? 1'd1 : 1'd0;
            end
        end
endmodule
