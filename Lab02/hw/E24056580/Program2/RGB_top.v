module RGB_top (
    input       clk,
    input       rst,
    input  [1:0] sw,
    input  [3:1] btn,
    output			R_out,
    output			G_out,
    output			B_out,
    output  [3:0]   led     
);

  wire [7:0] R_time, G_time, B_time;
  wire led_enable,clk_div;

  divider div(
    .clk(clk),
    .rst(rst),
    .clk_div(clk_div)
  );

  Decoder dec_i (
    .clk(clk_div),
    .rst(rst),
    .sw ( sw ),
    .btn( btn ),
    .R_time_out ( R_time ),
    .G_time_out ( G_time ),
    .B_time_out ( B_time ),
    .led_enable (led_enable),
    .led( led )
  );

  RGB_LED rgb_i (
    .clk ( clk ),
    .rst ( rst ),
    .led_enable ( led_enable ),
    .R_time_in ( R_time ),
    .G_time_in ( G_time ),
    .B_time_in ( B_time ),
    .R_out ( R_out ),
    .G_out ( G_out ),
    .B_out ( B_out )
  );

endmodule // RGB_top
