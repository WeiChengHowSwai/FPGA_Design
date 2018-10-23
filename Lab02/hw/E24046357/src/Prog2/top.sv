module top(
    input clk ,
    input [1:0] sw ,
    input [3:0] btn ,
    output led4_r ,
    output led4_g ,
    output led4_b ,
    output [3:0] led
    );
    
    logic [3:0] R_time , G_time , B_time ;
    logic rst , output_valid , add , sub , clk_div ;
    
    assign btn[0] = rst ;
    assign btn[1] = output_valid ;
    assign btn[2] = add ;
    assign btn[3] = sub ;
    
    clk_div clk_div_0(
    .clk(clk) ,
    .rst(rst) ,
    .clk_div(clk_div)
    );
    
    Decoder dec_0 (
    .clk(clk_div) ,
    .rst(rst) ,
    .sw(sw) ,
    .add(add) ,
    .sub(sub) ,
    .output_valid(output_valid) ,
    .R_time_out(R_time) ,
    .G_time_out(G_time) ,
    .B_time_out(B_time) ,
    .led(led)
    );
    
    RGB_LED rgb_0 (
    .clk(clk) ,
    .rst(rst) ,
    .R_time_in(R_time) ,
    .G_time_in(G_time) ,
    .B_time_in(B_time) ,
    .R_out(led4_r) , 
    .G_out(led4_g) ,
    .B_out(led4_b) 
    );      
endmodule
