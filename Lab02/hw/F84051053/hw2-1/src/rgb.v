`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/10/26 01:57:05
// Design Name: 
// Module Name: rgb
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

module rgb(
    input [1:0] sw,
    input [2:0] btn,
    input clk,
    input reset, 
    output reg led5_r,led4_g,
    output [3:0] led
);
reg [3:0] sec = 4'b1111;   
reg [3:0] cnt;
reg [1:0] state;
reg [1:0] next_state;
wire pb_dbn;
wire rst_count;
wire clk_div;
           
//1Hz  clock          
clock_div clock_div(
   .clk(clk),
   .clk_div(clk_div)
);

//debounce circuit
debounce dbn(
    .clk(clk),
    .pb(btn[2]),
    .pb_dbn(pb_dbn)
);

 //½Õ¾ã¬í¼Æ
always@(posedge clk or  posedge reset)
begin
    if(reset)
        sec <= 4'b1111;
    else
    begin
        if(sw != 2'b11)
        begin
            if(pb_dbn)
                if(sec == 4'b0001)
                    sec <= 4'b1111;
                else 
                    sec <= sec - 1'b1;
         end
    end 
end


 //state <= next_state
always@(posedge clk or posedge reset)
begin
    if(reset) 
        state <= 2'b11;
    else
        state <= next_state;
end    

//next state
always@(*)
begin
    if(reset)
        next_state = 2'b11;
    else
    begin    
        case(state)
        2'b00:
        begin
            if(sw != 2'b11)
                next_state = 2'b10;
            else if(btn == 3'b010 || cnt == 4'b0000 )
                next_state = 2'b01;
            else
                next_state = 2'b00;
        end
        
        2'b01:
        begin
                    if(sw != 2'b11)
                        next_state = 2'b10;
                    else if(btn == 3'b001)
                        next_state = 2'b00;
                    else
                        next_state = 2'b01;
        end
        
        2'b10:
        begin
            if(sw == 2'b11)
                next_state = 2'b00;
            else
                next_state = 2'b10;
        end
        
        2'b11:
        begin
            if(sw == 2'b11)
                next_state = 2'b00;
            else
                next_state = 2'b11;
        end
        
        default:    
            next_state = 2'b11;
                            
        endcase
    end
end 


//state
always@(*)
begin
    case(state)
    2'b00:
    begin
        led4_g = 1'b1;
        led5_r = 1'b0;
    end
    
    2'b01:
    begin
        led5_r = 1'b1;
        led4_g = 1'b0;
    end
    
    2'b10:
    begin
        led5_r = 1'b0;
        led4_g = 1'b0;
    end
    
    2'b11:
    begin
        led5_r = 1'b0;
        led4_g = 1'b0;
    end
    
    default:
    begin
        led5_r = 1'b0;
        led4_g = 1'b0;
    end
    
    endcase
end
 
 
assign rst_count = (state != next_state && next_state != 2'b01) ? 1'b1:1'b0;
//countdown
always@(posedge clk_div or posedge rst_count or posedge reset)
begin
    if(reset)
       cnt <= 4'b1111;
    else if(rst_count)
       cnt <= sec;
    else if(cnt == 4'b0000)
       cnt <= 4'b0000;   
    else
       cnt <= cnt - 1'b1;
end
 
assign led = (state == 2'b00) ? cnt:((state == 2'b01 && state != 2'b00) ? 4'b0000:sec) ;

endmodule