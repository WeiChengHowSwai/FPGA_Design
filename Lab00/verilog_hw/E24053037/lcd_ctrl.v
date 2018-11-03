`timescale 1ns/10ps
module lcd_ctrl(clk, reset, datain, cmd, cmd_valid, dataout, output_valid, busy);
input           clk;
input           reset;
input   [7:0]   datain;
input   [2:0]   cmd;
input           cmd_valid;
output reg [7:0]   dataout;
output reg         output_valid;
output reg        busy;
reg [7:0] input_memory [35:0];
reg [2:0] cs;
reg [7:0] innum;

parameter reflash =3'd0;
parameter load =3'd1;
parameter shift_right=3'd2;
parameter shift_left= 3'd3;
parameter shift_up = 3'd4;
parameter shift_down=3'd5;
parameter rst = 3'd6;

parameter PRINT=3'd0;
parameter LOAD =3'd1;
parameter SLEEP =3'd2;

integer i=0,z=0,count=0;
integer x=2,y=2,k=0;

always@(posedge clk or posedge reset) begin
    if(reset)begin
		output_valid=0;
			y=2;
			x=2;
			for(i=0;i<36;i=i+1)
				input_memory[i]=0;
			i=0;
			busy=0;
			dataout=0;
			cs <=rst; 
		
		
		end
	
		
end


always@(negedge clk or posedge cmd)begin
if(cmd_valid ==1)begin
    case(cmd)
        load: begin
	
		cs=LOAD;
			busy = 1;
			dataout=0;
			output_valid=0;
			x=2;
			y=2;
		
		end
        reflash:
        begin
		
		cs=PRINT;
			output_valid=1;
			busy=1;
			
			end

		shift_right:begin
				cs = PRINT;
				busy=1;
				if(x==3)x=3;
				else x=x+1;
				end
		shift_left:begin
				cs = PRINT;
				busy=1;
				if(x==0)x=0;
				else x=x-1;
				end
				
		shift_up:begin
				cs = PRINT;
				busy=1;
				if(y==0)y=0;
				else y=y-1;
				end
				
		shift_down:begin
				cs = PRINT;
				busy=1;
				if(y==3)y=3;
				else y=y+1;
				end
				
		      default begin
			  k=100+k;
			  end

		      
			  
		endcase
		end
end

always@(negedge clk or datain or posedge cs)begin
	case(cs)
		LOAD:begin//1
		
		if(i<37)
			begin
		
				input_memory[i-1]=datain;
				innum = input_memory[i];
				dataout=0;
				output_valid=0;
				i=i+1;
				cs = LOAD;
			end
		else 
			begin
				output_valid=0;
				i=0;
				dataout=0;
				cs = PRINT;
        end  
		end
		PRINT:begin//0
		if(z<9)begin
			cs = PRINT;
			busy = 1;
			output_valid=1;
		dataout=input_memory[x+6*y];
            if(count<2)
			begin
			x=x+1;
			count = count + 1 ;
			end
			else begin
				y=y+1;
				x=x-2;
				count=0;
			end
			
            z=z+1;
			end
			else begin
			z=0;
			busy =0;
			dataout=0;
			output_valid=0;
			cs = SLEEP;
			y = y-3;

			end

		end
		
		SLEEP: begin
		cs = SLEEP;
		dataout=0;
		output_valid=0;
		
		end
		default begin
		cs = SLEEP;
		end
		endcase
end	

endmodule
