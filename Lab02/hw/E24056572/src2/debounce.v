module debounce(
    input clk,
    input [3:0] btn,
    output [3:0] btn_o
    );
    
    wire slow_clk;
    clock_div(
        .clk_125M(clk),
        .new_clock(slow_clk)
    );
    dff dff1(
        .dff_clock(slow_clk),
        .D(btn),
        .Q(btn_o)
    );
endmodule

module clock_div(
    input clk_125M, 
    output reg new_clock
    );
    reg[26:0]counter = 0;
    always@(posedge clk_125M)
    begin
        counter <= (counter >= 249999)?0:counter + 1;
        new_clock <= (counter < 125000)?1'b0:1'b1;
    end
endmodule

module dff(
    input dff_clock,
    input [3:0]D,
    output reg [3:0]Q
    );
    always@(posedge dff_clock)begin
        Q<=D;
    end
endmodule
