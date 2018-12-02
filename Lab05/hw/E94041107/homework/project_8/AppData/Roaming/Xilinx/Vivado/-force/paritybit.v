module paritybit(data,out_e,out_o);
input [31:0]data;
output  out_e,out_o;
 
wire out_e,out_o;

assign out_o=~^data;
assign out_e=^data;
 





endmodule

