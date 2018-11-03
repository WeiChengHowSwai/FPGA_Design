module Clock_div(
  in_clk,
  out_clk
);

input  in_clk;
output out_clk;

reg out_clk;

reg [31:0] clk_counter;

parameter   out_Hz= 1,
            clk_frequency=125000000;

always @(posedge in_clk) 
begin
    if (clk_counter<(clk_frequency/out_Hz))
      clk_counter<=clk_counter+32'd1;
    else
      clk_counter<=32'd1;
end

always @(posedge in_clk) 
begin
  if (clk_counter<=((clk_frequency/out_Hz)>>1))
    out_clk=1'b1;
  else
    out_clk=1'b0;
end

endmodule // 