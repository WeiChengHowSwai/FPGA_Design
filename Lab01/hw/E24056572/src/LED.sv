module LED(
  input        [3 : 0] btn,
  output logic [3 : 0] led
);
 always_comb begin
   led=btn;
 end

endmodule
