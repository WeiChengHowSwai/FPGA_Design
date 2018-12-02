module RGB_LED(
    input clk ,
    input rst ,
    input [7:0] R_time_in ,
    input [7:0] G_time_in ,
    input [7:0] B_time_in ,
    output R_out ,
    output G_out ,
    output B_out 
    );
    
    logic [3:0] next_counter , counter ; 
    
    assign  next_counter = (counter == 8'd15)? 8'd0 : counter + 1 ;
    
    assign  R_out = (counter < R_time_in)? 1'd1 : 1'd0 ; 
    assign  G_out = (counter < G_time_in)? 1'd1 : 1'd0 ;
    assign  B_out = (counter < B_time_in)? 1'd1 : 1'd0 ;
    
    always_ff@(posedge clk or posedge rst)begin
        if(rst) counter <= 8'd0 ;
        else counter <= next_counter ;    
    end
    
    
endmodule
