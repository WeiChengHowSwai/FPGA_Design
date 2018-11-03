module LED(
  input        clk ,
  input        [3 : 0] btn,
  output logic [3 : 0] led
  
);
  logic [3:0] counter = 4'b0000 ;
  
  assign led[3:0] = counter[3:0] ;
  
  always_ff@(posedge clk) begin
    case(btn)
      4'b0001: counter <= counter + 1 ;
      4'b0010: counter <= counter - 1 ;
      4'b0100: counter <= 4'd0 ;
      4'b1000: counter <= 4'b1111 ;
    endcase
  end
       
endmodule
