/////////////////////////////////////////////////////////////////
//  File Name : LED.sv                                         //
//                                                             //
//  Purpose : use switches to control LEDs                     //
//                                                             //
//  Creation Date : 2018/10/10                                 //
//                                                             //
//  Last Modified : 2018/10/10                                 //
//                                                             //
//  Auther : E24044046,E24046713                               //
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
      4'b0011: led = 4'b0011;
      4'b0100: led = 4'b0100;
    endcase
  end

endmodule
