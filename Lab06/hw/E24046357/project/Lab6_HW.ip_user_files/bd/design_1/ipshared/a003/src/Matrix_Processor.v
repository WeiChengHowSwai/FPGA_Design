`timescale 1ns / 1ps

`define ADD 8'd1
`define SUB 8'd2
`define MUL 8'd3
`define TRA 8'd4
`define DEL 8'd5

(* keep_hierarchy = "yes" *)module Matrix_Processor(
    input clk ,
    input rst ,
    input [7:0] d_in ,
    input d_in_valid ,
    input [7:0] cmd_in ,
    input cmd_valid ,
    input [7:0] addr ,
    output reg [7:0] d_out
    );
    
    reg [7:0] M [0:17] ;
    reg [7:0] result [0:8] ;
    reg [4:0] i ;
    
    wire [7:0] w_data ;
    reg  [7:0] cmd ;
    
    assign w_data = (d_in_valid == 1'd1) ? d_in : 8'd0 ; 
    
    
    always@(posedge clk or posedge rst)begin
        if(rst)begin
            for(i = 0 ; i < 18 ; i = i+1)begin
                M[i] <= 8'd0 ;
            end
        end
        else begin
            if(d_in_valid)begin
                M[addr] <= w_data ;
            end
            if(cmd_valid)begin
                cmd <= cmd_in ;
            end
        end
    end
    
    always@(*)begin
        case(cmd)
        `ADD:begin
            for(i=0 ; i<9 ; i=i+1)  
                result[i] = M[i] + M[i+9] ;
        end
        `SUB:begin
            for(i=0 ; i<9 ; i=i+1)  
                result[i] = M[i] - M[i+9] ;
        end
        `MUL:begin
            result[0] = M[0]*M[9]  + M[1]*M[12]  + M[2]*M[15] ;
            result[1] = M[0]*M[10] + M[1]*M[13] + M[2]*M[16] ;
            result[2] = M[0]*M[11] + M[1]*M[14] + M[2]*M[17] ;
            result[3] = M[3]*M[9]  + M[4]*M[12] + M[5]*M[15] ;
            result[4] = M[3]*M[10] + M[4]*M[13] + M[5]*M[16] ;
            result[5] = M[3]*M[11] + M[4]*M[14] + M[5]*M[17] ;
            result[6] = M[6]*M[9]  + M[7]*M[12] + M[8]*M[15] ;
            result[7] = M[6]*M[10] + M[7]*M[13] + M[8]*M[16] ;
            result[8] = M[6]*M[11] + M[7]*M[14] + M[8]*M[17] ;
        end
        `TRA:begin
            result[0] = M[0] ;
            result[1] = M[3] ;
            result[2] = M[6] ;
            result[3] = M[1] ;
            result[4] = M[4] ;
            result[5] = M[7] ;
            result[6] = M[2] ;
            result[7] = M[5] ;
            result[8] = M[8] ;
        end
        `DEL:begin
            result[0] = M[0]*(M[4]*M[8] - M[5]*M[7]) + M[1]*(M[5]*M[6] - M[3]*M[8]) + M[2]*(M[3]*M[7] - M[4]*M[6]) ;
        end
        default: begin
            for(i=0 ; i<9 ; i=i+1)
                result[i] = result[i] ;
        end
        endcase
    end
    
    always@(posedge clk)begin
        d_out <= result[addr] ;    
    end
    
endmodule
