module lcd_ctrl(
input           clk,
input           reset,
input   [7:0]   datain,
input   [2:0]   cmd,
input           cmd_valid,
output  [7:0]   dataout,
output          output_valid,
output          busy
);

reg  [7:0]  dataout;
reg         output_valid;
reg         busy;
reg  [3:0]  current_state, 
            next_state;
reg  [7:0]  img[0:35]; // datdin register
reg  [5:0]  img_addr;  // datain address
reg  [1:0]  x_addr,    // origin (x_addr,y_addr)
            y_addr;          
integer     i;
parameter cmd_reflash  = 3'd0,
          cmd_load     = 3'd1,
          cmd_right    = 3'd2,
          cmd_left     = 3'd3,
          cmd_up       = 3'd4,
          cmd_down     = 3'd5,
          cmd_out      = 3'd6,
          cmd_standby  = 3'd7,
          RST          = 4'd8;

always @(posedge clk or posedge reset) begin
  if (reset)
    current_state <= RST;
  else
    current_state <= next_state;
end
// Current state => Next state
always@(*)begin
  case(current_state)
    RST:
    begin
      next_state = (cmd_valid == 1'b1)?cmd:cmd_standby;
      busy = 1'b0;
    end
    cmd_standby:
    begin
      next_state = (cmd_valid == 1'b1 && output_valid == 0)?cmd:cmd_standby;
    end
    cmd_reflash:
    begin
      next_state = cmd_out;
      busy = 1'b1;
    end
    cmd_load:
    begin
      next_state = (img_addr == 6'd35)?cmd_out:cmd_load;
      busy = 1'b1;
    end
    cmd_right:
    begin
      next_state = cmd_out;
      busy = 1'b1;
    end
    cmd_left:
    begin
      next_state = cmd_out;
      busy = 1'b1;
    end
    cmd_up:
    begin
      next_state = cmd_out;
      busy = 1'b1;
    end
    cmd_down:
    begin
      next_state = cmd_out;
      busy = 1'b1;
    end
    cmd_out:
    begin
      next_state = (i == 14)?cmd_standby:cmd_out;
      busy = 1'b1;    
    end
  endcase
end

always @ (posedge clk) begin
  case(current_state)
    RST:// Reset
    begin
      i <= 0;  
      img_addr     <= 0;
      x_addr       <= 2'd2;
      y_addr       <= 2'd2;
      output_valid <= 0;
    end  
    cmd_standby:// Waiting for next cmd
    begin
      i <= 0;
      img_addr     <= 0;
      output_valid <= 0;
      busy <= 1'b0;
    end
    cmd_load:// 0: Load data
    begin
      x_addr <= 2'd2;
      y_addr <= 2'd2;
      img[img_addr] <= datain;
      img_addr <= img_addr + 1;
    end
    cmd_right:// 1: Shift Right
    begin
      if(x_addr == 3)begin
        x_addr <= x_addr ;
      end
      else begin
        x_addr <= x_addr + 1;
      end
    end
    cmd_left:// 2: Shift Left
    begin
      if(x_addr == 0)begin
        x_addr <= x_addr ;
      end
      else begin
        x_addr <= x_addr - 1;
      end
    end
    cmd_up:// 3: Shift Up
    begin
      if(y_addr == 0)begin
        y_addr <= y_addr ;
      end
      else begin
        y_addr <= y_addr - 1;
      end
    end
    cmd_down:// 4: Shift Down
    begin
      if(y_addr == 3)begin
        y_addr <= y_addr ;
      end
      else begin
        y_addr <= y_addr + 1;
      end
    end
    cmd_out:// 5: Output data
    begin
      output_valid <= 1;
      dataout <= img[ x_addr + 6*y_addr + i];
      if( i%3 == 2)begin
      i <= i+4 ;
      end
      else begin
      i <= i+1 ;
      end
    end
  endcase
end

endmodule