module sorting( 
                input clk,
                input rst,
                input read_en,
                input [15:0] data_in,
                output wire write_en,
                output wire [3:0] dataout_1,//dataout_1 is the biggest
                output wire [3:0]dataout_2,
                output wire [3:0]dataout_3,
                output wire [3:0]dataout_4,
                output [1:0] counter
                
                );
         
         reg [3:0] temp1,temp2,temp3,temp4; 
         reg [1:0] counter;      
    
    assign write_en=(counter==3)?1'b1:1'b0;
    assign dataout_1=(counter==3)?temp1:0;
    assign dataout_2=(counter==3)?temp2:0;
    assign dataout_3=(counter==3)?temp3:0;
    assign dataout_4=(counter==3)?temp4:0;
    
    
         
   //use counter to implement FSM
    always@(posedge clk)begin
        if(rst) counter<=0;
        else if(counter==0 && read_en) counter<=counter+1;
        else if(counter==1) counter<=counter+1;
        else if(counter==2) counter<=counter+1;
        //else if(counter==3) counter<=0;
        //else counter<=0;
    end
    
    //bubble sort need 4 cycles
    always@(posedge clk)begin
        case(counter)
            2'd0:begin
                    if(read_en)begin
                        if(data_in[3:0]>data_in[7:4])begin
                            temp1<=data_in[3:0];
                            temp2<=data_in[7:4];
                        end
                        else begin
                            temp1<=data_in[7:4];
                            temp2<=data_in[3:0];
                        end
                    end
                    else begin
                        temp1<=0;
                        temp2<=0;
                    end
                end
            2'd1:begin
                    if(data_in[11:8]>temp1)begin
                        temp1 <= data_in[11:8];
                        temp2 <= temp1;
                        temp3 <= temp2;
                    end
                    else if(data_in[11:8]>temp2)begin
                        temp2 <= data_in[11:8];
                        temp3 <= temp2;
                    end
                    else temp3 <=  data_in[11:8];
                end
            2'd2:begin
                    if(data_in[15:12]>temp1)begin
                        temp1 <= data_in[15:12];
                        temp2 <= temp1;
                        temp3 <= temp2;
                        temp4 <= temp3;
                    end
                   else if(data_in[15:12]>temp2)begin
                        temp2 <= data_in[15:12];
                        temp3 <= temp2;
                        temp4 <= temp3;
                   end
                   else if(data_in[15:12]>temp3)begin
                        temp3 <= data_in[15:12];
                        temp4 <= temp3;
                   end
                   else temp4 <=  data_in[15:12];
                end
            /*2'd3:begin
                        temp1 <= 0;
                        temp2 <= 0;
                        temp3 <= 0;
                        temp4 <= 0;
                end
            default:begin
                        temp1 <= 0;
                        temp2 <= 0;
                        temp3 <= 0;
                        temp4 <= 0;
            end*/
        endcase
    end
    
endmodule
