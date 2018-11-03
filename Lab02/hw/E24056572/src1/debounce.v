

module debounce(pb_in,clk, pb_out);
    input pb_in,clk;
    output pb_out;
    wire Q1,Q2;
    DFF d1(clk, pb_in,Q1 );
    DFF d2(clk, Q1,Q2 );
    assign pb_out = Q1 & ~Q2;
endmodule