`define RG  3'd0
`define RY  3'd1
`define RR1 3'd2
`define GR  3'd3
`define YR  3'd4 
`define RR2 3'd5

module	RGB_LED(div_clk,rst,btn,led,R1_out,G1_out,B1_out,R2_out,G2_out, B2_out);

	input			div_clk;
	input			rst;
	input   [3:1]   btn;
	output  [3:0]   led;
	output	reg		R1_out;
	output	reg		G1_out;
	output	reg		B1_out;
    output	reg		R2_out;
    output  reg     G2_out;
    output  reg     B2_out;

reg		[3:0]	counter15;
reg     [2:0]   state,next_state;
reg             temp_btn;

assign led[3:0]=counter15[3:0];

//state
always@(posedge div_clk or posedge rst)begin
    if(rst==1'b1 || btn[1]==1'b1 ) state<=`RG;
    else if(btn[2]) state<=`RR1;
    else state<=next_state;
end

//temp_btn
always@(posedge div_clk or posedge rst)begin
 if(rst==1'b1 || btn[2]==1'b1) temp_btn<=1'b0;
 else if(btn[1]) temp_btn<=1'b1;
end

//counter15
always@(posedge div_clk or posedge rst)begin
   if(rst) counter15<=4'd15;
   else if(btn[1] || btn[2]) counter15<=4'd10;
   else begin
   case(temp_btn)
   1'b0:begin
         if(state==`RG|| state==`RY||state==`GR||state==`YR) counter15<=(counter15==4'd0)?4'd2:counter15-4'd1;
         else if(state==`RR1||state==`RR2) counter15<=(counter15==4'd0)?4'd15:counter15-4'd1;
   end
   1'b1:begin
          if(state==`RG|| state==`RY||state==`GR||state==`YR) counter15<=(counter15==4'd0)?4'd2:counter15-4'd1;
          else if(state==`RR1||state==`RR2) counter15<=(counter15==4'd0)?4'd10:counter15-4'd1;
   end
   default:begin
      if(state==`RG|| state==`RY||state==`GR||state==`YR) counter15<=(counter15==4'd0)?4'd2:counter15-4'd1;
      else if(state==`RR1||state==`RR2) counter15<=(counter15==4'd0)?4'd15:counter15-4'd1;
      end
   endcase
   end
end

//RGB_out
always@(*)begin
   case(state)
   `RG:begin
   R1_out=1'b1;
   G1_out=1'b0;
   B1_out=1'b0;
   R2_out=1'b0;
   G2_out=1'b1;
   B2_out=1'b0;
   end
  `RY:begin
   R1_out=1'b1;
   G1_out=1'b0;
   B1_out=1'b0;
   R2_out=1'b1;
   G2_out=1'b1;
   B2_out=1'b0;
   end
   `RR1:begin
   R1_out=1'b1;
   G1_out=1'b0;
   B1_out=1'b0;
   R2_out=1'b1;
   G2_out=1'b0;
   B2_out=1'b0;
   end
  `GR:begin
   R1_out=1'b0;
   G1_out=1'b1;
   B1_out=1'b0;
   R2_out=1'b1;
   G2_out=1'b0;
   B2_out=1'b0;
   end
   `YR:begin
   R1_out=1'b1;
   G1_out=1'b1;
   B1_out=1'b0;
   R2_out=1'b1;
   G2_out=1'b0;
   B2_out=1'b0;
   end
  `RR2:begin
   R1_out=1'b1;
   G1_out=1'b0;
   B1_out=1'b0;
   R2_out=1'b1;
   G2_out=1'b0;
   B2_out=1'b0;
   end
   default:begin
      R1_out=1'b1;
      G1_out=1'b0;
      B1_out=1'b0;
      R2_out=1'b0;
      G2_out=1'b1;
      B2_out=1'b0;
      end
   endcase
end


//next_state
always@(*)begin
    case(state)
    `RG:begin 
        if(counter15==4'd1) next_state=`RY;
        else next_state=`RG;
     end
    `RY:begin 
         if(counter15==4'd1) next_state=`RR1;
         else next_state=`RY;
     end
      `RR1:begin 
          if(counter15==4'd1) next_state=`GR;
          else next_state=`RR1;
       end
      `GR:begin 
          if(counter15==4'd1) next_state=`YR;
          else next_state=`GR;
       end
       `YR:begin 
           if(counter15==4'd1) next_state=`RR2;
           else next_state=`YR;
        end
        `RR2:begin 
            if(counter15==4'd1) next_state=`RG;
            else next_state=`RR2;
         end
         default:next_state=`RG;
    endcase
end


endmodule
