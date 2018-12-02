module parityCheck(
    data,
    parity
);

parameter dataSize = 32'd32;
input  [dataSize-1:0]data;
output parity;


///*
assign parity=(^data);
//*/



/*
reg [dataSize-1:0]databuffer;
reg parity;



always @(posedge clk or data) begin
    if(data!=databuffer)begin
      parity<=1'b0;
      databuffer<=data;
    end
    else
    begin
        if (databuffer) begin
            parity <= ~parity;
            databuffer  <= databuffer & (databuffer - 1'b1);
        end else begin
            parity<=parity;
            databuffer<=databuffer;
        end
    end
    
end
 //*/
endmodule // 