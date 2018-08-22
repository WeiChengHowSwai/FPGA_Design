/////////////////////////////////////////////////////////////////
//  File Name : top.sv                                         //
//                                                             //
//  Purpose : top module                                       //
//                                                             //
//  Creation Date : 2018/08/16                                 //
//                                                             //
//  Last Modified : 2018/08/22                                 //
//                                                             //
//  Auther : Jyun-Neng Ji                                      //
/////////////////////////////////////////////////////////////////

module top(
  input              clk,
  input              rst,
  input        [1:0] sw,
  output logic [3:0] led
);

  logic clk_div;

  divider D1_i (
    .clk     ( clk     ),
    .rst     ( rst     ),
    .clk_div ( clk_div )
  );

  blinky B1_i (
    .clk ( clk_div ),
    .rst ( rst     ),
    .sw  ( sw      ),
    .led ( led     )
  );

endmodule
