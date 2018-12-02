create_clock -period 8.000 -name sys_clk_pin -waveform {0.000 4.000} -add [get_ports clk]
create_clock -period 8.000 -name sys_clk_pin -waveform {0.000 4.000} -add [get_ports s00_axi_aclk]
create_generated_clock -divide_by 125000000 -source [get_ports clk] [get_ports clk_div];