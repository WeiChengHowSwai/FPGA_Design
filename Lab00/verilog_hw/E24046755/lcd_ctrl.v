`include "controller.v"
`include "addr_handler.v"
`include "buffer.v"

module lcd_ctrl(output_valid, busy, dataout, clk, reset, datain, cmd, cmd_valid);
input           clk;
input           reset;
input   [7:0]   datain;
input   [2:0]   cmd;
input           cmd_valid;
output  [7:0]   dataout;
output          output_valid;
output          busy;

wire [2:0] op;
wire [1:0] ps_state;

wire clk;
wire reset;
wire [7:0] datain;
wire [7:0] dataout;
wire busy;
wire cmd_valid;
wire output_valid;
wire [2:0] cmd;
wire [5:0] buff_addr;
wire lw_en;
wire exe_finish;

controller control(.op(op),.ps_state(ps_state),.valid(output_valid),.busy(busy),.lw_en(lw_en),.clk(clk),.reset(reset),.cmd(cmd),.cmd_valid(cmd_valid),.exe_finish(exe_finish));

addr_handler addr(.addr(buff_addr),.exe_finish(exe_finish),.clk(clk),.reset(reset),.ps_state(ps_state),.op(op),.cmd(cmd));

buffer buff(.dataout(dataout),.clk(clk),.reset(reset),.lw_en(lw_en),.datain(datain),.addr(buff_addr));
                                                                                     
endmodule
