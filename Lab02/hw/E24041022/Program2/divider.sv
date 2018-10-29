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
  
  output logic clk_div
  
);

  logic [25:0] cnt;

  always_ff @(posedge clk or posedge rst  ) begin
    if (rst) begin
      cnt <= 26'd0;
      clk_div <= 'b0;
    end
    else begin

      if (cnt == 6250000) cnt <= 26'd0;
      else cnt <= cnt + 1;

      if (cnt < 3125000) clk_div <= 'b0;
      else clk_div <= 'b1;
    end
  end

endmodule
