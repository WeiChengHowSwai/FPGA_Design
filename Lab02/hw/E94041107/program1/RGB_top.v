module RGB_top (
    input       clk,
    input       rst,
    input [3:1] btn,
	output [3:0] led,
    output			R_out,
    output			G_out,
    output			B_out,
	output 			led5_r,
	output			led5_g,
	output 			led5_b
);

  wire [7:0] R1_time, G1_time, B1_time;
  wire [7:0] R2_time, G2_time, B2_time;

  divider div(
	.clk(clk),
	.rst(rst),
	.clk_div(clock)
  );
  
  Decoder dec_i (
	.div_clk(clock),
    .btn1 ( btn[1]),
	.btn2 ( btn[2]),
	.btn3 ( btn[3]),
	.led(led),
    .R1_time_out ( R1_time ),
    .G1_time_out ( G1_time ),
    .B1_time_out ( B1_time ),
	.R2_time_out ( R2_time ),
    .G2_time_out ( G2_time ),
    .B2_time_out ( B2_time )
  );
  

  RGB_LED rgb_i (
    .clk ( clk ),
    .rst ( rst ),
    .R1_time_in ( R1_time ),
    .G1_time_in ( G1_time ),
    .B1_time_in ( B1_time ),
	.R2_time_in ( R2_time ),
    .G2_time_in ( G2_time ),
    .B2_time_in ( B2_time ),
    .R1_out ( R_out ),
    .G1_out ( G_out ),
    .B1_out ( B_out ),
	.R2_out ( led5_r ),
    .G2_out ( led5_g ),
    .B2_out ( led5_b )
  );

endmodule // RGB_top
