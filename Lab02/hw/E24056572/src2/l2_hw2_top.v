module l2_hw2_top(
    input [3:0] btn,
    input [1:0] sw,
    input       clk,
    output reg  [3:0] led ,
    output reg led4_r,led4_g,led4_b
    );
    
    wire rgb4_r;
    wire rgb4_g;
    wire rgb4_b;
    wire led_addr;
    wire [3:0] btn_o;
    reg  [7:0]RGB_time_r = 8'd0; //rgb (7:0)*3
    reg  [7:0]RGB_time_g = 8'd0; //rgb (7:0)*3
    reg  [7:0]RGB_time_b = 8'd0; //rgb (7:0)*3
    reg  ope_en = 0;

     RGB_LED rgb4(
        .clk ( clk ),
        .rst ( btn[0] ),
        .R_time_in ( RGB_time_r ),
        .G_time_in ( RGB_time_g ),
        .B_time_in ( RGB_time_b ),
        .R_out ( rgb4_r ),
        .G_out ( rgb4_g ),
        .B_out ( rgb4_b )
    );
    
    debounce db(
        .clk(clk),
        .btn(btn),
        .btn_o(btn_o)
    );
    /*LED Control*/
    always@(posedge clk)begin
        if(sw == 2'b01) led[2] <= rgb4_r;
        else if(sw == 2'b10) led[2] <= rgb4_g;
        else if(sw == 2'b11) led[2] <= rgb4_b;
        else led[2] <= 0; 
    end
    /*RGB LED Control*/
    always@(posedge clk)begin
        /*reset*/
        if(btn_o == 4'b0001)begin
            RGB_time_r <= 8'b0;
            RGB_time_g <= 8'b0;
            RGB_time_b <= 8'b0;
        end
        /*show*/
        else if(btn_o == 4'b0010 && sw == 2'b00)begin
            led4_r <= rgb4_r;
            led4_g <= rgb4_g;
            led4_b <= rgb4_b;
        end
        else begin
            /*add brightness*/
            if(btn_o == 4'b0100)begin
                ope_en <= 1;
                case(sw)
                    2'b01:begin
                        if(~ope_en)RGB_time_r <= (RGB_time_r >= 200)?8'd250:RGB_time_r + 8'd10;
                        else begin end
                    end
                    2'b10:begin
                        if(~ope_en) RGB_time_g <= (RGB_time_g >= 200)?8'd250:RGB_time_g + 8'd10;
                        else begin end
                    end
                    2'b11:begin
                        if(~ope_en) RGB_time_b <= (RGB_time_b >= 200)?8'd250:RGB_time_b + 8'd10;
                        else begin end
                    end
                    default: begin end 
                endcase
            end
            /*minus brightness*/
            else if(btn_o == 4'b1000)begin
                ope_en <= 1;
                case(sw)
                    2'b01:begin
                        if(~ope_en) RGB_time_r <= (RGB_time_r == 0)?8'd0:RGB_time_r - 8'd10;
                        else begin end
                    end
                    2'b10:begin
                        if(~ope_en) RGB_time_g <= (RGB_time_g == 0)?8'd0:RGB_time_g - 8'd10;
                        else begin end
                    end
                    2'b11:begin
                        if(~ope_en) RGB_time_b <= (RGB_time_b == 0)?8'd0:RGB_time_b - 8'd10;
                        else begin end
                    end 
                    default: begin end 
                endcase
            end
            /*no operation all output set to zero*/
            else begin
                led4_r <= 8'b0;
                led4_g <= 8'b0;
                led4_b <= 8'b0;
                ope_en <= 0;
            end
        end     
    end
endmodule
