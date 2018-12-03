module sort2(
    input wire clk,
    input [31:0]data_in,
    input wire ope_busy,
    input wire operation_write,
    input wire operation_read,
    output reg [31:0]data_out,
    output reg write_en = 0,
    output reg read_en = 0 
);

reg [1:0]cstate = 2'd0;
reg [1:0]nstate = 2'd0;
parameter Initial = 2'd0,
          LoopIn  = 2'd1,
          LoopOut_write = 2'd2,
          LoopOut_wait_ack = 2'd3;

reg [31:0] swap = 32'd0;
reg inserted; 
reg [31:0] sorted_data [31:0];
reg [31:0] cursorIndex = 32'd0;
reg [31:0] length = 32'd0;

always@(posedge clk)
begin
    cstate<=nstate;
end

/*Data operation*/
always @(posedge clk) begin
    case(cstate)
        Initial:begin
            cursorIndex <= 32'd0;
            inserted <= 1'b0;
            swap <= 32'd0;  
        end
        LoopIn:begin
        cursorIndex<=cursorIndex+1;
            if(!ope_busy)begin
                if (cursorIndex == length) begin
                    sorted_data[cursorIndex] <= (inserted)?swap:data_in;
                    inserted <= 1'b0;
                    length <= length + 32'd1;
                end
                else if (data_in < sorted_data[cursorIndex]) begin
                    sorted_data[cursorIndex] <= (inserted)?swap:data_in;
                    inserted <=1'b1;
                    swap <= sorted_data[cursorIndex];
                end
                else begin end
            end
            else begin end
        end
        LoopOut_write:begin
            data_out <= sorted_data[cursorIndex];
            cursorIndex <= cursorIndex + 1;
        end
    endcase
end

/*State Control*/
always@(*)begin
    case(cstate)
        Initial:begin  
        write_en = 1;
        read_en = 1;
            if(operation_write && ope_busy == 1)begin
                nstate = LoopIn;
            end
            else if(operation_read)begin
                nstate = LoopOut_write;
            end
            else begin
                nstate = Initial;
            end
        end
        LoopIn:begin
            write_en = 0;
            read_en = 0;
            if(cursorIndex == length)begin
                nstate = Initial;
            end
            else begin
                nstate = LoopIn;
            end
        end
        LoopOut_write:begin
            read_en = 0;
            if(cursorIndex == length-1)begin
                nstate = Initial;
            end
            else begin
                nstate = LoopOut_wait_ack;
            end
        end
        LoopOut_wait_ack:begin
            read_en = 1;
            if(!ope_busy)begin
                nstate = LoopOut_write;
            end
            else begin
                nstate = LoopOut_wait_ack;
            end
        end
    endcase
end
endmodule