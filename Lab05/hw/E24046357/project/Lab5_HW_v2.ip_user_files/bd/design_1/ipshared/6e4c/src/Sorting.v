`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/28/2018 11:45:45 AM
// Design Name: 
// Module Name: Sorting
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


module Sorting(
    input [31:0] d_in_0 ,
    input [31:0] d_in_1 ,
    input [31:0] d_in_2 ,
    input [31:0] d_in_3 ,
    input [31:0] d_in_4 ,
    input [31:0] d_in_5 ,
    input [31:0] d_in_6 ,
    input [31:0] d_in_7 ,
    input clk ,
    input rst ,
    input send ,
    output reg [31:0] q_0 ,
    output reg [31:0] q_1 ,
    output reg [31:0] q_2 ,
    output reg [31:0] q_3 ,
    output reg [31:0] q_4 ,
    output reg [31:0] q_5 ,
    output reg [31:0] q_6 ,
    output reg [31:0] q_7 
    );
    
    reg [31:0] data [0:7] ;
    reg [31:0] arr [0:7] ;
    reg [31:0] temp ;
    integer i , j , k;
    
    always@(posedge clk)begin
        if(rst)begin
            data[0] <= d_in_0 ;
            data[1] <= d_in_1 ;
            data[2] <= d_in_2 ;
            data[3] <= d_in_3 ;
            data[4] <= d_in_4 ;
            data[5] <= d_in_5 ;
            data[6] <= d_in_6 ;
            data[7] <= d_in_7 ;
        end
    end
    
    always@(*)begin
        for(i = 0 ; i < 8 ; i = i+1)
            arr[i] = data[i];
        if(~rst)begin
            for(j = 8 ; j > 0 ; j = j-1)begin
                for(k = 0 ; k < j ; k = k+1)begin
                    if (arr[k] < arr[k + 1])begin
                        temp = arr[k];
                        arr[k] = arr[k + 1];
                        arr[k + 1] = temp;
                    end
                end
            end
        end
    end
    
    always@(posedge clk)begin
        if(send)begin
            q_0 <= arr[0] ;
            q_1 <= arr[1] ;
            q_2 <= arr[2] ;
            q_3 <= arr[3] ;
            q_4 <= arr[4] ;
            q_5 <= arr[5] ;
            q_6 <= arr[6] ;
            q_7 <= arr[7] ;
        end   
    end
endmodule
