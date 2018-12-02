vlib work
vlib activehdl

vlib activehdl/xilinx_vip
vlib activehdl/xil_defaultlib
vlib activehdl/xpm
vlib activehdl/axi_infrastructure_v1_1_0
vlib activehdl/smartconnect_v1_0
vlib activehdl/axi_protocol_checker_v2_0_2
vlib activehdl/axi_vip_v1_1_2
vlib activehdl/processing_system7_vip_v1_0_4
vlib activehdl/lib_cdc_v1_0_2
vlib activehdl/proc_sys_reset_v5_0_12
vlib activehdl/generic_baseblocks_v2_1_0
vlib activehdl/axi_register_slice_v2_1_16
vlib activehdl/fifo_generator_v13_2_2
vlib activehdl/axi_data_fifo_v2_1_15
vlib activehdl/axi_crossbar_v2_1_17
vlib activehdl/axi_protocol_converter_v2_1_16

vmap xilinx_vip activehdl/xilinx_vip
vmap xil_defaultlib activehdl/xil_defaultlib
vmap xpm activehdl/xpm
vmap axi_infrastructure_v1_1_0 activehdl/axi_infrastructure_v1_1_0
vmap smartconnect_v1_0 activehdl/smartconnect_v1_0
vmap axi_protocol_checker_v2_0_2 activehdl/axi_protocol_checker_v2_0_2
vmap axi_vip_v1_1_2 activehdl/axi_vip_v1_1_2
vmap processing_system7_vip_v1_0_4 activehdl/processing_system7_vip_v1_0_4
vmap lib_cdc_v1_0_2 activehdl/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_12 activehdl/proc_sys_reset_v5_0_12
vmap generic_baseblocks_v2_1_0 activehdl/generic_baseblocks_v2_1_0
vmap axi_register_slice_v2_1_16 activehdl/axi_register_slice_v2_1_16
vmap fifo_generator_v13_2_2 activehdl/fifo_generator_v13_2_2
vmap axi_data_fifo_v2_1_15 activehdl/axi_data_fifo_v2_1_15
vmap axi_crossbar_v2_1_17 activehdl/axi_crossbar_v2_1_17
vmap axi_protocol_converter_v2_1_16 activehdl/axi_protocol_converter_v2_1_16

vlog -work xilinx_vip  -sv2k12 "+incdir+../../../../Lab5_HW_v2.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Lab5_HW_v2.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../Lab5_HW_v2.srcs/sources_1/bd/design_1/ipshared/b193/hdl" "+incdir+D:/Xilinx/Vivado/2018.1/data/xilinx_vip/include" "+incdir+D:/Xilinx/Vivado/2018.1/data/xilinx_vip/include" \
"D:/Xilinx/Vivado/2018.1/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"D:/Xilinx/Vivado/2018.1/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"D:/Xilinx/Vivado/2018.1/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"D:/Xilinx/Vivado/2018.1/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"D:/Xilinx/Vivado/2018.1/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"D:/Xilinx/Vivado/2018.1/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"D:/Xilinx/Vivado/2018.1/data/xilinx_vip/hdl/axi_vip_if.sv" \
"D:/Xilinx/Vivado/2018.1/data/xilinx_vip/hdl/clk_vip_if.sv" \
"D:/Xilinx/Vivado/2018.1/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../Lab5_HW_v2.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Lab5_HW_v2.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../Lab5_HW_v2.srcs/sources_1/bd/design_1/ipshared/b193/hdl" "+incdir+D:/Xilinx/Vivado/2018.1/data/xilinx_vip/include" "+incdir+../../../../Lab5_HW_v2.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Lab5_HW_v2.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../Lab5_HW_v2.srcs/sources_1/bd/design_1/ipshared/b193/hdl" "+incdir+D:/Xilinx/Vivado/2018.1/data/xilinx_vip/include" \
"D:/Xilinx/Vivado/2018.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"D:/Xilinx/Vivado/2018.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"D:/Xilinx/Vivado/2018.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"D:/Xilinx/Vivado/2018.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Lab5_HW_v2.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Lab5_HW_v2.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../Lab5_HW_v2.srcs/sources_1/bd/design_1/ipshared/b193/hdl" "+incdir+D:/Xilinx/Vivado/2018.1/data/xilinx_vip/include" "+incdir+../../../../Lab5_HW_v2.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Lab5_HW_v2.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../Lab5_HW_v2.srcs/sources_1/bd/design_1/ipshared/b193/hdl" "+incdir+D:/Xilinx/Vivado/2018.1/data/xilinx_vip/include" \
"../../../bd/design_1/ipshared/6e4c/hdl/Sorting_v2_0_S00_AXI.v" \
"../../../bd/design_1/ipshared/6e4c/hdl/Sorting_v2_0.v" \
"../../../bd/design_1/ipshared/6e4c/src/Sorting.v" \
"../../../bd/design_1/ip/design_1_Sorting_0_0/sim/design_1_Sorting_0_0.v" \
"../../../bd/design_1/ipshared/4b77/hdl/Arithmetic_v1_0_S00_AXI.v" \
"../../../bd/design_1/ipshared/4b77/hdl/Arithmetic_v1_0.v" \
"../../../bd/design_1/Lab5_HW/arithmetic.v" \
"../../../bd/design_1/ip/design_1_Arithmetic_0_0/sim/design_1_Arithmetic_0_0.v" \
"../../../bd/design_1/ipshared/5a72/hdl/ParityGenerator_v1_0_S00_AXI.v" \
"../../../bd/design_1/Lab5_HW/ParityGen.v" \
"../../../bd/design_1/ipshared/5a72/hdl/ParityGenerator_v1_0.v" \
"../../../bd/design_1/ip/design_1_ParityGenerator_0_0/sim/design_1_ParityGenerator_0_0.v" \
"../../../bd/design_1/ipshared/74e0/hdl/PWM_ctrl_v1_0_S00_AXI.v" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../Lab5_HW_v2.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Lab5_HW_v2.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../Lab5_HW_v2.srcs/sources_1/bd/design_1/ipshared/b193/hdl" "+incdir+D:/Xilinx/Vivado/2018.1/data/xilinx_vip/include" "+incdir+../../../../Lab5_HW_v2.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Lab5_HW_v2.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../Lab5_HW_v2.srcs/sources_1/bd/design_1/ipshared/b193/hdl" "+incdir+D:/Xilinx/Vivado/2018.1/data/xilinx_vip/include" \
"../../../bd/design_1/ipshared/74e0/src/Decoder.sv" \
"../../../bd/design_1/ipshared/74e0/src/RGB_LED.sv" \
"../../../bd/design_1/ipshared/74e0/src/clk_div.sv" \
"../../../bd/design_1/ipshared/74e0/src/top.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Lab5_HW_v2.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Lab5_HW_v2.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../Lab5_HW_v2.srcs/sources_1/bd/design_1/ipshared/b193/hdl" "+incdir+D:/Xilinx/Vivado/2018.1/data/xilinx_vip/include" "+incdir+../../../../Lab5_HW_v2.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Lab5_HW_v2.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../Lab5_HW_v2.srcs/sources_1/bd/design_1/ipshared/b193/hdl" "+incdir+D:/Xilinx/Vivado/2018.1/data/xilinx_vip/include" \
"../../../bd/design_1/ipshared/74e0/hdl/PWM_ctrl_v1_0.v" \
"../../../bd/design_1/ip/design_1_PWM_ctrl_0_0/sim/design_1_PWM_ctrl_0_0.v" \
"../../../bd/design_1/ipshared/00cb/hdl/djb2_v3_0_S00_AXI.v" \
"../../../bd/design_1/ipshared/00cb/hdl/djb2_v3_0.v" \
"../../../bd/design_1/ipshared/00cb/src/djb2.v" \
"../../../bd/design_1/ip/design_1_djb2_0_0/sim/design_1_djb2_0_0.v" \

vlog -work axi_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../Lab5_HW_v2.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Lab5_HW_v2.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../Lab5_HW_v2.srcs/sources_1/bd/design_1/ipshared/b193/hdl" "+incdir+D:/Xilinx/Vivado/2018.1/data/xilinx_vip/include" "+incdir+../../../../Lab5_HW_v2.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Lab5_HW_v2.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../Lab5_HW_v2.srcs/sources_1/bd/design_1/ipshared/b193/hdl" "+incdir+D:/Xilinx/Vivado/2018.1/data/xilinx_vip/include" \
"../../../../Lab5_HW_v2.srcs/sources_1/bd/design_1/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../Lab5_HW_v2.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Lab5_HW_v2.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../Lab5_HW_v2.srcs/sources_1/bd/design_1/ipshared/b193/hdl" "+incdir+D:/Xilinx/Vivado/2018.1/data/xilinx_vip/include" "+incdir+../../../../Lab5_HW_v2.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Lab5_HW_v2.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../Lab5_HW_v2.srcs/sources_1/bd/design_1/ipshared/b193/hdl" "+incdir+D:/Xilinx/Vivado/2018.1/data/xilinx_vip/include" \
"../../../../Lab5_HW_v2.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/sc_util_v1_0_vl_rfs.sv" \

vlog -work axi_protocol_checker_v2_0_2  -sv2k12 "+incdir+../../../../Lab5_HW_v2.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Lab5_HW_v2.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../Lab5_HW_v2.srcs/sources_1/bd/design_1/ipshared/b193/hdl" "+incdir+D:/Xilinx/Vivado/2018.1/data/xilinx_vip/include" "+incdir+../../../../Lab5_HW_v2.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Lab5_HW_v2.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../Lab5_HW_v2.srcs/sources_1/bd/design_1/ipshared/b193/hdl" "+incdir+D:/Xilinx/Vivado/2018.1/data/xilinx_vip/include" \
"../../../../Lab5_HW_v2.srcs/sources_1/bd/design_1/ipshared/3755/hdl/axi_protocol_checker_v2_0_vl_rfs.sv" \

vlog -work axi_vip_v1_1_2  -sv2k12 "+incdir+../../../../Lab5_HW_v2.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Lab5_HW_v2.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../Lab5_HW_v2.srcs/sources_1/bd/design_1/ipshared/b193/hdl" "+incdir+D:/Xilinx/Vivado/2018.1/data/xilinx_vip/include" "+incdir+../../../../Lab5_HW_v2.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Lab5_HW_v2.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../Lab5_HW_v2.srcs/sources_1/bd/design_1/ipshared/b193/hdl" "+incdir+D:/Xilinx/Vivado/2018.1/data/xilinx_vip/include" \
"../../../../Lab5_HW_v2.srcs/sources_1/bd/design_1/ipshared/725c/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_4  -sv2k12 "+incdir+../../../../Lab5_HW_v2.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Lab5_HW_v2.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../Lab5_HW_v2.srcs/sources_1/bd/design_1/ipshared/b193/hdl" "+incdir+D:/Xilinx/Vivado/2018.1/data/xilinx_vip/include" "+incdir+../../../../Lab5_HW_v2.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Lab5_HW_v2.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../Lab5_HW_v2.srcs/sources_1/bd/design_1/ipshared/b193/hdl" "+incdir+D:/Xilinx/Vivado/2018.1/data/xilinx_vip/include" \
"../../../../Lab5_HW_v2.srcs/sources_1/bd/design_1/ipshared/b193/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Lab5_HW_v2.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Lab5_HW_v2.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../Lab5_HW_v2.srcs/sources_1/bd/design_1/ipshared/b193/hdl" "+incdir+D:/Xilinx/Vivado/2018.1/data/xilinx_vip/include" "+incdir+../../../../Lab5_HW_v2.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Lab5_HW_v2.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../Lab5_HW_v2.srcs/sources_1/bd/design_1/ipshared/b193/hdl" "+incdir+D:/Xilinx/Vivado/2018.1/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_processing_system7_0_0/sim/design_1_processing_system7_0_0.v" \

vcom -work lib_cdc_v1_0_2 -93 \
"../../../../Lab5_HW_v2.srcs/sources_1/bd/design_1/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_12 -93 \
"../../../../Lab5_HW_v2.srcs/sources_1/bd/design_1/ipshared/f86a/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_1/ip/design_1_rst_ps7_0_100M_0/sim/design_1_rst_ps7_0_100M_0.vhd" \

vlog -work generic_baseblocks_v2_1_0  -v2k5 "+incdir+../../../../Lab5_HW_v2.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Lab5_HW_v2.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../Lab5_HW_v2.srcs/sources_1/bd/design_1/ipshared/b193/hdl" "+incdir+D:/Xilinx/Vivado/2018.1/data/xilinx_vip/include" "+incdir+../../../../Lab5_HW_v2.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Lab5_HW_v2.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../Lab5_HW_v2.srcs/sources_1/bd/design_1/ipshared/b193/hdl" "+incdir+D:/Xilinx/Vivado/2018.1/data/xilinx_vip/include" \
"../../../../Lab5_HW_v2.srcs/sources_1/bd/design_1/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_16  -v2k5 "+incdir+../../../../Lab5_HW_v2.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Lab5_HW_v2.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../Lab5_HW_v2.srcs/sources_1/bd/design_1/ipshared/b193/hdl" "+incdir+D:/Xilinx/Vivado/2018.1/data/xilinx_vip/include" "+incdir+../../../../Lab5_HW_v2.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Lab5_HW_v2.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../Lab5_HW_v2.srcs/sources_1/bd/design_1/ipshared/b193/hdl" "+incdir+D:/Xilinx/Vivado/2018.1/data/xilinx_vip/include" \
"../../../../Lab5_HW_v2.srcs/sources_1/bd/design_1/ipshared/0cde/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_2_2  -v2k5 "+incdir+../../../../Lab5_HW_v2.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Lab5_HW_v2.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../Lab5_HW_v2.srcs/sources_1/bd/design_1/ipshared/b193/hdl" "+incdir+D:/Xilinx/Vivado/2018.1/data/xilinx_vip/include" "+incdir+../../../../Lab5_HW_v2.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Lab5_HW_v2.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../Lab5_HW_v2.srcs/sources_1/bd/design_1/ipshared/b193/hdl" "+incdir+D:/Xilinx/Vivado/2018.1/data/xilinx_vip/include" \
"../../../../Lab5_HW_v2.srcs/sources_1/bd/design_1/ipshared/7aff/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_2 -93 \
"../../../../Lab5_HW_v2.srcs/sources_1/bd/design_1/ipshared/7aff/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_2  -v2k5 "+incdir+../../../../Lab5_HW_v2.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Lab5_HW_v2.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../Lab5_HW_v2.srcs/sources_1/bd/design_1/ipshared/b193/hdl" "+incdir+D:/Xilinx/Vivado/2018.1/data/xilinx_vip/include" "+incdir+../../../../Lab5_HW_v2.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Lab5_HW_v2.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../Lab5_HW_v2.srcs/sources_1/bd/design_1/ipshared/b193/hdl" "+incdir+D:/Xilinx/Vivado/2018.1/data/xilinx_vip/include" \
"../../../../Lab5_HW_v2.srcs/sources_1/bd/design_1/ipshared/7aff/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work axi_data_fifo_v2_1_15  -v2k5 "+incdir+../../../../Lab5_HW_v2.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Lab5_HW_v2.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../Lab5_HW_v2.srcs/sources_1/bd/design_1/ipshared/b193/hdl" "+incdir+D:/Xilinx/Vivado/2018.1/data/xilinx_vip/include" "+incdir+../../../../Lab5_HW_v2.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Lab5_HW_v2.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../Lab5_HW_v2.srcs/sources_1/bd/design_1/ipshared/b193/hdl" "+incdir+D:/Xilinx/Vivado/2018.1/data/xilinx_vip/include" \
"../../../../Lab5_HW_v2.srcs/sources_1/bd/design_1/ipshared/d114/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_17  -v2k5 "+incdir+../../../../Lab5_HW_v2.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Lab5_HW_v2.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../Lab5_HW_v2.srcs/sources_1/bd/design_1/ipshared/b193/hdl" "+incdir+D:/Xilinx/Vivado/2018.1/data/xilinx_vip/include" "+incdir+../../../../Lab5_HW_v2.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Lab5_HW_v2.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../Lab5_HW_v2.srcs/sources_1/bd/design_1/ipshared/b193/hdl" "+incdir+D:/Xilinx/Vivado/2018.1/data/xilinx_vip/include" \
"../../../../Lab5_HW_v2.srcs/sources_1/bd/design_1/ipshared/d293/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Lab5_HW_v2.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Lab5_HW_v2.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../Lab5_HW_v2.srcs/sources_1/bd/design_1/ipshared/b193/hdl" "+incdir+D:/Xilinx/Vivado/2018.1/data/xilinx_vip/include" "+incdir+../../../../Lab5_HW_v2.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Lab5_HW_v2.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../Lab5_HW_v2.srcs/sources_1/bd/design_1/ipshared/b193/hdl" "+incdir+D:/Xilinx/Vivado/2018.1/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_xbar_0/sim/design_1_xbar_0.v" \
"../../../bd/design_1/sim/design_1.v" \

vlog -work axi_protocol_converter_v2_1_16  -v2k5 "+incdir+../../../../Lab5_HW_v2.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Lab5_HW_v2.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../Lab5_HW_v2.srcs/sources_1/bd/design_1/ipshared/b193/hdl" "+incdir+D:/Xilinx/Vivado/2018.1/data/xilinx_vip/include" "+incdir+../../../../Lab5_HW_v2.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Lab5_HW_v2.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../Lab5_HW_v2.srcs/sources_1/bd/design_1/ipshared/b193/hdl" "+incdir+D:/Xilinx/Vivado/2018.1/data/xilinx_vip/include" \
"../../../../Lab5_HW_v2.srcs/sources_1/bd/design_1/ipshared/1229/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Lab5_HW_v2.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Lab5_HW_v2.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../Lab5_HW_v2.srcs/sources_1/bd/design_1/ipshared/b193/hdl" "+incdir+D:/Xilinx/Vivado/2018.1/data/xilinx_vip/include" "+incdir+../../../../Lab5_HW_v2.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Lab5_HW_v2.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../Lab5_HW_v2.srcs/sources_1/bd/design_1/ipshared/b193/hdl" "+incdir+D:/Xilinx/Vivado/2018.1/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_auto_pc_0/sim/design_1_auto_pc_0.v" \

vlog -work xil_defaultlib \
"glbl.v"

