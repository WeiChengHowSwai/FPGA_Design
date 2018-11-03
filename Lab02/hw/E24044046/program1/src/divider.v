/////////////////////////////////////////////////////////////////
//  File Name : divider.v                           //
//                                                             //
//  Purpose : Frequencey divider. Input freq     //
//           is 125MHz and  output freq is 2Hz.       //
//                                                             //
//  Creation Date : 2018/10/23                                 //
//                                                             //
//  Last Modified : 2018/10/                                 //
//                                                             //
/////////////////////////////////////////////////////////////////
module divider( clk, rst, clk_div);

input clk,rst;
output clk_div;

reg [26:0] cnt;
reg clk_div;

  always@(posedge clk or posedge rst) begin
    if (rst) begin
      cnt <= 27'd0;
      clk_div <= 1'b0;
    end
    else begin
       
       
      if (cnt == 27'd125000000) cnt <= 27'd0; // 1s
      else cnt <= cnt + 1;

      if (cnt < 27'd62500000) clk_div <= 1'b0; // 1 Hz
      else clk_div <= 1'b1;
      
    end
  end

endmodule
