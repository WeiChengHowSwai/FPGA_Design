module RGB_top (
    input       clk,
    input       rst,
    input [1:0] sw,
	input [3:1] btn, 
    output			R_out,
    output			G_out,
    output			B_out,
	output [3:0] led
);

  wire [7:0] R_time, G_time, B_time;

    divider div(
	.clk(clk),
	.rst(rst),
	.clk_div(clock)
  );
  
  Decoder dec_i (
    .div_clk ( clock ),
    .rst ( rst ),  
    .sw ( sw ),
	.btn ( btn ),
    .R_time_out ( R_time ),
    .G_time_out ( G_time ),
    .B_time_out ( B_time ),
	.led(led)
  );

  RGB_LED rgb_i (
    .clk ( clk ),
    .rst ( rst ),
    .R_time_in ( R_time ),
    .G_time_in ( G_time ),
    .B_time_in ( B_time ),
    .R_out ( R_out ),
    .G_out ( G_out ),
    .B_out ( B_out )
  );

endmodule // RGB_top
