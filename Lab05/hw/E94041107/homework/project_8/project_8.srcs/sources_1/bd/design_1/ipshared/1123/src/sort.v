module sort (
  input [2:0] A,
  input [2:0] B,
  input [2:0] C,
  output reg [2:0] max,
  output reg [2:0] mid,
  output reg [2:0] min  
);
  
  always@(*)
  if(A>=B && A>=C)
    begin
     max=A;
     if(B>C)
	 begin
        mid=B;
		min=C;
	 end	
     else
	 begin
        mid=C;
		min=B;
	 end	
	end	
  else if(B>=A && B>=C)
    begin
     max=B;
     if(A>C)
	 begin
        mid=A;
		min=C;
	 end
     else
	 begin
        mid=C;
        min=A;
     end
    end	 
  else
    begin  
     max=C;
     if(A>B)
	 begin
        mid=A;
		min=B;
	 end	
     else
	 begin
	    mid=B;
        min=A;
	 end
	end   
endmodule
