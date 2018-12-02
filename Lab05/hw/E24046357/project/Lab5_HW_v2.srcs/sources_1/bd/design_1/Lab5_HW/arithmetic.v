`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/27/2018 03:38:03 PM
// Design Name: 
// Module Name: arithmetic
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
`define ADD 2'b00
`define SUB 2'b01
`define MUL 2'b10 

module arithmetic(
    input [7:0] A ,
    input [7:0] B ,
    input [1:0] compute_unit ,
    output reg [15:0] Result
    );
    
    always@(*)begin
        case(compute_unit)
            `ADD:begin
                Result[8:0] = A + B ;
                Result[15:9] = 7'd0 ; 
                end
            `SUB:begin
                Result[8:0] = A - B ;
                Result[15:9] = 7'd0 ;
            end
            `MUL:begin
                Result[15:0] = A * B ;
            end
            default:begin
                Result[15:0] = 16'd0 ;
            end
        endcase
    end
    
    
endmodule
