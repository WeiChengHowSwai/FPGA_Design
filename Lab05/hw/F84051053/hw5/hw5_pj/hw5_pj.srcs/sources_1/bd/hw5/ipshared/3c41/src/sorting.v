module sorting( 
    input clk,
    input [3:0] d_in1,
    input [3:0] d_in2,
    input [3:0] d_in3,
    input [3:0] d_in4,
    output reg [3:0] d_out1,
    output reg [3:0] d_out2,
    output reg [3:0] d_out3,
    output reg [3:0] d_out4
);
         
    reg en_w = 1'b0;
    reg [3:0] t1,t2,t3,t4; 
    reg [1:0] counter;          

    always @(posedge clk)begin
    if(counter==3)begin
       d_out1<=t1;
       d_out2<=t2;
       d_out3<=t3;
       d_out4<=t4;
    end
    end
    
    always@(posedge clk)begin
        if(counter==2'b00)begin 
           counter<=counter+1'b1;
        end
        else if(counter==2'b01)
        begin 
           counter<=counter+1'b1;
        end
        else if(counter==2'b10)
        begin 
           counter<=counter+1'b1;
           en_w = 1'b1;
        end
        else 
        begin
            counter<=2'b0;
            en_w = 1'b0;
        end
    end
    

    always@(posedge clk)begin
      if(!en_w)begin
        case(counter)
          2'd0:begin
            if(d_in1<d_in2)begin
                t1<=d_in1;
                t2<=d_in2;
            end
            else begin
                t1<=d_in2;
                t2<=d_in1;
            end    
          end
          2'd1:begin
            if(d_in3<t1)begin
                t1 <= d_in3;
                t2 <= t1;
                t3 <= t2;
            end
            else if(d_in3<t2)begin
                t2 <= d_in3;
                t3 <= t2;
            end
            else t3 <=  d_in3;
          end
          2'd2:begin
            if(d_in4<t1)begin
                t1 <= d_in4;
                t2 <= t1;
                t3 <= t2;
                t4 <= t3;
            end
            else if(d_in4<t2)begin
                t2 <= d_in4;
                t3 <= t2;
                t4 <= t3;
            end
            else if(d_in4<t3)begin
                t3 <= d_in4;
                t4 <= t3;
            end
            else t4 <= d_in4;
          end
          default:begin //count = 3 
                t1 <= 0;
                t2 <= 0;
                t3 <= 0;
                t4 <= 0;
          end
        endcase //case 
      end //if
      else begin
        t1 <= 0;
        t2 <= 0;
        t3 <= 0;
        t4 <= 0;
      end  
    end
    
endmodule