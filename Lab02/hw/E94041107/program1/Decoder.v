module Decoder (
  input div_clk ,
  input  btn1, 
  input  btn2,
  input  btn3,
  output [3:0]led,
  output reg [7:0] R1_time_out,
  output reg [7:0] G1_time_out,
  output reg [7:0] B1_time_out,
  output reg [7:0] R2_time_out,
  output reg [7:0] G2_time_out,
  output reg [7:0] B2_time_out
);

  reg [4:0]counter1 ;
  reg [3:0]counter2 ;
  reg reg_btn ;
  wire [3:0] led;
  
  assign led = (reg_btn)? {1'b0,counter2[2:0]} :counter1[3:0] ; 
  
  
  //counter
  always @ ( posedge div_clk ) 
  begin
  counter1 <= counter1 +1 ;
  counter2 <= counter2 + 1 ;  
  end
  
  //reg_btn
  always @ ( posedge div_clk ) 
  begin
		if(btn1)
			reg_btn <= 1 ;
		else if(btn3)
			reg_btn <= 0 ;
  end

  //8sec
  always @ (*)
  begin
  if(btn2)
  begin
  		G1_time_out = 8'd255 ;
		R1_time_out = 8'd0 ;
		B1_time_out = 8'd0 ;
		G2_time_out = 8'd0 ;
		R2_time_out = 8'd255 ;
		B2_time_out = 8'd0 ;
  end
  else if(reg_btn)
  begin
	if(counter2<=6&&counter2>=0)
	begin
		G1_time_out = 8'd255 ;
		R1_time_out = 8'd0 ;
		B1_time_out = 8'd0 ;
		G2_time_out = 8'd0 ;
		R2_time_out = 8'd255 ;
		B2_time_out = 8'd0 ;
	end	
	else if(counter2==7)
	begin
		G1_time_out = 8'd255 ;
		R1_time_out = 8'd255 ;
		B1_time_out = 8'd0 ;
		G2_time_out = 8'd0 ;
		R2_time_out = 8'd255 ;
		B2_time_out = 8'd0 ;
	end
	else if (counter2<15&&counter2>=8)
	begin
		G1_time_out = 8'd0 ;
		R1_time_out = 8'd255 ;
		B1_time_out = 8'd0 ;
		G2_time_out = 8'd255 ;
		R2_time_out = 8'd0 ;
		B2_time_out = 8'd0 ;
		
	end
	else
	begin
	    G1_time_out = 8'd0 ;
		R1_time_out = 8'd255 ;
		B1_time_out = 8'd0 ;
		G2_time_out = 8'd255 ;
		R2_time_out = 8'd255 ;
		B2_time_out = 8'd0 ;
	end
	end
	else
	 begin
	if(counter1<15&&counter1>=0)
	begin
		G1_time_out = 8'd255 ;
		R1_time_out = 8'd0 ;
		B1_time_out = 8'd0 ;
		G2_time_out = 8'd0 ;
		R2_time_out = 8'd255 ;
		B2_time_out = 8'd0 ;
	end	
	else if(counter1==15)
	begin
		G1_time_out = 8'd255 ;
		R1_time_out = 8'd255 ;
		B1_time_out = 8'd0 ;
		G2_time_out = 8'd0 ;
		R2_time_out = 8'd255 ;
		B2_time_out = 8'd0 ;
	end
	else if (counter1<=30&&counter1>15)
	begin
		G1_time_out = 8'd0 ;
		R1_time_out = 8'd255 ;
		B1_time_out = 8'd0 ;
		G2_time_out = 8'd255 ;
		R2_time_out = 8'd0 ;
		B2_time_out = 8'd0 ;
		
	end
	else
	begin
	    G1_time_out = 8'd0 ;
		R1_time_out = 8'd255 ;
		B1_time_out = 8'd0 ;
		G2_time_out = 8'd255 ;
		R2_time_out = 8'd255 ;
		B2_time_out = 8'd0 ;
	end	
	end
  end
  
  
  

endmodule // Decoder
