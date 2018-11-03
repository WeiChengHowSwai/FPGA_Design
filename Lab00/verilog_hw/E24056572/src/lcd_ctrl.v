`define WIDTH  6
`define IMG_SIZE  36
module lcd_ctrl(clk, reset, datain, cmd, cmd_valid, dataout, output_valid, busy);

input           clk;
input           reset;
input   [7:0]   datain;
input   [2:0]   cmd;
input           cmd_valid;

output  [7:0]   dataout;
output          output_valid;
output          busy;

reg	 [3:0]	cstate, nstate;
reg  [7:0]	mem[`IMG_SIZE-1:0]; //input is an 36pixel*8bits image
reg  [5:0]  mem_addr;
reg  [7:0]  dataout;
reg  [5:0]  center;
reg  [3:0]  counter;
reg  [1:0]  output_cond;
reg         output_valid;
reg         busy;

parameter S_reflash 		= 3'd0,
          S_load 		    = 3'd1,
          S_shiftright 	= 3'd2,
          S_shiftleft 	= 3'd3,
          S_shiftup 		= 3'd4,
          S_shiftdown   = 3'd5,
          S_wait        = 3'd6,
          S_Out         = 3'd7;

parameter cal_cent      = 2'd0,
          fir_raw       = 2'd1,
          sec_raw       = 2'd2,
          thi_raw       = 2'd3;

always @(posedge clk or posedge reset) begin
  if (reset)
    cstate <= S_wait;
  else
    cstate <= nstate;
end

/*State and Busy Signal Control*/
always@(*)begin
  case(cstate)
    S_reflash:
    begin
      nstate = S_Out;
      busy = 1'b1;
    end
    S_load:
    begin
      nstate = (mem_addr == 6'd35)?S_Out:S_load;
      busy = 1'b1;
    end
    S_shiftright:
    begin
      nstate = S_Out;
      busy = 1'b1;
    end
    S_shiftleft:
    begin
      nstate = S_Out;
      busy = 1'b1;
    end
    S_shiftup:
    begin
      nstate = S_Out;
      busy = 1'b1;
    end
    S_shiftdown:
    begin
      nstate = S_Out;
      busy = 1'b1;
    end
    S_wait:
    begin
      nstate = (cmd_valid == 1'b1)?cmd:S_wait;
      busy = 1'b0;
    end
    S_Out:
    begin
      nstate = (counter == 8)?S_wait:S_Out;
      busy = 1'b1;    
    end
  endcase
end

/*Sequential Logic*/
always @ (posedge clk) begin
  case(cstate)
    S_reflash:
    begin
      center <= center;
    end
    S_load:
    begin
      center <= 6'd14;
      mem[mem_addr] <= datain;
      mem_addr <= mem_addr + 1;
    end
    /* calculate new center in every shifting-related state */
    /* there is boundary in each case                       */
    S_shiftright:
    begin
      if((center+3)%6 == 0)begin
        center <= center ;
      end
      else begin
        center <= center + 1;
      end
    end
    S_shiftleft:
    begin
      if(center%6 == 0)begin
        center <= center ;
      end
      else begin
        center <= center - 1;
      end
    end
    S_shiftup:
    begin
      if(center < `WIDTH * 1)begin
        center <= center ;
      end
      else begin
        center <= center - `WIDTH;
      end
    end
    S_shiftdown:
    begin
      if(center > `WIDTH * 3)begin
        center <= center ;
      end
      else begin
        center <= center + `WIDTH;
      end
    end
    S_wait:
    begin
      mem_addr <=5'd0;
      output_valid <= 1'b0;
      counter <= 4'd0;
      output_cond <= fir_raw;
    end
    /*print out img with calculated center*/
    S_Out:
    begin
      output_valid <= 1'b1;
      case(output_cond)
        /*first 3 elements (counter 0~2)*/
        fir_raw:
        begin
          dataout <= mem[center + counter];
          if(counter == 2)begin
            output_cond <= sec_raw;
          end
        end
        /*second raw (counter 3~5)*/
        sec_raw:
        begin
          dataout <= mem[center + counter + 3];
          if(counter == 5)begin
            output_cond <= thi_raw;
          end
        end
        /*third raw (counter 6~8)*/
        thi_raw:
        begin
          dataout <= mem[center + counter + 6];
        end
      endcase
      counter <= counter + 1;
    end
  endcase
end

endmodule