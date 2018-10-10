# Homework - Lab01

### 成員學號: E24044046、E24046713

### Question 1.
 1.warning: design LED has port led[3] driven by constant 0
 
 ![](https://github.com/tysh0738/FPGA_Design/blob/master/Lab01/hw/E24044046/image/warning.PNG)
 
   此warning表達led[3]一直被0驅動，代表在任何情形下不會亮。而我們並未使用到led[3]得顯示功能，因此不會影響結果。
   
 2.warning: place_design is not in timing mode
   一般電路都會有sequential的部分，因此需要加入timing的資訊，但這次實驗為combinational電路，因此不需要timing資訊，此warning並不會影響結果。
 
 
### Question 2. 本實驗所加入的 Constraints 有個 virCLK.xdc 的檔案，若將此檔案移除在重新做一次本實驗，會有什麼不一樣的地方?
出現"[Power 33-232] No user defined clocks were found in the design!"的warning，但FPGA的結果看起來相同。因為virtual clock是當作一個基準，以控制每個時序電路輸入和輸出的時間點，若是沒有統一的clock，可能會因為input/output delays遭成下一級資料讀取錯誤，但由於此實驗為combinational電路，不會隨clock edge時間點才傳出資料，因此不會有影響。
 
### Programming: 改用板子上的四個按鈕來控制 LED，其下為FPGA燒錄結果。
 1.reset或未按下任何按鈕時，全部LED不亮
 
 ![](https://github.com/tysh0738/FPGA_Design/blob/master/Lab01/hw/E24044046/image/0000.PNG) 
 
 2.按下butten 0，LED 0亮起
 
 ![](https://github.com/tysh0738/FPGA_Design/blob/master/Lab01/hw/E24044046/image/0001.PNG) 
 
 3.按下butten 1，LED 1亮起
 
 ![](https://github.com/tysh0738/FPGA_Design/blob/master/Lab01/hw/E24044046/image/0010.PNG)
 
 4.按下butten 2，LED 2亮起
 
 ![](https://github.com/tysh0738/FPGA_Design/blob/master/Lab01/hw/E24044046/image/0100.PNG) 
 
 5.按下butten 3，LED 3亮起
 
 ![](https://github.com/tysh0738/FPGA_Design/blob/master/Lab01/hw/E24044046/image/1000.PNG)
