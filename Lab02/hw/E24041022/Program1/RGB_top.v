module RGB_top (
    input       clk,
    input       rst,
    input       rst2,
    input      click,
    output			R_out,
    output			G_out,
    output			B_out,
    output          led5_r,
    output          led5_g,
    output          led5_b,
    output[3:0]     led
    
);



  RGB_LED rgb_i (
    .clk ( clk_div ),
    .rst ( rst ),
    .rst2(rst2),
    .click(click),
    .R_out ( R_out ),
    .G_out ( G_out ),
    .B_out ( B_out ),
    .led5_r(led5_r),
    .led5_g(led5_g),
    .led5_b(led5_b),
    .led (led)
  );
 divider div1(
    .clk(clk),
    .rst(rst),
    .rst2(rst2),
    .clk_div(clk_div)
  );
endmodule // RGB_top
