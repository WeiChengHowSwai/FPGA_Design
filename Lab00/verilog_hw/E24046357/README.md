# FPGA-based System Design - Lab00 HW

## 成員名單
E24046357、E24046399、E24042060
## 問題描述
請完成一影像顯示控制(Image Display Control)電路設計。此控制電路，可依指定之操控指令，使顯示端的影像進行水平及垂直方向的平移(Shift)功能。
本控制電路有 5 個信號輸入(cmd，cmd_valid，datain，clk，reset)及3 個信號輸出(dataout，output_valid，busy)，關於各輸入輸出信號的功能說明。
## 設計說明
#FSM State Diagram
![StateDiagram](image/State_Diagram.JPG)
## 模擬結果圖
### 測試檔1
![test1](https://github.com/ncku-vlsilab/FPGA_Design/blob/master/Lab00/verilog_hw/E24046357/image/5.PNG)
### 測試檔2
![test2](https://github.com/ncku-vlsilab/FPGA_Design/blob/master/Lab00/verilog_hw/E24046357/image/10.PNG)
## 模擬波形圖
### 測試檔1
![test1_1](https://github.com/ncku-vlsilab/FPGA_Design/blob/master/Lab00/verilog_hw/E24046357/image/1.PNG)
![test1_2](https://github.com/ncku-vlsilab/FPGA_Design/blob/master/Lab00/verilog_hw/E24046357/image/2.PNG)
![test1_3](https://github.com/ncku-vlsilab/FPGA_Design/blob/master/Lab00/verilog_hw/E24046357/image/3.PNG)
![test1_4](https://github.com/ncku-vlsilab/FPGA_Design/blob/master/Lab00/verilog_hw/E24046357/image/4.PNG)
### 測試檔2
![test2_1](https://github.com/ncku-vlsilab/FPGA_Design/blob/master/Lab00/verilog_hw/E24046357/image/6.PNG)
![test2_2](https://github.com/ncku-vlsilab/FPGA_Design/blob/master/Lab00/verilog_hw/E24046357/image/7.PNG)
![test2_3](https://github.com/ncku-vlsilab/FPGA_Design/blob/master/Lab00/verilog_hw/E24046357/image/8.PNG)
![test2_4](https://github.com/ncku-vlsilab/FPGA_Design/blob/master/Lab00/verilog_hw/E24046357/image/9.PNG)


> Written with [StackEdit](https://stackedit.io/).
