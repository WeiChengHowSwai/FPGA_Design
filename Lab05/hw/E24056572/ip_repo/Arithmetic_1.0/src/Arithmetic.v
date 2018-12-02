//////////////////////////////////////////////////////////////////////////////////
// Create Date: 2018/12/01 10:41:09
// Design Name: Arithmetic
// Module Name: Arithmetic
// Project Name: Arithmetic
// Target Devices: PYNQ-Z2
// Tool Versions: Vivado 2018.2
// Description: FPGA LAB5
//////////////////////////////////////////////////////////////////////////////////
(*use_dsp = "yes"*)module Arithmetic(
    input signed[15:0]A,
    input signed[15:0]B,
    input [1:0]operation,
    output reg  [31:0]C
    );
    
    parameter add = 2'b00,
              sub = 2'b01,
              mul = 2'b10;

    always@(*)begin
        case(operation) 
            add:begin
                C = A + B;
            end
            sub:begin
                C = A - B;
            end
            mul:begin
                C = A * B;
            end
            default:begin
                C = 0;
            end
        endcase
    end
endmodule
