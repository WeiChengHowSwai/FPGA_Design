# 
# Synthesis run script generated by Vivado
# 

set_param xicom.use_bs_reader 1
create_project -in_memory -part xc7z020clg400-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir /home/ldap-users/shiyong/Downloads/FPGA/Timer/Timer.cache/wt [current_project]
set_property parent.project_path /home/ldap-users/shiyong/Downloads/FPGA/Timer/Timer.xpr [current_project]
set_property XPM_LIBRARIES XPM_CDC [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property board_part tul.com.tw:pynq-z2:part0:1.0 [current_project]
set_property ip_repo_paths /opt/Digilent/vivado-library [current_project]
set_property ip_output_repo /home/ldap-users/shiyong/Downloads/FPGA/Timer/Timer.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
read_verilog -library xil_defaultlib /home/ldap-users/shiyong/Downloads/FPGA/Timer/Timer.srcs/sources_1/bd/design_timer/hdl/design_timer_wrapper.v
add_files /home/ldap-users/shiyong/Downloads/FPGA/Timer/Timer.srcs/sources_1/bd/design_timer/design_timer.bd
set_property used_in_implementation false [get_files -all /home/ldap-users/shiyong/Downloads/FPGA/Timer/Timer.srcs/sources_1/bd/design_timer/ip/design_timer_processing_system7_0_0/design_timer_processing_system7_0_0.xdc]
set_property used_in_implementation false [get_files -all /home/ldap-users/shiyong/Downloads/FPGA/Timer/Timer.srcs/sources_1/bd/design_timer/ip/design_timer_axi_gpio_0_0/design_timer_axi_gpio_0_0_board.xdc]
set_property used_in_implementation false [get_files -all /home/ldap-users/shiyong/Downloads/FPGA/Timer/Timer.srcs/sources_1/bd/design_timer/ip/design_timer_axi_gpio_0_0/design_timer_axi_gpio_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/ldap-users/shiyong/Downloads/FPGA/Timer/Timer.srcs/sources_1/bd/design_timer/ip/design_timer_axi_gpio_0_0/design_timer_axi_gpio_0_0.xdc]
set_property used_in_implementation false [get_files -all /home/ldap-users/shiyong/Downloads/FPGA/Timer/Timer.srcs/sources_1/bd/design_timer/ip/design_timer_rst_ps7_0_100M_1/design_timer_rst_ps7_0_100M_1_board.xdc]
set_property used_in_implementation false [get_files -all /home/ldap-users/shiyong/Downloads/FPGA/Timer/Timer.srcs/sources_1/bd/design_timer/ip/design_timer_rst_ps7_0_100M_1/design_timer_rst_ps7_0_100M_1.xdc]
set_property used_in_implementation false [get_files -all /home/ldap-users/shiyong/Downloads/FPGA/Timer/Timer.srcs/sources_1/bd/design_timer/ip/design_timer_rst_ps7_0_100M_1/design_timer_rst_ps7_0_100M_1_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/ldap-users/shiyong/Downloads/FPGA/Timer/Timer.srcs/sources_1/bd/design_timer/ip/design_timer_axi_timer_0_0/design_timer_axi_timer_0_0.xdc]
set_property used_in_implementation false [get_files -all /home/ldap-users/shiyong/Downloads/FPGA/Timer/Timer.srcs/sources_1/bd/design_timer/ip/design_timer_axi_timer_0_0/design_timer_axi_timer_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/ldap-users/shiyong/Downloads/FPGA/Timer/Timer.srcs/sources_1/bd/design_timer/ip/design_timer_xbar_0/design_timer_xbar_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/ldap-users/shiyong/Downloads/FPGA/Timer/Timer.srcs/sources_1/bd/design_timer/ip/design_timer_axi_gpio_1_0/design_timer_axi_gpio_1_0_board.xdc]
set_property used_in_implementation false [get_files -all /home/ldap-users/shiyong/Downloads/FPGA/Timer/Timer.srcs/sources_1/bd/design_timer/ip/design_timer_axi_gpio_1_0/design_timer_axi_gpio_1_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/ldap-users/shiyong/Downloads/FPGA/Timer/Timer.srcs/sources_1/bd/design_timer/ip/design_timer_axi_gpio_1_0/design_timer_axi_gpio_1_0.xdc]
set_property used_in_implementation false [get_files -all /home/ldap-users/shiyong/Downloads/FPGA/Timer/Timer.srcs/sources_1/bd/design_timer/ip/design_timer_axi_gpio_2_0/design_timer_axi_gpio_2_0_board.xdc]
set_property used_in_implementation false [get_files -all /home/ldap-users/shiyong/Downloads/FPGA/Timer/Timer.srcs/sources_1/bd/design_timer/ip/design_timer_axi_gpio_2_0/design_timer_axi_gpio_2_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/ldap-users/shiyong/Downloads/FPGA/Timer/Timer.srcs/sources_1/bd/design_timer/ip/design_timer_axi_gpio_2_0/design_timer_axi_gpio_2_0.xdc]
set_property used_in_implementation false [get_files -all /home/ldap-users/shiyong/Downloads/FPGA/Timer/Timer.srcs/sources_1/bd/design_timer/ip/design_timer_axi_gpio_3_0/design_timer_axi_gpio_3_0_board.xdc]
set_property used_in_implementation false [get_files -all /home/ldap-users/shiyong/Downloads/FPGA/Timer/Timer.srcs/sources_1/bd/design_timer/ip/design_timer_axi_gpio_3_0/design_timer_axi_gpio_3_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/ldap-users/shiyong/Downloads/FPGA/Timer/Timer.srcs/sources_1/bd/design_timer/ip/design_timer_axi_gpio_3_0/design_timer_axi_gpio_3_0.xdc]
set_property used_in_implementation false [get_files -all /home/ldap-users/shiyong/Downloads/FPGA/Timer/Timer.srcs/sources_1/bd/design_timer/ip/design_timer_auto_pc_0/design_timer_auto_pc_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/ldap-users/shiyong/Downloads/FPGA/Timer/Timer.srcs/sources_1/bd/design_timer/design_timer_ooc.xdc]
set_property is_locked true [get_files /home/ldap-users/shiyong/Downloads/FPGA/Timer/Timer.srcs/sources_1/bd/design_timer/design_timer.bd]

# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
read_xdc /home/ldap-users/shiyong/Downloads/FPGA/pynq-z2_v1.0.xdc
set_property used_in_implementation false [get_files /home/ldap-users/shiyong/Downloads/FPGA/pynq-z2_v1.0.xdc]

read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]

synth_design -top design_timer_wrapper -part xc7z020clg400-1


write_checkpoint -force -noxdef design_timer_wrapper.dcp

catch { report_utilization -file design_timer_wrapper_utilization_synth.rpt -pb design_timer_wrapper_utilization_synth.pb }