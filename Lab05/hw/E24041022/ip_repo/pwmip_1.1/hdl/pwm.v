`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/12/02 19:16:59
// Design Name: 
// Module Name: pwm
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


module pwm(
    clk,
    rst,
    color,
    operand,
    signal,
    R_out,
    G_out,
    B_out

    );
    
   	input	clk; 
    input rst;
    input [1:0] color;
    input operand;
	output	  	 R_out;
    output       G_out;
    output       B_out;
    reg [17:0] count;
    reg clk_div;
    reg [8:0] R_time,G_time,B_time;
    reg [8:0] counter_512;
    
    input signal;
/////////////////////////////////div clk //////////////////////////////////////////////////////////    
      always @(posedge clk or posedge rst  ) begin
      if (rst) begin
        count <= 18'd0;
        clk_div <= 1'b0;
      end
      else begin
  
        if (count == 200000) count <= 18'd0;
        else count <= count + 1;
  
        if (count < 100000) clk_div <= 1'b0;
        else clk_div <= 1'b1;
      end
    end
 /////////////////////////////////////////////////////////////////////////////////////////////////////
 
 
 
 always @(posedge clk_div or posedge rst)
 begin
     if(rst)
     begin
         counter_512   <= 9'd0;
     end   
     else
     begin
         counter_512    <= counter_512 + 1;
     end
 end
 
 assign			R_out = (counter_512 < R_time)? 1'd1 : 1'd0;
 assign         G_out = (counter_512 < G_time)? 1'd1 : 1'd0;
 assign         B_out = (counter_512 < B_time)? 1'd1 : 1'd0;
 
 ///////////////////////////////////////////////////////////////////////////////////////////////////////////
 
 always@(posedge rst or posedge signal) begin
    if(rst) begin
        R_time <= 9'd256;
        G_time <= 9'd256;
        B_time <= 9'd256;
     end
     else begin
       
        case(color) 
        2'd0 : begin
       
            if(operand) begin
                if(R_time > 9'd479) begin
                    R_time <=  9'd511;
					
				end
                else begin
                    R_time <= R_time + 9'd32;
					
				end
            end
            else begin
                 if(R_time < 9'd33) begin
                       R_time <=  9'd0;
					  
				end
                 else begin
                       R_time <= R_time - 9'd32;
					  
				end
            end
        
        end
        2'd1: begin
       
            if(operand) begin
                if(G_time > 9'd479) begin
                    G_time <=  9'd511;
					
				end
                else begin
                    G_time <= G_time + 9'd32;
					
				end
            end
            else begin
                if(G_time < 9'd33) begin
                    G_time <=  9'd0;
					
				end
                else begin
                    G_time <= G_time - 9'd32;
				end
             end   
          
        end
        2'd2: begin
     
            if(operand) begin
               if(B_time > 9'd479) begin
                   B_time <=  9'd511;
				
				end
               else begin
                   B_time <= B_time + 9'd32;
			
				end
            end
            else begin
                if(B_time < 9'd33) begin
                    B_time <=  9'd0;
					
				end
                else begin
                    B_time <= B_time - 9'd32;
					
				end
             end  
        end  
       
        2'd3: ;
         
        
        
       endcase
    end
end
endmodule

