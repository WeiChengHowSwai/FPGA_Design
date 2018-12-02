`timescale 1ns / 1ps


module sorting(rst,clk,A,B,C,D,a,b,c,d);
    
    input rst,clk;
    input [2:0] A,B,C,D;
    output reg [2:0] a,b,c,d;
    
    reg [2:0] data [0:3];
    reg [2:0] count;
    reg [1:0] i;
     
    //data
    always@(posedge clk )begin
    if(count==3'd4)begin
            data[0]<=A;
            data[1]<=B;
            data[2]<=C;
            data[3]<=D;
        end 
        else if(i>=2'd0&&count<=2)begin
            if(data[count]>data[count+1]) begin
                data[count]<=data[count+1];
                data[count+1]<=data[count];
          end 
        end
    end
    
    //count    
    always@(posedge clk or posedge rst)begin
        if(rst) count<=3'd4;
        else   count<=(count==3'd0)?3'd3:(count==3'd0&&i==3'd0)?3'd0:count-3'd1;
    end    
    
    //i
    always@(posedge clk or posedge rst)begin
        if(rst) i<=2'd3;
 //       else if(count==3'd4) i<=(i==3'd0)?3'd0:(i-3'd1);
      else if(count==3'd3&&i>0)i<=i-2'd1;
        else if(i==2'd0)i<=2'd0;
    end
   
    //output
    always@(posedge clk)begin
        if(count==3'd0 && i==2'd0)begin
            a<=data[0];
            b<=data[1];
            c<=data[2];
            d<=data[3];
        end
    end
    
endmodule
