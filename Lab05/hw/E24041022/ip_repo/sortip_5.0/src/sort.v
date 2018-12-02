`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/12/02 21:12:00
// Design Name: 
// Module Name: sort
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


module sort_v1(
reset,
    clk,
    start,
    signal,
    datain0,
    datain1,
    datain2,
    datain3,
    datain4,
    datain5,
    datain6,
    datain7, 
    temp0,
    temp1,
    temp2,
    temp3,
    temp4,
    temp5,
    temp6,
    temp7
    

    );
input reset,clk,start;
input [31:0] datain0;
input [31:0] datain1;
input [31:0] datain2;
input [31:0] datain3;
input [31:0] datain4;
input [31:0] datain5;
input [31:0] datain6;
input [31:0] datain7;

output reg [31:0] temp0;
output reg [31:0] temp1;
output reg [31:0] temp2;
output reg [31:0] temp3;
output reg [31:0] temp4;
output reg [31:0] temp5;
output reg [31:0] temp6;
output reg [31:0] temp7;


reg [3:0] count;
output wire signal;
reg sort;
reg [3:0] i;
   
   
 ////////////////////////////////main /////////////////////////////////////////  
   
    
    always@(posedge clk)begin
         if(reset) begin
        
            sort <= 0;
            i <= 0;

         end
             else if(start)  
               sort <= ~sort;
             else ;
          end
          
   
   always@(posedge clk)begin
     if(reset)
     count <= 0;
   else if(start)
     count <= (count == 8) ? count : count+1;
   end
   
   always@(posedge clk or posedge reset)begin
     if(reset) begin
     temp0 <= 0;
     temp1 <= 0;
     temp2 <= 0;
     temp3 <= 0;
     temp4 <= 0;
     temp5 <= 0;
     temp6 <= 0;
     temp7 <= 0;
     end
     else if(!start) begin
     temp0 <= datain0;
     temp1 <= datain1;
     temp2 <= datain2;
     temp3 <= datain3;
     temp4 <= datain4;
     temp5 <= datain5;
     temp6 <= datain6;
     temp7 <= datain7;
     end
     else begin
    if(start & ~sort)begin
           
              temp0 <= (temp0 > temp1) ? temp1 : temp0;
              temp1 <= (temp0 > temp1) ? temp0 : temp1;
              temp2 <= (temp2 > temp3) ? temp3 : temp2;
              temp3 <= (temp2 > temp3) ? temp2 : temp3;
              temp4 <= (temp4 > temp5) ? temp5 : temp4;
              temp5 <= (temp4 > temp5) ? temp4 : temp5;
              temp6 <= (temp6 > temp7) ? temp7 : temp6;
              temp7 <= (temp6 > temp7) ? temp6 : temp7;
            
          end
          else if(start & sort)begin
             temp1 <= (temp1 > temp2) ? temp2 : temp1;
             temp2 <= (temp1 > temp2) ? temp1 : temp2;
             temp3 <= (temp3 > temp4) ? temp4 : temp3;
             temp4 <= (temp3 > temp4) ? temp3 : temp4;
             temp5 <= (temp5 > temp6) ? temp6 : temp5;
             temp6 <= (temp5 > temp6) ? temp5 : temp6;
          end
          else;
    end

    end   
   
   
   assign signal = count==8 ? 1:0 ;
endmodule
