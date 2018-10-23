/////////////////////////////////////////////////////////////////
//  File Name : divider.sv                                     //
//                                                             //
//  Purpose : Frequencey divider. Input freq is 125MHz and     //
//            output freq is 2Hz.                              //
//                                                             //
//  Creation Date : 2018/08/16                                 //
//                                                             //
//  Last Modified : 2018/08/22                                 //
//                                                             //
//  Auther : Jyun-Neng Ji                                      //
/////////////////////////////////////////////////////////////////

module divider(
  input clk,
  input rst,
  output reg clk_div
);

  reg [26:0] cnt;

  always @(posedge clk or posedge rst) begin
    if (rst) begin
      cnt <= 27'd0;
      clk_div <= 1'b0;
    end
    else begin

      if (cnt == 125000000) cnt <= 27'd0;
      else cnt <= cnt + 1;

      if (cnt < 62500000) clk_div <= 'b0;
      else clk_div <= 1'b1;
    end
  end

endmodule
