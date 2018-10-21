/////////////////////////////////////////////////////////////////
//  File Name : LED.sv                                         //
//                                                             //
//  Purpose : use switches to control LEDs                     //
//                                                             //
//  Creation Date : 2018/08/21                                 //
//                                                             //
//  Last Modified : 2018/08/21                                 //
//                                                             //
//  Auther : Jyun-Neng Ji                                      //
/////////////////////////////////////////////////////////////////

module LED(
  input        [3 : 0] btn,
  output logic [3 : 0] led
);

  always_comb begin
    case (btn)
      4'b0000: led = 4'b0000;
      4'b0001: led = 4'b0001;
      4'b0010: led = 4'b0010;
      4'b0100: led = 4'b0100;
      4'b1000: led = 4'b1000;
      default: led = 4'b0000;
    endcase
  end

endmodule
