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
  input        [1 : 0] sw,
  output logic [3 : 0] led
);

  always_comb begin
    case (sw)
      2'b00: led = 4'b0000;
      2'b01: led = 4'b0001;
      2'b10: led = 4'b0010;
      2'b11: led = 4'b0100;
    endcase
  end

endmodule
