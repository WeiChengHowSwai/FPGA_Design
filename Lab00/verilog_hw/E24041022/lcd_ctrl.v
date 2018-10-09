module lcd_ctrl(clk, reset, datain, cmd, cmd_valid, dataout, output_valid, busy);
input           clk;
input           reset;
input   [7:0]   datain;
input   [2:0]   cmd;
input           cmd_valid;
output  [7:0]   dataout;
output          output_valid;
output          busy;
reg [5:0] position;
reg [3:0] cmd_reg;
reg [3:0] out_position;
reg [7:0] data_reg [35:0];   
reg busy;
reg [7:0] dataout;
reg output_valid; 
integer i;
reg signal,signal1;
	
	always@(posedge clk) begin
	if(cmd_valid) begin
		cmd_reg <= cmd;
	   end
	end
	
	always@(posedge clk) begin
	if(cmd_valid) 
	   busy <= 1;
	end
	   
	always@(posedge clk or posedge reset) begin 
	
	if(reset) begin
		
		position <= 6'd0;
		dataout <= 8'h0;
		output_valid <= 0;
		busy <= 1'b0;
		out_position <= 4'd0;
		i <= 0;
		signal <= 0;
	end
	else begin
		if(!cmd_valid) begin
		case(cmd_reg)
		
		3'd0:
		
			signal <= 1;
			
		3'd1:
		
         if(busy && i<36 && !signal) begin
                      data_reg [i] = datain;
                      i <= i + 1;
                      end
                      else begin
                      
                      i <= 0;
                      signal <= 1;
                      signal1 <= 1;
                      position <= 6'd14;
                      
                      end
		3'd2:
		begin
			if(busy && position%6 < 3 && !signal) begin
			
				position <= position + 1;
				signal <= 1;
				
			
			end
			else begin
				signal <= 1;
			end
		end	
		3'd3:
		begin
			if(busy && position%6 > 0 && !signal) begin
			
				position <= position - 1;
				signal <= 1;
				
			
			end
			else begin
				signal <= 1;
			end		
		end	
		3'd4:
		begin
			if(busy && position/6 > 0 && !signal) begin
			
				position <= position - 6;
				signal <= 1;
				
			
			end
			else begin
				signal <= 1;
			end
		end	
		3'd5:
		begin
			if(busy && position/6 < 3 && !signal) begin
			
				position <= position + 6;
				signal <= 1;
			    
			
			end
			else begin
				signal <= 1;
			end
		end	
		default:
			signal <= 0;
			
		endcase
		end
	end
	end
	


	always@(posedge clk) begin
		
	if(signal) begin
		
		case(out_position)
		
		4'd0:
		begin
			dataout <= data_reg[position];
			out_position <= out_position + 1;
			output_valid <= 1;
			signal1 <= 0;
		end
		4'd1:
		begin
			dataout <= data_reg[position+1];
			out_position <= out_position + 1;	
		end	
		4'd2:
		begin
			dataout <= data_reg[position+2];
			out_position <= out_position + 1;	
		end	
		4'd3:
		begin
			dataout <= data_reg[position+6];
			out_position <= out_position + 1;		
		end
		4'd4:
		begin
			dataout <= data_reg[position+7];
			out_position <= out_position + 1;		
		end
		4'd5:
		begin
			dataout <= data_reg[position+8];
			out_position <= out_position + 1;		
		end
		4'd6:
		begin
			dataout <= data_reg[position+12];
			out_position <= out_position + 1;		
		end
		4'd7:
		begin
			dataout <= data_reg[position+13];
			out_position <= out_position + 1;		
		end
		4'd8:
		begin
			dataout <= data_reg[position+14];
			out_position <= out_position + 1;
			
		end
		default:
		begin
			out_position <= 0;
			signal <= 0;
			busy <= 0;
			output_valid <= 0;
		end
		
		endcase
	end
		
	
	end
	
	
endmodule
