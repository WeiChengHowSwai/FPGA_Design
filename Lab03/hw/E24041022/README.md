# FPGA-based System Design - Lab03 HW

## 成員名單
E24041022、E24041894、E24046674
## Question 1.
請問在不改動任何設定下，ZYNQ CPU 儲存資料的方式是 big-endian 還是 little-endian?

我們使用union類別存入一個long，然後以char分別讀出四個區塊地址內的資料來檢測是big-endian 還是 little-endian。

● 存入 0x12345678 至 long

● 若 char[0] == 0x78 ........ char[3] == 0x12 則判斷為 Little Endian

● 若 char[0] == 0x12 ........ char[3] == 0x78 則判斷為 big Endian

![image](https://github.com/kenny8654/FPGA_Design/blob/master/Lab03/hw/E24041022/question1/endian.PNG )

結果為 little-endian

## Program 1.

1. 用 switch 切換每個組員的學號，當按下 button 後 LED 會輸出學號的摩斯密碼。

● 當sw為0時按下button，沒有反應。

● 當sw為1、2、3時按下button，分別輸出同學學號E24041022、E24046674、E24041894的摩斯密碼。

● 輸出方法為 : 短信號亮1個燈(led訊號=1)，長信號亮3個燈(led訊號=7=0111)，同筆資料間隔一拍(led訊號=0)，不同筆資料間隔三拍。

morse code(led訊號)如下

![image](https://github.com/kenny8654/FPGA_Design/blob/master/Lab03/hw/E24041022/program1/HW1.PNG )

2. 計算 hash function 並在 putty 上顯示出學號經由 hash function 的結果。

我們使用 BKDR Hash Function 結果如下

![image](https://github.com/kenny8654/FPGA_Design/blob/master/Lab03/hw/E24041022/program1/HW2.PNG )

與網路上generator結果相同

![image](https://github.com/kenny8654/FPGA_Design/blob/master/Lab03/hw/E24041022/program1/HW1_2_1.PNG )

![image](https://github.com/kenny8654/FPGA_Design/blob/master/Lab03/hw/E24041022/program1/HW1_2_2.PNG )

![image](https://github.com/kenny8654/FPGA_Design/blob/master/Lab03/hw/E24041022/program1/HW1_2_3.PNG )

## Program 2.

輸入 32-bit 資料並計算其 parity bit。

我們將輸入的資料的32個bit直接相加，然後%2來判斷 parity bit，若輸入1或0以外資料，或者資料字數不符規定，則告知錯誤。

![image](https://github.com/kenny8654/FPGA_Design/blob/master/Lab03/hw/E24041022/program2/hw2_1.PNG )



