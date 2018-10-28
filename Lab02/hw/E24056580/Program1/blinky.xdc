create_generated_clock -name clk_div -divide_by 125000000 -source [get_ports clk] [get_pins D1_i/clk_div_reg/Q];
