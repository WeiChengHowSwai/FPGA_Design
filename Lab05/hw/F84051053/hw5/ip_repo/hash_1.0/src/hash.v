`timescale 1ns / 1ps

module hash(
    input clk,
    input [31:0] data,
    input [31:0] h_data,
    output reg [31:0] result
    );
    reg [31:0] hash;
    parameter value = 13'd5381;
    
    always@(posedge clk)
    begin
    if(h_data != 2'b0) 
        hash  <= (h_data*6'd33 + data); 
    else
        hash <= value*6'd33 + data; 
    end
    
    always@(*)
    begin
    result = hash;
    end
    
endmodule