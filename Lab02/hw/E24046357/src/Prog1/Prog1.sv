`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Create Date: 10/14/2018 02:16:26 PM
// Design Name: Lab2HW_Prog1
// Module Name: Prog1
// Project Name: Lab2HW_Prog1
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
`define RESET   2'd0    
`define RED     2'd1    
`define YELLOW  2'd2    
`define GREEN   2'd3    

module Prog1(
    input clk ,
    input rst ,
    input [3:0] btn ,
    output logic led4_b ,
    output logic led4_g ,
    output logic led4_r ,
    output logic led5_b ,
    output logic led5_g ,
    output logic led5_r ,
    output logic [3:0]  cnt 
    );
    
    
    logic [1:0] c_state ;
    logic [1:0] n_state ;
    
    
    
    always_ff @(posedge clk or posedge rst)begin
        if(rst)begin
            c_state <=  `RESET ;
        end
        else begin
            c_state <=  n_state ;                
        end
    end
    
    always_ff @(posedge clk)begin
        case(c_state)
        `RESET : begin
            cnt    <= 4'd15 ;

            end
        `RED : begin
            cnt    <=  cnt-1   ;
            
            
            end
        `YELLOW : begin
            cnt    <= 4'd15 ;

            end
        `GREEN : begin
            if(btn[0]) cnt<=cnt+1;
            else if(btn[1]) cnt<=cnt;
            else if(btn[2]) cnt<='d0;
            else if(btn[3]) cnt<='d15;
            else cnt<=cnt-1 ;
            end
        endcase
    end
    
    always_comb begin
    
        case(c_state)
        `RESET : begin
        led5_b = 1'b0 ;
        led5_g = 1'b0 ;
        led5_r = 1'b0 ;
        led4_b = 1'b0 ;
        led4_g = 1'b0 ;
        led4_r = 1'b0 ;
        n_state =  `RED ;
        end
        `RED : begin
        led5_b = 1'b0 ;
        led5_g = 1'b0 ;
        led5_r = 1'b1 ;
        led4_b = 1'b0 ;
        led4_g = 1'b0 ;
        led4_r = 1'b0 ;
        if(cnt == 'd0)begin
            n_state = `GREEN ;
        end
        else begin 
            n_state = `RED ;            
        end
        end
        `YELLOW : begin
        led5_b = 1'b0 ;
        led5_g = 1'b0 ;
        led5_r = 1'b1 ;
        led4_b = 1'b1 ;
        led4_g = 1'b0 ;
        led4_r = 1'b1 ;
        n_state = `RED ;
        end
        `GREEN : begin
        led5_b = 1'b0 ;
        led5_g = 1'b0 ;
        led5_r = 1'b1 ;
        led4_b = 1'b0 ;
        led4_g = 1'b1 ;
        led4_r = 1'b0 ;
        if(cnt == 'd0)begin
            n_state = `YELLOW ;
        end
        else begin 
            n_state = `GREEN ;
        end
        end
        endcase
    end
    
endmodule

