module SevenSeg(din,dout);
    input   [3:0]  din;
    output  [6:0]  dout;
    reg     [6:0]  dout;

    always@(din)
    begin
        case (din)
          4'b0000: dout=7'b1000000; //0
          4'b0001: dout=7'b1111001; //1
          4'b0010: dout=7'b0100100; //2
          4'b0011: dout=7'b0110000; //3
          4'b0100: dout=7'b0011001;
          4'b0101: dout=7'b0010010;
          4'b0110: dout=7'b0000010;
          4'b0111: dout=7'b1111000;
          4'b1000: dout=7'b0000000;
          4'b1001: dout=7'b0010000;
          4'b1010: dout=7'b0001000;
          4'b1011: dout=7'b0000011;
          4'b1100: dout=7'b1000110;
          4'b1101: dout=7'b0100001;
          4'b1110: dout=7'b0000110;
          4'b1111: dout=7'b0001110; //F
          default: dout=7'b1111111;
     
        endcase
    end
endmodule