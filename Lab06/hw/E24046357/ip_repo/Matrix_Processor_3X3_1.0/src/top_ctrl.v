`timescale 1ns / 1ps

`define RESET       3'd0
`define WAIT        3'd1
`define WRITE       3'd2
`define SEND        3'd3
`define COMP        3'd4
`define SEND_B      3'd5
`define READ        3'd6
`define DONE        3'd7    

`define C_WRITE     8'd1
`define C_SEND      8'd2
`define C_COMP      8'd3
`define C_SEND_B    8'd4
`define C_READ      8'd5


(* keep_hierarchy = "yes" *)module top_ctrl(
    input clk ,
    input rst_n ,
    input cmd_valid ,
    input [7:0] cmd ,  
    input [7:0] d_in ,
    input [7:0] addr ,
    output cmd_done ,
    output reg [7:0] data_out ,
    output reg [3:0] state
    );
    
    reg mem_w_enable   ;
    reg pro_cmd_valid  ;
    reg pro_d_in_valid ;
    reg [1:0] mux_sel_0;
    reg       mux_sel_1;
    reg       mux_sel_2;
    wire [7:0] mem_d_in     ;
    wire [7:0] mem_d_out    ;
    reg [7:0] pro_cmd_in   ;
    reg [7:0] pro_d_in     ;
    wire [7:0] pro_d_out    ;
    wire [7:0] mem_addr_in  ;
    
    reg [7:0] ari_element   ;   //1 ADD 2 SUB 3 MUL 4 TRA 5 DEL
    reg [7:0] pro_addr ;
    reg [7:0] mem_addr ;   
    //reg [3:0] state ;
    reg [3:0] n_state ;
    
    Matrix_Processor matrix_proi(
        .clk(clk),
        .rst(~rst_n),
        .d_in(pro_d_in),
        .d_in_valid(pro_d_in_valid),
        .cmd_in(pro_cmd_in),
        .cmd_valid(pro_cmd_valid),
        .addr(pro_addr),
        .d_out(pro_d_out)
        );
        
    memory8X256 mem_i(
        .clk(clk),
        .write_enable(mem_w_enable),
        .d_in(mem_d_in),
        .addr(mem_addr_in),
        .d_out(mem_d_out)
        );
    /*
    assign mem_d_out =  (mux_sel_0 == 2'd0) ?   pro_cmd_in      :
                        (mux_sel_0 == 2'd1) ?   pro_d_in        :
                        (mux_sel_0 == 2'd2) ?   data_out       :
                                                    data_out   ;*/
    always@(*)begin
        case(mux_sel_0)
        2'd0:begin
            pro_cmd_in  = mem_d_out ;
            pro_d_in    = 8'd0      ;
            data_out    = 8'd0      ;
        end
        2'd1:begin
            pro_cmd_in  = 8'd0      ;
            pro_d_in    = mem_d_out ;
            data_out    = 8'd0      ;
        end
        2'd2:begin
            pro_cmd_in  = 8'd0      ;
            pro_d_in    = 8'd0      ;
            data_out    = mem_d_out ;
        end
        default:begin
            pro_cmd_in  = 8'd0      ;
            pro_d_in    = 8'd0      ;
            data_out    = 8'd0      ;        
        end
        endcase
    end
                                                
    assign mem_addr_in = (mux_sel_1 ==  1'b0) ? addr : mem_addr ;
    
    assign mem_d_in = (mux_sel_2 == 1'b0 ) ? d_in : pro_d_out ;
    
    assign cmd_done = (state == `DONE) ? 1'd1 : 1'd0    ;
    
    always@(negedge clk or negedge rst_n)begin
        if(!rst_n)begin
            state <= `RESET ;
        end
        else begin 
            state <= n_state ;
        end
        
    end
    
    always@(negedge clk or negedge rst_n)begin
        if(!rst_n)begin
            pro_addr <= 8'd0 ;
            mem_addr <= 8'd0 ;
        end
        else begin
            case(state)
            `WRITE:begin
                if(addr==8'd0)  ari_element <= d_in ;
            end
            `SEND:begin
                pro_addr <= mem_addr - 1 ;
                mem_addr <= mem_addr + 1 ;
            end
            `SEND_B:begin
                pro_addr <= pro_addr + 1 ;
                mem_addr <= pro_addr + 19 ;
            end
            endcase
        end
    end
    
    always@(*)begin
        case(state)
        `RESET:begin
            mem_w_enable    = 1'd0 ;
            pro_cmd_valid   = 1'd0 ;
            pro_d_in_valid  = 1'd0 ;
            mux_sel_0       = 2'd0 ;
            mux_sel_1       = 1'd0 ;
            mux_sel_2       = 1'd0 ;
            //cmd_done        = 1'd0 ;0 ;
            if(cmd_valid==1'b1)begin
                case(cmd)
                `C_WRITE    : n_state = `WRITE ;
                `C_SEND     : n_state = `SEND   ;
                `C_COMP     : n_state = `COMP   ;
                `C_SEND_B   : n_state = `SEND_B ;
                `C_READ     : n_state = `READ   ;
                default        : n_state = `WAIT   ;
                endcase
            end
            else n_state = `RESET ;  
        end
        `WAIT:begin
            mem_w_enable    = 1'd0 ;
            pro_cmd_valid   = 1'd0 ;
            pro_d_in_valid  = 1'd0 ;
            mux_sel_0       = 2'd0 ;
            mux_sel_1       = 1'd0 ;
            mux_sel_2       = 1'd0 ;
            //cmd_done        = 1'd0 ;0 ;
            if(cmd_valid==1'b1)begin
                case(cmd)
                `C_WRITE    : n_state = `WRITE ;
                `C_SEND     : n_state = `SEND   ;
                `C_COMP     : n_state = `COMP   ;
                `C_SEND_B   : n_state = `SEND_B ;
                `C_READ     : n_state = `READ   ;
                default        : n_state = `WAIT    ;
                endcase
            end
            else n_state = `WAIT ;
        end
        `WRITE:begin
            mem_w_enable    = 1'd1 ;
            pro_cmd_valid   = 1'd0 ;
            pro_d_in_valid  = 1'd0 ;
            mux_sel_0       = 2'd0 ;
            mux_sel_1       = 1'd0 ;
            mux_sel_2       = 1'd0 ;
            //cmd_done        = 1'd0 ;0 ;
            n_state         = `DONE;        
        end
        `SEND:begin
            mem_w_enable    = 1'd0 ;
            if(mem_addr==8'd0)begin
                pro_cmd_valid   = 1'd1 ;
                pro_d_in_valid  = 1'd0 ;
                mux_sel_0       = 2'd0 ;
            end
            else begin
                pro_cmd_valid   = 1'd0 ;
                pro_d_in_valid  = 1'd1 ;
                mux_sel_0       = 2'd1 ;
            end
            mux_sel_1       = 1'd1 ;
            mux_sel_2       = 1'd0 ;
            //cmd_done        = 1'd0 ;0 ;
            case(ari_element)
            8'd1:begin
                if(mem_addr==8'd18) n_state = `DONE ;
                else    n_state = `SEND ;
            end
            8'd2:begin
                if(mem_addr==8'd18) n_state = `DONE ;
                else    n_state = `SEND ;                
            end
            8'd3:begin
                if(mem_addr==8'd18) n_state = `DONE ;
                else    n_state = `SEND ;
            end
            8'd4:begin
                if(mem_addr==8'd9) n_state = `DONE ;
                else    n_state = `SEND ;
            end
            8'd5:begin
                if(mem_addr==8'd9) n_state = `DONE ;
                else    n_state = `SEND ;
            end
            default: n_state = `SEND  ; 
            endcase           
        end
        `COMP:begin
            mem_w_enable    = 1'd0 ;
            pro_cmd_valid   = 1'd0 ;
            pro_d_in_valid  = 1'd0 ;
            mux_sel_0       = 2'd0 ;
            mux_sel_1       = 1'd0 ;
            mux_sel_2       = 1'd0 ;
            //cmd_done        = 1'd0 ;0 ;
            n_state         = `DONE;
        end
        `SEND_B:begin
            mem_w_enable    = 1'd0 ;
            pro_cmd_valid   = 1'd0 ;
            pro_d_in_valid  = 1'd0 ;
            mux_sel_0       = 2'd0 ;
            mux_sel_1       = 1'd1 ;
            mux_sel_2       = 1'd1 ;
            //cmd_done        = 1'd0 ;0 ;
            case(ari_element)
            8'd1:begin
                if(mem_addr==8'd27) n_state = `DONE ;
                else    n_state = `SEND_B ;
            end
            8'd2:begin
                if(mem_addr==8'd27) n_state = `DONE ;
                else    n_state = `SEND_B ;                
            end
            8'd3:begin
                if(mem_addr==8'd27) n_state = `DONE ;
                else    n_state = `SEND_B ;
            end
            8'd4:begin
                if(mem_addr==8'd27) n_state = `DONE ;
                else    n_state = `SEND_B ;
            end
            8'd5:begin
                if(mem_addr==8'd19) n_state = `DONE ;
                else    n_state = `SEND_B ;
            end
            default: n_state = `SEND_B  ; 
            endcase            
        end
        `READ:begin
            mem_w_enable    = 1'd0 ;
            pro_cmd_valid   = 1'd0 ;
            pro_d_in_valid  = 1'd0 ;
            mux_sel_0       = 2'd2 ;
            mux_sel_1       = 1'd0 ;
            mux_sel_2       = 1'd0 ;
            //cmd_done        = 1'd0 ;0 ;
            n_state         = `DONE;
        end
        `DONE:begin
            mem_w_enable    = 1'd0 ;
            pro_cmd_valid   = 1'd0 ;
            pro_d_in_valid  = 1'd0 ;
            mux_sel_0       = 2'd0 ;
            mux_sel_1       = 1'd0 ;
            mux_sel_2       = 1'd0 ;
            //cmd_done        = 1'd0 ;1 ;
            n_state         = `RESET;
        end
        default:begin
            mem_w_enable    = 1'd0 ;
            pro_cmd_valid   = 1'd0 ;
            pro_d_in_valid  = 1'd0 ;
            mux_sel_0       = 2'd0 ;
            mux_sel_1       = 1'd0 ;
            mux_sel_2       = 1'd0 ;
            //////cmd_done        = 1'd0 ;0 ;;
            n_state         = `RESET;
        end        
        endcase
    end
    
endmodule
