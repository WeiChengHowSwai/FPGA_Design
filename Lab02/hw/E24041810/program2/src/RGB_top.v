module RGB_top (
    clk,
    rst,
    btn,
    sw,
    R_out,
    G_out,
    B_out,
    led
);

    input       clk;
    input       rst;
    input  [2:0]     btn;
    input  [1:0]  sw;
    output			R_out;
    output			G_out;
    output          B_out;
    output  [3:0] led;

  RGB_LED rgb_i (
    .clk ( clk ),
    .rst ( rst ),
    .btn(btn),
    .sw(sw),
    .R_out ( R_out ),
    .G_out ( G_out ),
    .B_out ( B_out ),
    .led(led)
  );


  
endmodule // RGB_top
