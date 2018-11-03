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
module addr_handler(addr,exe_finish,clk,reset,ps_state,op,cmd);

input clk;
input reset;
input [1:0] ps_state;
input [2:0] op;
input [2:0] cmd;

output [5:0] addr;
output exe_finish;

reg [5:0] origin_x,origin_y; //[2:0]
reg [5:0] x,y; //[1:0]
reg [5:0] lw_addr;
reg exe_finish;

wire [5:0] exe_addr;

//origin_x and origin_y
always@(posedge clk or posedge reset)
begin
	if(reset)
		origin_x<=6'd0;
	else if(ps_state==`s_fetch)
	begin
		case(cmd)
			/*`reflash:
				origin_x<=origin_x;*/
			`load:
				origin_x<=6'd3;
			`right:
			begin
				if((origin_x+6'd3)<6'd7)
					origin_x<=origin_x+6'd1;
				else
					origin_x<=origin_x;
			end
			`left:
			begin
				if((origin_x-6'd1)>6'd0)
					origin_x<=origin_x-6'd1;
				else
					origin_x<=origin_x;
			end			
			/*`up:
				origin_x<=origin_x;
			`down:
				origin_x<=origin_x;*/
			default:
				origin_x<=origin_x;
		endcase
	end
	else;
end

always@(posedge clk or posedge reset)
begin
	if(reset)
		origin_y<=6'd0;
	else if(ps_state==`s_fetch)
	begin
		case(cmd)
			/*`reflash:
				origin_y<=origin_y;*/
			`load:
				origin_y<=6'd3;
			/*`right:
				origin_y<=origin_y;
			`left:
				origin_y<=origin_y;*/
			`up:
			begin
				if((origin_y-6'd1)>6'd0)
					origin_y<=origin_y-6'd1;
				else
					origin_y<=origin_y;
			end			
			`down:
			begin
				if((origin_y+6'd3)<6'd7)
					origin_y<=origin_y+6'd1;
				else
					origin_y<=origin_y;
			end			
			default:
				origin_y<=origin_y;
		endcase
	end
	else;
end

//x and y
always@(posedge clk or posedge reset)
begin
	if(reset)
		x<=6'd0;
	else if(ps_state==`s_exe)//modilfy
	begin
		if(x<6'd2)
			x<=x+6'd1;
		else
			x<=6'd0;
	end
	else;
end

always@(posedge clk or posedge reset)
begin
	if(reset)
		y<=6'd0;
	else if(x==6'd2)
	begin
		if(y<6'd2)
			y<=y+6'd1;
		else
			y<=6'd0;
	end
	else;
end

assign exe_addr=(origin_y+y-6'd1)*6'd6+origin_x+x-6'd1;

//lw_addr
always@(posedge clk or posedge reset)
begin
	if(reset)
		lw_addr<=6'd0;
	else if(ps_state==`s_load)//modify
	begin
		if(lw_addr<6'd35)
			lw_addr<=lw_addr+6'd1;
		else
			lw_addr<=6'd0;
	end
	else;
end

assign addr=(ps_state==`s_exe)?/*(op==`load)?*/exe_addr:lw_addr;

//exe_finish
always@(*)
begin
	case(ps_state) //modify
		/*`load:
			exe_finish=(lw_addr==6'd35)?1'b1:1'b0;
		default: //other operations
			exe_finish=((x==6'd2)&&(y==6'd2))?1'b1:1'b0;*/
		`s_load:
			exe_finish=(lw_addr==6'd35)?1'b1:1'b0;
		`s_exe:
			exe_finish=((x==6'd2)&&(y==6'd2))?1'b1:1'b0;
		default:
			exe_finish=1'b0;
	endcase
end

endmodule
