# Homework - Verilog Practice
### 組員學號:E24041022、E24041894、E24046674
## 模擬結果截圖

![image](https://github.com/kenny8654/FPGA_Design/blob/patch-2/Lab00/verilog_hw/E24041022/image/result.PNG )


## 波型截圖:
1.當cmd=1且cmd_valid=1時，load data和dataout輸出結果
![image](https://github.com/kenny8654/FPGA_Design/blob/patch-2/Lab00/verilog_hw/E24041022/image/cmd1.PNG )
在接收cmd指令之後，可看到每個clk存進一筆資料，直到存進36筆資料，此時讓busy=1。

![image](https://github.com/kenny8654/FPGA_Design/blob/patch-2/Lab00/verilog_hw/E24041022/image/cmd1_dataout.PNG )
在存進36筆資料後，給予訊號(signal)為1，此時到下一個clk讀到此signal，讓output_valid=1 開始輸出data，而position代表要開始輸出data的位置，out_position代表目前輸出到第幾筆資料。

2.當cmd=2且cmd_valid=1時，dataout輸出顯示端的影像向右移的結果
![image](https://github.com/kenny8654/FPGA_Design/blob/patch-2/Lab00/verilog_hw/E24041022/image/cmd2.PNG )
在接收到cmd右移指令之後，可看到position向右移了一個位置，之後開始輸出data。

3.當cmd=3且cmd_valid=1時，dataout輸出顯示端的影像向左移的結果
![image](https://github.com/kenny8654/FPGA_Design/blob/patch-2/Lab00/verilog_hw/E24041022/image/cmd3.PNG )
在接收到cmd左移指令之後，可看到position向左移了一個位置，之後開始輸出data。

4.當cmd=4且cmd_valid=1時，dataout輸出顯示端的影像向上移的結果
![image](https://github.com/kenny8654/FPGA_Design/blob/patch-2/Lab00/verilog_hw/E24041022/image/cmd4.PNG )
在接收到cmd上移指令之後，可看到position向上移了一個位置，之後開始輸出data。

5.當cmd=5且cmd_valid=1時，dataout輸出顯示端的影像向下移的結果
![image](https://github.com/kenny8654/FPGA_Design/blob/patch-2/Lab00/verilog_hw/E24041022/image/cmd5.PNG )
在接收到cmd下移指令之後，可看到position向下移了一個位置，之後開始輸出data。

6.當cmd=0且cmd_valid=1時，dataout輸出顯示端的影像重新輸出的結果
![image](https://github.com/kenny8654/FPGA_Design/blob/patch-2/Lab00/verilog_hw/E24041022/image/cmd0.PNG )
在接收到reload指令之後，可看到輸出的data和上一筆輸出的data是相同的。
