`timescale 1ns / 1ps

module djb2_hash(clk,rst,A,B,C,hash);

    input clk,rst;
    input [7:0] A,B,C;
    output reg [31:0] hash;
    
    reg [2:0] i;
    reg [7:0] data [0:2];
    

    
   //data
   always@( posedge clk)begin
    if(i==0)begin
        data[0]<=A;
        data[1]<=B;
        data[2]<=C;
    end
   end 
    
    //i
    always@(posedge rst or posedge clk)begin
        if(rst) i<=3'd0;
        else i<=(i==3'd4)?3'd4:(i+3'd1);
     end
    
    always@(posedge clk or posedge rst)begin
        if(rst) hash<=32'd5381;
        else if(i>=1&&i<=3)   hash<=(hash<<5)+hash+data[i-1];
    end

endmodule
