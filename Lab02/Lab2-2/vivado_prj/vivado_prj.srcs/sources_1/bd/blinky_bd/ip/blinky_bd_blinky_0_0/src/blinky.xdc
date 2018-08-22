set_input_delay 0.1 [get_ports {sw[1] sw[0] rst}];
set_output_delay 0.1 [get_ports {led[3] led[2] led[1] led[0]}];
set_max_delay 0.1 -from [get_ports {sw[1] sw[0] rst}] -to [get_ports {led[3] led[2] led[1] led[0]}];
