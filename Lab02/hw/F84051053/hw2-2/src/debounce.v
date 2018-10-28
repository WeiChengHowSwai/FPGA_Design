`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/10/28 07:23:04
// Design Name: 
// Module Name: debounce
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


module debounce(
    input clk,
    input pb,
    output pb_dbn
);
reg [1:0] ss;

always@(posedge clk)
begin
    case(ss)
        2'b00:
            if(pb) ss <= 2'b01;
        2'b01:
            ss <= 2'b10;
        2'b10:
            if(!pb)
                ss <= 2'b00;
        default:
            ss <= 2'b00;
    endcase
end
assign pb_dbn = ss[0];
endmodule