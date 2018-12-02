`timescale 1ns / 1ps

module parity_bit(data,parity_bit);
    input [31:0] data;
    output wire parity_bit;
    
    assign parity_bit=data[31]^data[30]^data[29]^data[28]^data[27]^data[26]^data[25]^data[24]^data[23]^data[22]^data[21]^data[20]
                     ^data[19]^data[18]^data[17]^data[16]^data[15]^data[14]^data[13]^data[12]^data[11]^data[10]
                     ^data[9]^data[8]^data[7]^data[6]^data[5]^data[4]^data[3]^data[2]^data[1]^data[0];

endmodule
