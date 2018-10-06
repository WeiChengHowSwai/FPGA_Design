# Homework - Verilog Practice

### 成員學號: E24044046、E24046713

### 題目描述: 
請完成一影像顯示控制(Image Display Control)電路設計。此控制電路，可依指定之操控指令，使顯示端的影像進行水平及垂直方向的平移(Shift)功能。
本控制電路有 5 個信號輸入(cmd，cmd_valid，datain，clk，reset)及 3 個信號輸出(dataout，
output_valid，busy)。

### 設計原理:
利用FSM來控制時序，分為九個state，以下為其工作: 

| State  | 說明 |
| ---------- | -----------|
| RESET   | 初始化系統   |
| LOAD   | 當cmd=1且cmd_valid=1時，把testbench輸入的資料存進data暫存器   |
| DECODE   | 分析cmd指令，再決定要跳到哪個state執行指令   |
| REFLASH   | 當cmd=0且cmd_valid=1時，將顯示端的影像重新輸出   |
| SHIFT_R   | 當cmd=2且cmd_valid=1時，將顯示端的影像向右移   |
| SHIFT_L   | 當cmd=3且cmd_valid=1時，將顯示端的影像向左移   |
| SHIFT_U   | 當cmd=4且cmd_valid=1時，將顯示端的影像向上移   |
| SHIFT_D   | 當cmd=5且cmd_valid=1時，將顯示端的影像向下移   |
| OUTPUT   | 將完成指令動作的資料藉由dataout將結果輸出   |

其中顯示端的影像的平移使用x、y來控制，x代表橫軸，y代表縱軸。而輸出的結果利用addr控制要輸出的資料位置。

### 模擬結果截圖:
兩組樣本皆pass

![](https://github.com/tysh0738/FPGA_Design/blob/master/Lab00/verilog_hw/E24044046/image/simulation.PNG)

### 波形截圖:
1.當cmd=1且cmd_valid=1時，load data和dataout輸出結果

![](https://github.com/tysh0738/FPGA_Design/blob/master/Lab00/verilog_hw/E24044046/image/load1.PNG)

![](https://github.com/tysh0738/FPGA_Design/blob/master/Lab00/verilog_hw/E24044046/image/load2_output.PNG)

2.當cmd=2且cmd_valid=1時，dataout輸出顯示端的影像向右移的結果

![](https://github.com/tysh0738/FPGA_Design/blob/master/Lab00/verilog_hw/E24044046/image/cmd2.PNG)

3.當cmd=5且cmd_valid=1時，dataout輸出顯示端的影像向下移的結果

![](https://github.com/tysh0738/FPGA_Design/blob/master/Lab00/verilog_hw/E24044046/image/cmd5.PNG)

4.當cmd=3且cmd_valid=1時，dataout輸出顯示端的影像向左移的結果

![](https://github.com/tysh0738/FPGA_Design/blob/master/Lab00/verilog_hw/E24044046/image/cmd3.PNG)

5.當cmd=4且cmd_valid=1時，dataout輸出顯示端的影像向上移的結果

![](https://github.com/tysh0738/FPGA_Design/blob/master/Lab00/verilog_hw/E24044046/image/cmd4.PNG)

6.當cmd=0且cmd_valid=1時，dataout輸出顯示端的影像重新輸出的結果

![](https://github.com/tysh0738/FPGA_Design/blob/master/Lab00/verilog_hw/E24044046/image/cmd0.PNG)
