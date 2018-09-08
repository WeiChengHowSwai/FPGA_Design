`timescale 1ns / 10ps
`define PERIOD 10

module RGB_LED_TB;
  reg clk, rst;
  reg [7:0] R_time_in, G_time_in, B_time_in;
  wire R_out, G_out, B_out;

  RGB_LED RGB_LED_i (
    .clk ( clk ),
    .rst ( rst ),
    .R_time_in ( R_time_in ),
    .G_time_in ( G_time_in ),
    .B_time_in ( B_time_in ),
    .R_out ( R_out ),
    .G_out ( G_out ),
    .B_out ( B_out )
  );

  always #(`PERIOD/2.0) clk = ~clk;

  initial begin
    clk = 1'b0; rst = 1'b1;
    R_time_in = 8'd0; G_time_in = 8'd0; B_time_in = 8'd0;
    #(`PERIOD) rst = 1'b0;
    R_time_in = 8'd50; G_time_in = 8'd0; B_time_in = 8'd0;
  end

endmodule // RGB_LED_TB
