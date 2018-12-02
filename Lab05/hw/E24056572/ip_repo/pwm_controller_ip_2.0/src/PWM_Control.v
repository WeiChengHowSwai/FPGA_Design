//////////////////////////////////////////////////////////////////////////////////
// Engineer: Neko
// 
// Create Date: 2018/11/17 
// Design Name: PWM_Control
// Module Name: PWM_Control
// Project Name: Lab5_pwm_control
// Target Devices: PYNQ-Z2
// Revision 0.01 - File Created
//////////////////////////////////////////////////////////////////////////////////
module PWM_Control(
    input			  clk,
    input    [31:0]    time_in,
    output   [3:0]   pwm_out
);

wire    [7:0]    next_counter_256[3:0];
reg        [7:0]    counter_256[3:0];

assign            next_counter_256[0] = (counter_256[0] == 8'd255)? 8'd0 : counter_256[0] + 8'd1;
assign            pwm_out[0] = (counter_256[0] <= time_in[7:0])? 1'd1 : 1'd0;

assign            next_counter_256[1] = (counter_256[1] == 8'd255)? 8'd0 : counter_256[1] + 8'd1;
assign            pwm_out[1] = (counter_256[1] <= time_in[15:8])? 1'd1 : 1'd0;

assign            next_counter_256[2] = (counter_256[2] == 8'd255)? 8'd0 : counter_256[2] + 8'd1;
assign            pwm_out[2] = (counter_256[2] <= time_in[23:16])? 1'd1 : 1'd0;

assign            next_counter_256[3] = (counter_256[3] == 8'd255)? 8'd0 : counter_256[3] + 8'd1;
assign            pwm_out[3] = (counter_256[3] <= time_in[31:24])? 1'd1 : 1'd0;

always @(posedge clk)
begin
    counter_256[0]    <= next_counter_256[0];
    counter_256[1]    <= next_counter_256[1];
    counter_256[2]    <= next_counter_256[2];
    counter_256[3]    <= next_counter_256[3];
end
endmodule
