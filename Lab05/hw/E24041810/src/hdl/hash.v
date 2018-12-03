module hash(
    input clk,
    input rst, 
    input read_en,
    input[31:0] data_in,
    output wire [31:0] data_out,
    output [2:0] counter,
    output [2:0] check
	
    );
    
	reg [2:0] counter;
	reg [2:0] check;
	reg [63:0] temp;
	
	assign data_out=(counter==3'd5)?temp[31:0]:32'd2;
	
	always@(posedge clk or posedge rst)
	begin
	  if(rst) counter<=3'd0;
	  else if(counter==3'd0&&read_en) counter<=counter+3'd1;
	  else if(counter==3'd1||counter==3'd2||counter==3'd3||counter==3'd4) counter<=counter+3'd1;
	end
	
	always@(posedge clk )
	begin
	  case(counter)
	     3'd1: temp<=(64'd5381<<3'd5)+ 64'd5381+ data_in[7:0];
		 3'd2: temp<=(temp<<3'd5)+ temp+ data_in[15:8];
		 3'd3: temp<=(temp<<3'd5)+ temp+ data_in[23:16];
		 3'd4: temp<=(temp<<3'd5)+ temp+ data_in[31:24];
	   endcase
	 
	end
	
	always@(posedge clk or posedge rst )
	begin
	  if(rst) check<=3'd0;
	  else if(counter==3'd1) check<=check+3'd1;
	end
   
   
endmodule
