//`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/10/27 19:54:16
// Design Name: 
// Module Name: time_control
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


module time_control(
    input [1:0] sw,
    output reg [7:0]G_time,
    output reg [7:0]Y_time,
    output reg [7:0]R_time
    );
    
    
     always begin
       case(sw)
         2'b00:begin
           G_time = 8'd15;
           Y_time = 8'd2;
           R_time = 8'd17;
         end
         2'b01:begin
           G_time = 8'd10;
           Y_time = 8'd2;
           R_time = 8'd12; 
         end
         2'b10:begin
           G_time = 8'd5;
           Y_time = 8'd5;
           R_time = 8'd10;                 
         end
         2'b11:begin
           G_time = 8'd3;
           Y_time = 8'd7;
           R_time = 8'd10;                  
         end
       endcase
     end
    
endmodule
