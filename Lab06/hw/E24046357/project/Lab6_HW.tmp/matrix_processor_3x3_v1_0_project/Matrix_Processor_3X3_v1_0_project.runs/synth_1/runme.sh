#!/bin/sh

# 
# Vivado(TM)
# runme.sh: a Vivado-generated Runs Script for UNIX
# Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
# 

echo "This script was generated under a different operating system."
echo "Please update the PATH and LD_LIBRARY_PATH variables below, before executing this script"
exit

if [ -z "$PATH" ]; then
  PATH=D:/Xilinx/SDK/2018.1/bin;D:/Xilinx/Vivado/2018.1/ids_lite/ISE/bin/nt64;D:/Xilinx/Vivado/2018.1/ids_lite/ISE/lib/nt64:D:/Xilinx/Vivado/2018.1/bin
else
  PATH=D:/Xilinx/SDK/2018.1/bin;D:/Xilinx/Vivado/2018.1/ids_lite/ISE/bin/nt64;D:/Xilinx/Vivado/2018.1/ids_lite/ISE/lib/nt64:D:/Xilinx/Vivado/2018.1/bin:$PATH
fi
export PATH

if [ -z "$LD_LIBRARY_PATH" ]; then
  LD_LIBRARY_PATH=
else
  LD_LIBRARY_PATH=:$LD_LIBRARY_PATH
fi
export LD_LIBRARY_PATH

HD_PWD='d:/123ncku/fpga/lab6_hw/lab6_hw.tmp/matrix_processor_3x3_v1_0_project/Matrix_Processor_3X3_v1_0_project.runs/synth_1'
cd "$HD_PWD"

HD_LOG=runme.log
/bin/touch $HD_LOG

ISEStep="./ISEWrap.sh"
EAStep()
{
     $ISEStep $HD_LOG "$@" >> $HD_LOG 2>&1
     if [ $? -ne 0 ]
     then
         exit
     fi
}

EAStep vivado -log Matrix_Processor_3X3_v1_0.vds -m64 -product Vivado -mode batch -messageDb vivado.pb -notrace -source Matrix_Processor_3X3_v1_0.tcl
