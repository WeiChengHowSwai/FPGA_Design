module lcd_ctrl(clk, reset, datain, cmd, cmd_valid, dataout, output_valid, busy);
input           clk;
input           reset;
input   [7:0]   datain;
input   [2:0]   cmd;
input           cmd_valid;
output reg  [7:0]	dataout;
output reg	output_valid;
output reg	busy;

parameter [2:0] IDLE=3'b000;
parameter [2:0] READ=3'b001;
parameter [2:0] LOAD=3'b010;
parameter [2:0] SHIFT=3'b011;
parameter [2:0] OUT=3'b100;
reg [2:0] state_c, state_n;
reg [2:0] cmd_reg;
reg [7:0] datain_reg[35:0];
reg [5:0] counter_in;
reg [5:0] i;
reg [3:0] counter_out;
reg [1:0] x,y;
always@(posedge clk or posedge reset)
begin
	if(reset)
		state_c<=IDLE;
	else 
		state_c<=state_n;
end

always@(*)
begin
	state_n=state_c;
	case(state_c)
		IDLE: state_n=(cmd_valid&&!busy)?READ:IDLE;
		READ: if(cmd_reg==3'd1)
				state_n=LOAD;
			  else 
				state_n=SHIFT;
		LOAD: if(counter_in==6'd0) state_n=OUT;
		SHIFT: state_n=OUT;
		OUT: if(counter_out==4'd0) state_n=IDLE;
	endcase
	 
end


always@(posedge clk or posedge reset)
begin
	if(reset)
		cmd_reg<=3'b111;
	else if(cmd_valid==1)
		cmd_reg<=cmd;
end

////datain_reg
always@(posedge clk or posedge reset)
begin
	if(reset)
		for (i=0;i<36;i=i+1)
		begin
		datain_reg[i]<=8'd0;
		end
	else  if(state_n==LOAD)
		datain_reg[counter_in]<=datain;

end

///counter_in
always@(posedge clk or posedge reset)
begin
	if(reset)
		counter_in<=6'd0;
	else if (counter_in==6'd35)
		counter_in<=6'd0;
	else if(state_n==LOAD)
		counter_in<=counter_in+1; 
end

////x
always@(posedge clk or posedge reset)
begin

	if(reset)
		x<=2'd2;
	else if(cmd_reg==3'd1)
		x<=2'd2;
	else if(state_c==READ&&cmd_reg==3'd2&&x!=2'd3)
		x<=x+1;
	else if(state_c==READ&&cmd_reg==3'd3&&x!=2'd0)
		x<=x-1;
end

////y
always@(posedge clk or posedge reset)
begin
	if(reset)
		y<=2'd2;
	else if(cmd_reg==3'd1)
		y<=2'd2;
	else if(state_c==READ&&cmd_reg==3'd4&&y!=2'd0)
		y<=y-1;
	else if(state_c==READ&&cmd_reg==3'd5&&y!=2'd3)
		y<=y+1;
end

////counter_out
always@(posedge clk or posedge reset)
begin
	if(reset)
		counter_out<=4'd0;
	else if(counter_out==4'd8)
		counter_out<=4'd0;
	else if(state_n==OUT)
		counter_out<=counter_out+1;
end

/////output_valid
always@(posedge clk or posedge reset)
begin
	if(reset)
		output_valid<=0;
	else if(state_n==OUT)
		output_valid<=1;
	else 
		output_valid<=0;
end

////busy
always@(posedge clk or posedge reset)
begin
	if(reset)
		busy<=0;
	else if(state_n!=IDLE)
		busy<=1;
	else 
		busy<=0;
end

/////dataout
always@(posedge clk or posedge reset)
begin
	if(reset)
		for (i=0;i<36;i=i+1)
		begin
		dataout[i]<=8'd0;
		end
	else if(counter_out==4'd0 && state_n==OUT)
		dataout<=datain_reg[x+6*y];
	else if(counter_out==4'd1 && state_n==OUT)
		dataout<=datain_reg[x+6*y+1];
	else if(counter_out==4'd2 && state_n==OUT)
		dataout<=datain_reg[x+6*y+2];	
	else if(counter_out==4'd3 && state_n==OUT)
		dataout<=datain_reg[x+6*y+6];
	else if(counter_out==4'd4 && state_n==OUT)
		dataout<=datain_reg[x+6*y+7];
	else if(counter_out==4'd5 && state_n==OUT)
		dataout<=datain_reg[x+6*y+8];
	else if(counter_out==4'd6 && state_n==OUT)
		dataout<=datain_reg[x+6*y+12];
	else if(counter_out==4'd7 && state_n==OUT)
		dataout<=datain_reg[x+6*y+13];
	else if(counter_out==4'd8 && state_n==OUT)
		dataout<=datain_reg[x+6*y+14];	

end

endmodule
