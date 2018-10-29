# Homework - Verilog Practice
成員：F84051053蔡慶霖、F94041034裴翰祥
---
## Verilog hw 問題描述
請完成一影像顯示控制(Image Display Control)電路設計。此控制電路，可依指定之操控指令，使顯示端的影像進行水平及垂直方向的平移(Shift)功能。 
本控制電路有 5 個信號輸入(cmd，cmd_valid，datain，clk，reset)及3 個信號輸出(dataout，output_valid，busy)，關於各輸入輸出信號的功能說明。
## 使用工具
Terminal on MacBook Air
Icarus Verilog
GTKwave
vim
## 檔案


| 檔案路徑 | 內容 | 
| -------- | -------- | 
|src/lcd_ctrl.v|Image Display Control 電路設計檔|
| src/testfixture1.v|第一組測試樣本檔。此測試樣本檔定義了時脈週期與測試樣本之輸入信號|
| src/cmd1.dat|第一組測試樣本之指令|
|src/image1.dat|第一組測試樣本使用之影像檔|
|src/out_golden1.dat|第一組測試樣本之正確結果|
| src/testfixture2.v|第二組測試樣本檔。此測試樣本檔定義了時脈週期與測試樣本之輸入信號|
| src/cmd2.dat|第二組測試樣本之指令|
|src/image2.dat|第二組測試樣本使用之影像檔|
|src/out_golden2.dat|第二組測試樣本之正確結果|
|vcd/LCD_CTRL1.vcd|第一組模擬波形圖|
|vcd/LCD_CTRL2.vcd|第二組模擬波形圖|

## 模擬結果
#### Simulation1 : testfixture1.v
![](https://github.com/ncku-vlsilab/FPGA_Design/blob/master/Lab00/verilog_hw/F94041034/images/test1_result.PNG)

#### Simulation2 : testfixture2.v
![](https://github.com/ncku-vlsilab/FPGA_Design/blob/master/Lab00/verilog_hw/F94041034/images/test2_result.PNG)
:::info
**兩個模擬結果皆成功**
:::
## 波形圖分析
### A.
1. output_valid 為 high 時， dataout 才是有效資料輸出。
![](https://github.com/ncku-vlsilab/FPGA_Design/blob/master/Lab00/verilog_hw/F94041034/images/wave_analysis_output_valid.PNG)
2. busy 為 high 時，正在執行 current state 指令，無法接收新指令輸入。
3. 在 cmd_valid 為 high 及 busy 為 low 時， cmd 為有效指令輸入
![](https://github.com/ncku-vlsilab/FPGA_Design/blob/master/Lab00/verilog_hw/F94041034/images/wave_analysis_busy.PNG)
### B. cmd
1. cmd 0 : Reflash
結果顯示當 cmd=0 時，有將原本顯示的3x3影像資料重新輸出。
![](https://github.com/ncku-vlsilab/FPGA_Design/blob/master/Lab00/verilog_hw/F94041034/images/cmd0_reflash.PNG)
2. cmd 1 : Load data
結果顯示當 cmd=1 時，origin會設為(2,2)，datain輸入資料，輸完後再由dataout輸出資料
test1:
![](https://github.com/ncku-vlsilab/FPGA_Design/blob/master/Lab00/verilog_hw/F94041034/images/test1_cmd1_load_data.PNG)
test2:
![](https://github.com/ncku-vlsilab/FPGA_Design/blob/master/Lab00/verilog_hw/F94041034/images/test2_cmd1_load_data.PNG)
3. cmd 2 : Shift right
結果顯示當cmd=2時，x 座標會向右移動1，y 座標不變，形成新origin，再由新origin作為新原點輸出新的影像資料；而當x = 3 無法再往右移動，所以origin座標不變
test1:
![](https://github.com/ncku-vlsilab/FPGA_Design/blob/master/Lab00/verilog_hw/F94041034/images/test1_cmd2_shift_right.PNG)
test2:
![](https://github.com/ncku-vlsilab/FPGA_Design/blob/master/Lab00/verilog_hw/F94041034/images/test2_cmd2_shift_right.PNG)
x = 3 無法再往右移動，所以origin座標不變
![](https://github.com/ncku-vlsilab/FPGA_Design/blob/master/Lab00/verilog_hw/F94041034/images/cmd2_shift_right_special.PNG)
4. cmd 3 : Shift left
結果顯示當cmd=3時，x 座標會向左移動1，y 座標不變，形成新origin，再由新origin作為新原點輸出新的影像資料；而當x = 0 無法再往左移動，所以origin座標不變
test1:
![](https://github.com/ncku-vlsilab/FPGA_Design/blob/master/Lab00/verilog_hw/F94041034/images/test1_cmd3_shift_left.PNG)
test2:
![](https://github.com/ncku-vlsilab/FPGA_Design/blob/master/Lab00/verilog_hw/F94041034/images/test2_cmd3_shift_left.PNG)
x = 0 無法再往左移動，所以origin座標不變
![](https://github.com/ncku-vlsilab/FPGA_Design/blob/master/Lab00/verilog_hw/F94041034/images/cmd3_shift_left_special.PNG)
5. cmd 4 : Shift up
結果顯示當cmd=4時，y 座標會向上移動1，x 座標不變，形成新origin，再由新origin作為新原點輸出新的影像資料；而當y = 0 無法再向上移動，所以origin座標不變
test1:
![](https://github.com/ncku-vlsilab/FPGA_Design/blob/master/Lab00/verilog_hw/F94041034/images/test1_cmd4_shift_up.PNG)
test2:
![](https://github.com/ncku-vlsilab/FPGA_Design/blob/master/Lab00/verilog_hw/F94041034/images/test2_cmd4_shift_up.PNG)
y = 0 無法再向上移動，所以origin座標不變
![](https://github.com/ncku-vlsilab/FPGA_Design/blob/master/Lab00/verilog_hw/F94041034/images/cmd4_shift_up_special.PNG)
6. cmd 5 : Shift down
結果顯示當cmd=5時，y 座標會向下移動1，x 座標不變，形成新origin，再由新origin作為新原點輸出新的影像資料；而當y = 3 無法再向下移動，所以origin座標不變
test1:
![](https://github.com/ncku-vlsilab/FPGA_Design/blob/master/Lab00/verilog_hw/F94041034/images/test1_cmd5_shift_down.PNG)
test2:
![](https://github.com/ncku-vlsilab/FPGA_Design/blob/master/Lab00/verilog_hw/F94041034/images/test2_cmd5_shift_down.PNG)
y = 3 無法再向下移動，所以origin座標不變
![](https://github.com/ncku-vlsilab/FPGA_Design/blob/master/Lab00/verilog_hw/F94041034/images/cmd5_shift_down_special.PNG)

:::info
**波形圖結果與Image Display Control規定系統功能相同**
:::