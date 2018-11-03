module	RGB_LED(
	input			clk,		//100MHz
	input			rst,
	input           rst2,
	input           click,
	

	output	reg		R_out,
	output	reg		G_out,
	output	reg		B_out,
	output  reg     led5_r,
	output  reg     led5_g,
	output  reg     led5_b,
	output reg  [3 : 0] led
);


reg     [4:0]   counter;
reg     [3:0]   counter2;
reg   signal;

always @(posedge clk or posedge rst or posedge rst2)
begin
    if(rst)  begin
        counter <= 0;
        counter2 <= 0;
        signal <= 0;
     end
    else  if(rst2==1) begin
    counter<=5'd16;
    counter2<=4'd8;
    end
    else if(click ==1) begin
    signal <= 1;
    counter2 <=0;
    end
    else begin
        counter <= counter +1;
        counter2 <= counter2 + 1;
     end
end

 
always @(*)
begin
    if(signal == 0) begin
     case(counter)
        5'd0 : 
        begin
        led <= 4'b0000; 
        R_out <= 1;
        G_out <= 0;
        B_out <= 0;
        led5_r <= 0;
        led5_g <= 1;
        led5_b <= 0;
        end
        5'd1 : 
        begin
        led <= 4'b0001;
        R_out <= 1;
        G_out <= 0;
        B_out <= 0;
       led5_r <= 0;
       led5_g <= 1;
       led5_b <= 0;
        end
        5'd2 : begin
				led <= 4'b0010;
				R_out <= 1;
                G_out <= 0;
                B_out <= 0;
               led5_r <= 0;
               led5_g <= 1;
               led5_b <= 0;
               end
        5'd3 :  begin
				led <= 4'b0011;
				R_out <= 1;
                G_out <= 0;
                B_out <= 0;
               led5_r <= 0;
               led5_g <= 1;
               led5_b <= 0;
               end
        5'd4 :  begin
				led <= 4'b0100;
				R_out <= 1;
                G_out <= 0;
                B_out <= 0;
               led5_r <= 0;
               led5_g <= 1;
               led5_b <= 0;
               end
        5'd5 :  begin
				led <= 4'b0101;
				R_out <= 1;
                G_out <= 0;
                B_out <= 0;
               led5_r <= 0;
               led5_g <= 1;
               led5_b <= 0;
               end
        5'd6 :   begin
				led <= 4'b0110;
				R_out <= 1;
                G_out <= 0;
                B_out <= 0;
               led5_r <= 0;
               led5_g <= 1;
               led5_b <= 0;
               end
        5'd7 :  begin
				led <= 4'b0111;
				R_out <= 1;
                G_out <= 0;
                B_out <= 0;
               led5_r <= 0;
               led5_g <= 1;
               led5_b <= 0;
               end
        5'd8 :  begin
				led <= 4'b1000;
				R_out <= 1;
                G_out <= 0;
                B_out <= 0;
               led5_r <= 0;
               led5_g <= 1;
               led5_b <= 0;
               end
        5'd9 :  begin
				led <= 4'b1001;
				R_out <= 1;
                G_out <= 0;
                B_out <= 0;
               led5_r <= 0;
               led5_g <= 1;
               led5_b <= 0;
               end
        5'd10 :  begin
				led <= 4'b1010;
				R_out <= 1;
                G_out <= 0;
                B_out <= 0;
               led5_r <= 0;
               led5_g <= 1;
               led5_b <= 0;
               end
        5'd11 :  begin
				led <= 4'b1011;
				R_out <= 1;
                G_out <= 0;
                B_out <= 0;
               led5_r <= 0;
               led5_g <= 1;
               led5_b <= 0;
               end
        5'd12 :  begin
				led <= 4'b1100;
				R_out <= 1;
                G_out <= 0;
                B_out <= 0;
               led5_r <= 0;
               led5_g <= 1;
               led5_b <= 0;
               end
        5'd13 :  begin
				led <= 4'b1101;
				R_out <= 1;
                G_out <= 0;
                B_out <= 0;
               led5_r <= 0;
               led5_g <= 1;
               led5_b <= 0;
               end
        5'd14 :  begin
				led <= 4'b1110;
				R_out <= 1;
                G_out <= 0;
                B_out <= 0;
               led5_r <= 0;
               led5_g <= 1;
               led5_b <= 0;
               end
        5'd15 :
        begin 
        led <= 4'b1111;
        R_out <= 1;
        G_out <= 0;
        B_out <= 0;
        led5_r <= 1;
        led5_g <= 1;
        led5_b <= 0;
        end
        5'd16 : 
        begin
        led <= 4'b0000;
        R_out <= 0;
        G_out <= 1;
        B_out <= 0;
        led5_r <= 1;
        led5_g <= 0;
        led5_b <= 0;
        end
        5'd17 : begin
        led <= 4'b0001;
        R_out <= 0;
        G_out <= 1;
        B_out <= 0;
        led5_r <= 1;
        led5_g <= 0;
        led5_b <= 0;
		end
        5'd18 : begin
        led <= 4'b0010;
        R_out <= 0;
        G_out <= 1;
        B_out <= 0;
        led5_r <= 1;
        led5_g <= 0;
        led5_b <= 0;
		end
        5'd19 : begin
        led <= 4'b0011;
        R_out <= 0;
        G_out <= 1;
        B_out <= 0;
        led5_r <= 1;
        led5_g <= 0;
        led5_b <= 0;
		end
        5'd20 : begin
        led <= 4'b0100;
        R_out <= 0;
        G_out <= 1;
        B_out <= 0;
        led5_r <= 1;
        led5_g <= 0;
        led5_b <= 0;
		end
        5'd21 : begin
        led <= 4'b0101;
        R_out <= 0;
        G_out <= 1;
        B_out <= 0;
        led5_r <= 1;
        led5_g <= 0;
        led5_b <= 0;
		end
        5'd22 : begin
        led <= 4'b0110;
        R_out <= 0;
        G_out <= 1;
        B_out <= 0;
        led5_r <= 1;
        led5_g <= 0;
        led5_b <= 0;
		end
        5'd23 : begin
        led <= 4'b0111;
        R_out <= 0;
        G_out <= 1;
        B_out <= 0;
        led5_r <= 1;
        led5_g <= 0;
        led5_b <= 0;
		end
        5'd24 :begin
        led <= 4'b1000;
        R_out <= 0;
        G_out <= 1;
        B_out <= 0;
        led5_r <= 1;
        led5_g <= 0;
        led5_b <= 0;
		end
        5'd25 : begin
        led <= 4'b1001;
        R_out <= 0;
        G_out <= 1;
        B_out <= 0;
        led5_r <= 1;
        led5_g <= 0;
        led5_b <= 0;
		end
        5'd26 : begin
        led <= 4'b1010;
        R_out <= 0;
        G_out <= 1;
        B_out <= 0;
        led5_r <= 1;
        led5_g <= 0;
        led5_b <= 0;
		end
        5'd27 : begin
        led <= 4'b1011;
        R_out <= 0;
        G_out <= 1;
        B_out <= 0;
        led5_r <= 1;
        led5_g <= 0;
        led5_b <= 0;
		end
        5'd28 : begin
        led <= 4'b1100;
        R_out <= 0;
        G_out <= 1;
        B_out <= 0;
        led5_r <= 1;
        led5_g <= 0;
        led5_b <= 0;
		end
        5'd29 : begin
        led <= 4'b1101;
        R_out <= 0;
        G_out <= 1;
        B_out <= 0;
        led5_r <= 1;
        led5_g <= 0;
        led5_b <= 0;
		end
        5'd30 : begin
        led <= 4'b1110;
        R_out <= 0;
        G_out <= 1;
        B_out <= 0;
        led5_r <= 1;
        led5_g <= 0;
        led5_b <= 0;
		end
        5'd31 :
        begin 
        led <= 4'b1111;
        R_out <= 1;
        G_out <= 1;
        B_out <= 0;
        led5_r <= 1;
        led5_g <= 0;
        led5_b <= 0;
        end
endcase
end
   else begin
   
        case(counter2)
           5'd0 : 
           begin
           led <= 4'b0000; 
           R_out <= 1;
           G_out <= 0;
           B_out <= 0;
           led5_r <= 0;
           led5_g <= 1;
           led5_b <= 0;
           end
           5'd1 : 
           begin
           led <= 4'b0001;
           R_out <= 1;
           G_out <= 0;
           B_out <= 0;
          led5_r <= 0;
          led5_g <= 1;
          led5_b <= 0;
           end
           5'd2 : begin
                   led <= 4'b0010;
                   R_out <= 1;
                   G_out <= 0;
                   B_out <= 0;
                  led5_r <= 0;
                  led5_g <= 1;
                  led5_b <= 0;
                  end
           5'd3 :  begin
                   led <= 4'b0011;
                   R_out <= 1;
                   G_out <= 0;
                   B_out <= 0;
                  led5_r <= 0;
                  led5_g <= 1;
                  led5_b <= 0;
                  end
           5'd4 :  begin
                   led <= 4'b0100;
                   R_out <= 1;
                   G_out <= 0;
                   B_out <= 0;
                  led5_r <= 0;
                  led5_g <= 1;
                  led5_b <= 0;
                  end
           5'd5 :  begin
                   led <= 4'b0101;
                   R_out <= 1;
                   G_out <= 0;
                   B_out <= 0;
                  led5_r <= 0;
                  led5_g <= 1;
                  led5_b <= 0;
                  end
           5'd6 :   begin
                   led <= 4'b0110;
                   R_out <= 1;
                   G_out <= 0;
                   B_out <= 0;
                  led5_r <= 0;
                  led5_g <= 1;
                  led5_b <= 0;
                  end
           5'd7 :  begin
                   led <= 4'b0111;
                   R_out <= 1;
                   G_out <= 0;
                   B_out <= 0;
                  led5_r <= 1;
                  led5_g <= 1;
                  led5_b <= 0;
                  end
           5'd8 :  begin
                   led <= 4'b0000;
                   R_out <= 0;
                   G_out <= 1;
                   B_out <= 0;
                  led5_r <= 1;
                  led5_g <= 0;
                  led5_b <= 0;
                  end
           5'd9 :  begin
                   led <= 4'b0001;
                   R_out <= 0;
                   G_out <= 1;
                   B_out <= 0;
                  led5_r <=1;
                  led5_g <=01;
                  led5_b <= 0;
                  end
           5'd10 :  begin
                   led <= 4'b0010;
                   R_out <= 0;
                   G_out <= 1;
                   B_out <= 0;
                  led5_r <= 1;
                  led5_g <= 0;
                  led5_b <= 0;
                  end
           5'd11 :  begin
                   led <= 4'b0011;
                   R_out <= 0;
                   G_out <= 1;
                   B_out <= 0;
                  led5_r <= 1;
                  led5_g <= 0;
                  led5_b <= 0;
                  end
           5'd12 :  begin
                   led <= 4'b0100;
                   R_out <= 0;
                   G_out <= 1;
                   B_out <= 0;
                  led5_r <= 1;
                  led5_g <= 0;
                  led5_b <= 0;
                  end
           5'd13 :  begin
                   led <= 4'b0101;
                   R_out <= 0;
                   G_out <= 1;
                   B_out <= 0;
                  led5_r <= 1;
                  led5_g <= 0;
                  led5_b <= 0;
                  end
           5'd14 :  begin
                   led <= 4'b0110;
                   R_out <= 0;
                   G_out <= 1;
                   B_out <= 0;
                  led5_r <= 1;
                  led5_g <= 0;
                  led5_b <= 0;
                  end
           5'd15 :
           begin 
           led <= 4'b0111;
           R_out <= 1;
           G_out <= 1;
           B_out <= 0;
           led5_r <= 1;
           led5_g <= 0;
           led5_b <= 0;
           end
           endcase
        end
end



endmodule
