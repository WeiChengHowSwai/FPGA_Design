module buffer(dataout,clk,reset,lw_en,datain,addr);

input clk;
input reset;
input lw_en;
input [7:0] datain;
input [5:0] addr; 

output [7:0] dataout;

reg [7:0] buffers [0:35];

integer i;

always@(posedge clk or posedge reset)
begin
	if(reset)
	begin
		for(i=0;i<36;i=i+1)
			buffers[i]<=8'd0;
	end
	else if(lw_en)
		buffers[addr]<=datain;
	else;
end

assign dataout=buffers[addr];

endmodule
