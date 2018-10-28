module RGB_top (
    input       clk,
    input       rst,
    input [1:0] sw,
    input [3:0] btn,
    output			R_out,
    output			G_out,
    output			B_out,
    output          led5_r,
    output          led5_g,
    output          led5_b,
    output   [3:0] led
);

  wire [7:0] R_time, G_time, B_time;
  wire clk_div;
  
divider( .clk(clk),
         .rst(rst),
         .clk_div(clk_div)
         );


  Decoder dec_i (
    .clk(clk_div),
    .rst(rst),
    .btn(btn),
    .sw ( sw ),
    .R_time_out ( R_time ),
    .G_time_out ( G_time ),
    .B_time_out ( B_time ),
    .led_r(led5_r),
    .led_g(led5_g),
    .led_b(led5_b),
    .led(led)
  );

  RGB_LED rgb_i (
    .clk (clk),
    .rst ( rst ),
    .R_time_in ( R_time ),
    .G_time_in ( G_time ),
    .B_time_in ( B_time ),
    .R_out ( R_out ),
    .G_out ( G_out ),
    .B_out ( B_out )
  );

endmodule // RGB_top
