/////////////////////////////////////////////////////////////////
//  File Name : blinky.sv                                      //
//                                                             //
//  Purpose : blink LEDs                                       //
//                                                             //
//  Creation Date : 2018/08/16                                 //
//                                                             //
//  Last Modified : 2018/08/22                                 //
//                                                             //
//  Auther : Jyun-Neng Ji                                      //
/////////////////////////////////////////////////////////////////


module blinky(
  input clk,
  input rst,
  input [1:0] sw,
  output logic [3:0] led
);

  logic dirct;


  always_ff @(posedge clk or posedge rst) begin
    if (rst) begin
      led <= 4'b0000;
    end
    else begin
      if (!dirct) begin
        if (led == 0) led <= 4'b0001;
        else led <= led << 1;
      end
      else begin
        if (led == 0) led <= 4'b1000;
        else led <= led >> 1;
      end
    end
  end


  always_comb begin
    case (sw)
      2'b01: dirct = 1'b0;
      2'b10: dirct = 1'b1;
      default: dirct = 1'b0;
    endcase
  end

endmodule
