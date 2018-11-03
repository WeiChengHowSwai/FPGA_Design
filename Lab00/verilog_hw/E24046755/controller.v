`define s_reset 2'd0
`define s_fetch 2'd1
`define s_load 2'd2
`define s_exe 2'd3

`define reflash 3'd0
`define load 3'd1
`define right 3'd2
`define left 3'd3
`define up 3'd4
`define down 3'd5

module controller(op,ps_state,valid/*output_valid*/,busy,lw_en,clk,reset,cmd,cmd_valid,exe_finish);

input clk;
input reset;
input [2:0] cmd;
input cmd_valid;
input exe_finish;

output valid;
output busy;
output lw_en; //load enable
output [1:0] ps_state;
output [2:0] op;

reg [2:0] op;//store cmd
reg [1:0] ps_state;
reg [1:0] ns_state;


reg valid;


assign busy=(ps_state==`s_fetch)?1'b0:1'b1;
assign lw_en=(ps_state==`s_load)?1'b1:1'b0; //modify

always@(*)
begin
	if(ps_state==`s_exe)
		valid=1'b1; //modify
	else
		valid=1'b0;
end

//renew state
always@(posedge clk or posedge reset)
begin
	if(reset)
		ps_state<=`s_reset;
	else
		ps_state<=ns_state;
end

//ns_state logic
always@(*)
begin
	case(ps_state)
		`s_reset:
			ns_state=reset?`s_reset:`s_fetch;
		`s_fetch:
			ns_state=(cmd==`load)?`s_load:`s_exe;
		`s_load:
			ns_state=exe_finish?`s_exe:`s_load;
		`s_exe:
			ns_state=exe_finish?`s_fetch:`s_exe;
		default:
			ns_state=`s_reset;
	endcase
end

//op 
always@(posedge clk or posedge reset)
begin
	if(reset)
		op<=3'd0;
	else if(cmd_valid)
		op<=cmd;
	else;
end



endmodule
