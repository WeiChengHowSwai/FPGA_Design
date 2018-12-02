module Decoder(
    input clk , 
    input rst , 
    input [1:0] sw ,
    input add ,
    input sub ,
    input output_valid ,
    output logic [3:0] R_time_out ,
    output logic [3:0] G_time_out , 
    output logic [3:0] B_time_out ,
    output logic [3:0] led
    );
    
    logic [3:0] R_time ; 
    logic [3:0] G_time ;
    logic [3:0] B_time ; 
     
    always_comb begin
        case(sw)
            2'b00:begin
                R_time_out = R_time ; 
                G_time_out = G_time ;
                B_time_out = B_time ;         
            end
            2'b01:begin
                led[3:0] = R_time[3:0] ;
            end
            2'b10:begin
                led[3:0] = G_time[3:0] ;            
            end
            2'b11:begin
                led[3:0] = B_time[3:0] ;          
            end
            default:begin
                R_time_out = 4'd0 ;
                G_time_out = 4'd0 ;
                B_time_out = 4'd0 ;
            end
        endcase
    end
    
    always_ff@(posedge clk or posedge rst)begin
        if(rst)begin
            R_time <= 4'd0 ;
            G_time <= 4'd0 ;
            B_time <= 4'd0 ;
        end
        else begin
        case(sw)
            2'b00:begin
                R_time <= R_time ;
                G_time <= G_time ;
                B_time <= B_time ;      
            end
            2'b01:begin
                if(add) R_time <= R_time+1 ;
                if(sub) R_time <= R_time-1 ;
            end
            2'b10:begin
                if(add) G_time <= G_time+1 ;
                if(sub) G_time <= G_time-1 ;           
            end
            2'b11:begin
                if(add) B_time <= B_time+1 ;
                if(sub) B_time <= B_time-1 ;         
            end
            default:begin
                R_time <= 4'd0 ;
                G_time <= 4'd0 ;
                B_time <= 4'd0 ;
            end
        endcase
        end
    end
endmodule
