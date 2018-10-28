module RGB_top (
    input       clk,
    input       rst,
    input [1:0] sw,
    input [3:0] btn,
    output [3:0] led,
    output			R_out,
    output			G_out,
    output			B_out
);

  wire [7:0] R_time, G_time, B_time;

  Decoder dec_i(
    .clk(clk_div),
    .sw ( sw ),
    .butt1(btn[0]),
    .butt2(btn[1]),
    .butt3(btn[2]),
    .butt4(btn[3]),
    .led(led),
    .R_time_out ( R_time ),
    .G_time_out ( G_time ),
    .B_time_out ( B_time )
  );

  RGB_LED rgb_i (
    .clk ( clk_div ),
    .rst ( btn[0] ),
    .butt2(btn[1]),
    .R_time_in ( R_time ),
    .G_time_in ( G_time ),
    .B_time_in ( B_time ),
    .R_out ( R_out ),
    .G_out ( G_out ),
    .B_out ( B_out )
  );
  divider div(
   .clk(clk) ,
   .rst(btn[0]) ,
   .clk_div(clk_div)
   );
endmodule // RGB_top
