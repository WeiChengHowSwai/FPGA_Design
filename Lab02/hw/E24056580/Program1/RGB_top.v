module RGB_top (
    input       clk,
    input       rst,
    input       btn,
    input [1:0] sw,
    output			R_out,
    output			G_out,
    output			B_out,
    output          led5_r,
    output          led5_g,
    output          led5_b,
    output[3:0]     led
);

  wire [7:0] R1_time, G1_time, B1_time,R2_time, G2_time, B2_time,G_time,Y_time,R_time;
  wire clk_div;

  divider div(
    .clk(clk),
    .rst(rst),
    .clk_div(clk_div)
  
  );
  
  time_control ti(
      .sw(sw),
      .G_time(G_time),
      .Y_time(Y_time),
      .R_time(R_time)
      );

  Decoder dec_i (
    .clk( clk_div ),
    .rst( rst ),
    .btn( btn ),
    .G_time(G_time),
    .Y_time(Y_time),
    .R_time(R_time),
    .R1_time_out ( R1_time ),
    .G1_time_out ( G1_time ),
    .B1_time_out ( B1_time ),
    .R2_time_out ( R2_time ),
    .G2_time_out ( G2_time ),
    .B2_time_out ( B2_time ),
    .led( led )
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
