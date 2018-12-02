module hash (
    input [3:0] cmd,
    input [27:0] data,
    input clk,
    output reg [31:0] hashed,
    output reg busy
);
/*
cmd :
    3    _ -> Reset bit
    2    _ -> Enable Bit
    1,0 __ -> Data Length-1
*/
    localparam  HASH_INIT = 5381;
    localparam  IDLE    = 'b000,
                CALC_A  = 'b100,
                CALC_B  = 'b101,
                CALC_C  = 'b110,
                CALC_D  = 'b111;

    reg [2:0] state;
    reg cmd_enDelay;
    
    always@(posedge clk) begin
        cmd_enDelay <= cmd[2];
    end
    wire cmd_en = cmd[2] && !cmd_enDelay;

    always@(posedge clk) begin
        if(cmd[3]) begin
            hashed <= HASH_INIT;
            state <= IDLE;
        end
        else begin
            case (state)
                IDLE: begin
                    busy <= 0;
                    if(cmd_en)
                        state <= CALC_A;
                    else
                        state <= IDLE;
                end
                CALC_A: begin
                    hashed <= (hashed << 5) + hashed + data[6:0];
                    busy <= 1;
                    if(cmd[1:0] == state[1:0])
                        state <= IDLE;
                    else
                        state <= CALC_B;
                end
                CALC_B: begin
                    hashed <= (hashed << 5) + hashed + data[13:7];
                    busy <= 1;
                    if(cmd[1:0] == state[1:0])
                        state <= IDLE;
                    else
                        state <= CALC_C;
                end
                CALC_C: begin
                    hashed <= (hashed << 5) + hashed + data[20:14];
                    busy <= 1;
                    if(cmd[1:0] == state[1:0])
                        state <= IDLE;
                    else
                        state <= CALC_D;
                end
                CALC_D: begin
                    hashed <= (hashed << 5) + hashed + data[27:21];
                    busy <= 1;
                    state <= IDLE;
                end
                default: begin
                    hashed <= HASH_INIT;
                    busy <= 0;
                    state <= IDLE;
                end
            endcase
        end
    end
endmodule