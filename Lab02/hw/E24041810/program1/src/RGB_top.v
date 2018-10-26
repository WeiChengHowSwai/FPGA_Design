module RGB_top (
    clk,
    rst,
    btn,
    R_out,
    G_out,
    led5_g,
    led5_r,
    led
);

    input       clk;
    input       rst;
    input  [3:0]     btn;
    output			R_out;
    output			G_out;
    output     led5_g;
    output     led5_r;
    output  [3:0] led;

  wire [7:0] R_time, G_time, B_time;
  wire clk_div;

 /* Decoder dec_i (
    .sw ( sw ),
    .R_time_out ( R_time ),
    .G_time_out ( G_time ),
    .B_time_out ( B_time )
  );*/

  RGB_LED rgb_i (
    .clk ( clk_div ),
    .rst ( rst ),
    .btn(btn),
    .R_out ( R_out ),
    .G_out ( G_out ),
    .led5_g(led5_g),
    .led5_r(led5_r),
    .led(led)
  );
  
  divider divider(
  .clk(clk),
  .rst(rst),
  .clk_div(clk_div)
);
  
endmodule // RGB_top
