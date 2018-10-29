`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/10/26 01:57:05
// Design Name: 
// Module Name: clock_div
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

module clock_div(
    input clk,
    output reg clk_div
    );
reg [31:0] counter_1HZ;
    
always@(posedge clk)
    begin
    if(counter_1HZ < 32'd125000_000)
        counter_1HZ <= counter_1HZ + 1'b1;
    else
        counter_1HZ <= 1'b1;
 end
          
always@(posedge clk)
begin
    if(counter_1HZ <= 32'd62500_000)
        clk_div<=1'b1;
    else 
        clk_div<=1'b0;
end
           
endmodule