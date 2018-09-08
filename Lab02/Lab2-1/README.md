FPGA Design Lab2-1
=================
## Purpose
相較於 Lab 1，此次實驗加入 Timing 的條件讓各位了解如何設定 Constraint file。 其中為了讓我們肉眼能看出 LED 的變化，也需設計一除頻器來增加 Clock cycle time。

## Step 1. Create a new project
請回顧 [Lab01 Step1](https://github.com/ncku-vlsilab/FPGA_Design/tree/master/Lab01#step-1-create-a-new-project) 並將要加入的 HDL code 及 constraints 改為 Lab2-1 提供的
`top.sv divider.sv blinky.sv blinky.xdc pynq-z2_v1.0.xdc`  

建立完成後 Sources 欄位應該要有剛加入的檔案如下圖所示。

![Vivadp_GUI](images/vivado_gui.png)  
## Step 2. Generate bitstream
請回顧 [Lab01 Step2](https://github.com/ncku-vlsilab/FPGA_Design/tree/master/Lab01#step-2-generate-bitstream)

## Step 3. Program FPGA
請回顧 [Lab01 Step3](https://github.com/ncku-vlsilab/FPGA_Design/tree/master/Lab01#step-3-program-fpga)
