`include "sort2.v"
`timescale 1ns/10ps
`define period 8
module testbench;


parameter arraySize = 32;
parameter dataSize = 32;

reg clk;
reg  [31:0] data_in;
reg ope_busy = 0;
reg operation_write = 0;
reg operation_read = 0;
wire [31:0] data_out;
wire  write_en;
wire read_en;

reg [8:0]index = 0;

sort2 sort_2(
.clk(clk),
.data_in(data_in),
.ope_busy(ope_busy),
.operation_write(operation_write),
.operation_read(operation_read),
.data_out(data_out),
.write_en(write_en),
.read_en(read_en));

initial
begin
    clk = 1'b0;
end
 
always #(`period/2) clk = ~clk;

initial
begin
  $dumpfile("test_sort.vcd");
  $dumpvars;
  #10;
  #2;

/*write*/
    for (index= 11; index<32; index=index+1) begin
        while (!write_en)  #1;
        ope_busy = 1;
        operation_write = 1;
        data_in=31-index;
        #10;
        ope_busy = 0;
        operation_write = 0;
        $display($time, ": ope_busy=%d  data_in=%d   write_en=%d  operation_write=%d",ope_busy,data_in,write_en,operation_write);
    end

    #10;

/*read*/    
        operation_read = 1;
    for (index= 0; index<22; index=index+1) begin
        while (!read_en)  #1;
        ope_busy = 1;
        #10;
        $display($time, ": ope_busy=%d  data_out=%d   read_en=%d  operation_read=%d",ope_busy,data_out,read_en,operation_read);
        ope_busy = 0;
        #10;
    end
    operation_read = 0;
    operation_write = 0;
    #5000 $finish;
end

endmodule // testbench