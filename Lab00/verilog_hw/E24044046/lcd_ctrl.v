`define RESET   4'd0
`define LOAD    4'd1
`define DECODE  4'd2
`define REFLASH 4'd3
`define SHIFT_R 4'd4
`define SHIFT_L 4'd5
`define SHIFT_U 4'd6
`define SHIFT_D 4'd7
`define OUTPUT  4'd8

module lcd_ctrl(clk, reset, datain, cmd, cmd_valid, dataout, output_valid, busy);
input           clk;
input           reset;
input   [7:0]   datain;
input   [2:0]   cmd;
input           cmd_valid;
output  [7:0]   dataout;
output          output_valid;
output          busy;

reg  [7:0]   dataout;
reg          output_valid;
reg          busy;

reg [3:0] state,next_state;
reg [5:0] counter;
reg [7:0] data [0:35];
reg [2:0] x,y;
reg [5:0] addr;
reg counter_addr;

always@(posedge clk or posedge reset)begin
   if(reset) state<=`RESET;
   else state<=next_state;
end

//counter
always@(posedge clk)begin
   if(state==`RESET) counter<=6'd0;
   else if(state==`LOAD) counter<=(counter==6'd35)?6'd0:counter+6'd1;
   else if(state==`OUTPUT) counter<=(counter==6'd9)?6'd0:counter+6'd1;
end

//counter_addr
always@(posedge clk)begin
  if(state==`RESET) counter_addr<=1'd0;
  else if(state==`SHIFT_R||state==`SHIFT_L||state==`SHIFT_U||state==`SHIFT_D) counter_addr<=counter_addr+1'b1; 
end

//data
always@(posedge clk)begin
  if(state==`LOAD) data[counter]<=datain;
end

//dataout
always@(posedge clk)begin
  if(state==`RESET) dataout<=8'd0;
  else if(state==`OUTPUT) dataout<=data[addr];
end

//x,y
always@(posedge clk)begin
  if(state==`RESET||state==`LOAD)begin
     x<=3'd2;
     y<=3'd2;
  end
  else if(state==`SHIFT_R&&counter_addr==1'd0) x<=(x==3'd3)?3'd3:x+3'd1;
  else if(state==`SHIFT_L&&counter_addr==1'd0) x<=(x==3'd0)?3'd0:x-3'd1;
  else if(state==`SHIFT_U&&counter_addr==1'd0) y<=(y==3'd0)?3'd0:y-3'd1;
  else if(state==`SHIFT_D&&counter_addr==1'd0) y<=(y==3'd3)?3'd3:y+3'd1;
end

//addr
always@(posedge clk)begin
  if(state==`RESET||state==`LOAD) addr<=8'd14;
  else if(state==`OUTPUT)begin
    if(counter==6'd2 || counter==6'd5) addr<=addr+8'd4;
    else if(counter!=6'd8&&counter!=6'd9) addr<=addr+8'd1;
 end
 else if((state==`SHIFT_R||state==`SHIFT_L||state==`SHIFT_U||state==`SHIFT_D)&&counter_addr==1'd1) addr<=6*y+x;
 else if(state==`REFLASH) addr<=6*y+x;
end

//controller
always@(*)begin
  case(state)
   `RESET:begin
     output_valid=1'b0;
     busy=1'b0;
    end
   `LOAD:begin
     output_valid=1'b0;
     busy=1'b1;
    end
   `DECODE:begin
     output_valid=1'b0;
     busy=1'b0;
    end
   `REFLASH:begin
     output_valid=1'b0;
     busy=1'b1;
    end
   `SHIFT_R:begin
     output_valid=1'b0;
     busy=1'b1;
    end
   `SHIFT_L:begin
     output_valid=1'b0;
     busy=1'b1;
    end
   `SHIFT_U:begin
     output_valid=1'b0;
     busy=1'b1;
    end
   `SHIFT_D:begin
     output_valid=1'b0;
     busy=1'b1;
    end
   `OUTPUT:begin
     if(counter==6'd0)begin
     output_valid=1'b0;
     busy=1'b1;
     end
     else begin
     output_valid=1'b1;
     busy=1'b1;
     end
    end
  default:begin
     output_valid=1'b0;
     busy=1'b0;
    end
  endcase
end

//state
always@(*)begin
 case(state) 
 `RESET:next_state=`LOAD;
 `LOAD:begin
    if(counter==6'd35) next_state=`OUTPUT;
    else next_state=`LOAD;
 end
 `DECODE:begin
    case(cmd)
     3'd0:next_state=`REFLASH;
     3'd1:next_state=`LOAD;
     3'd2:next_state=`SHIFT_R;
     3'd3:next_state=`SHIFT_L;
     3'd4:next_state=`SHIFT_U; 
     3'd5:next_state=`SHIFT_D;
     default:next_state=`DECODE;
   endcase
 end
 `REFLASH:next_state=`OUTPUT;
 `SHIFT_R:begin 
    if(counter_addr==1'b1) next_state=`OUTPUT;
    else next_state=`SHIFT_R;
  end
 `SHIFT_L:begin 
    if(counter_addr==1'b1) next_state=`OUTPUT;
    else next_state=`SHIFT_L;
  end
 `SHIFT_U:begin 
    if(counter_addr==1'b1) next_state=`OUTPUT;
    else next_state=`SHIFT_U;
  end
 `SHIFT_D:begin 
    if(counter_addr==1'b1) next_state=`OUTPUT;
    else next_state=`SHIFT_D;
  end
 `OUTPUT:begin
    if(counter==6'd9) next_state=`DECODE;
    else next_state=`OUTPUT;
  end
  default:next_state=`RESET; 
 endcase
end
                                                                                     
endmodule
