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

### 波形截圖: