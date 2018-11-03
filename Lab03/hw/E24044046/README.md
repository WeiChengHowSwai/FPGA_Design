# Homework - Lab03

## 成員學號: E24044046、E24046713

## Question 1. 請問在不改動任何設定下，ZYNQ CPU 儲存資料的方式是 big-endian 還是 little-endian?
(1)big-endian是將數據由小至大放入從上至下的記憶體中，即最大的數值會被放在最低的記憶體地址處，little-endian則相反。為了瞭解ZYNQ CPU 儲存資料的方式為何，我們使用ZYNQ CPU不接任何I/O，並寫了一個簡單的程式來測試。程式主要內容為給定一筆數據，若是最小的數值存於記憶體最頂端，則為big-endian，反之則為little-endian。最終我們得到的結果為 **little-endian** 。

(2)電路圖:
	
![](https://github.com/tysh0738/FPGA_Design/blob/master/Lab03/hw/E24044046/Question1/image/0_block.PNG)
	
(3)FPGA燒錄結果(顯示在putty):
	
![](https://github.com/tysh0738/FPGA_Design/blob/master/Lab03/hw/E24044046/Question1/image/0_putty.PNG)	

## Program 1.
## 1.用 switch 切換每個組員的學號，當按下 button 後 LED 會輸出學號的摩斯密碼。	
### 設計原理:
(1)電路圖:sw[0]和btn[0]為input，led[3:0]則為output

![](https://github.com/tysh0738/FPGA_Design/blob/master/Lab03/hw/E24044046/Program1/1/image/2_block.PNG)

(2)在下述sw條件下，並按下btn[0]，會在led和putty顯示對應之摩斯密碼。

| sw  | 對應學號 | 摩斯密碼 |
| ---------- | -----------| -----------|
| 0 | E24044046 | 100,0101,0111,0001,0101,0101,1100,0111,0001,0101,0101,1100,0101,0101,1100,0111,0001,0101,0101,1100,0111,0101,0101 |
| 1 | E24046713 | 100,0101,0111,0001,0101,0101,1100,0111,0001,0101,0101,1100,0111,0101,0101,0001,1101,0101,0001,0111,0001,0101,0111 |

(3)因為摩斯密碼若是以一個led顯示的話，即只有1或0，要顯示很久，所以我們將學號所對應到的二進位摩斯密碼改成四位一組，並且若MSB處未滿四位元則補零。此外，led[3:0]以二進位的方式表示數值，putty上則以十六進為顯示數值。

### FPGA燒錄結果:
(1)FPDA board:如資料夾中Morse code影片
	
(2)putty上使用16進位顯示目前輸出的摩斯密碼
	
![](https://github.com/tysh0738/FPGA_Design/blob/master/Lab03/hw/E24044046/Program1/1/image/1_putty.PNG)	


## 2.計算 hash function 並在 putty 上顯示出學號經由 hash function 的結果。
### 設計原理:
(1)電路圖:sw[1:0]和btn[0]為input

![](https://github.com/tysh0738/FPGA_Design/blob/master/Lab03/hw/E24044046/Program1/2/image/1_block.PNG)

(2)採用 **折疊法(Folding)** 實現hash function，即將資料均分成幾個部分，再將這些小部分結合或摺疊起來，產生資料儲存的位置。
我們將學號先對應至ASCII CODE，再將六筆數據切為一個區塊，因此共三個區塊，再將三個區塊的值相加，並將其對56取餘數，得到的結果即為hash值。

(3)在下述sw條件下，並按下btn[0]，會在putty顯示對應之hash值。

| sw  | 對應學號 |
| ---------- | -----------|
| 0 | E24044046 |
| 1 | E24046713 |
| 2 or 3| 自由輸入9-bit之學號 |

### putty顯示結果:

![](https://github.com/tysh0738/FPGA_Design/blob/master/Lab03/hw/E24044046/Program1/2/image/2_putty.PNG)

## Program 2. 輸入 32-bit 資料並計算其 parity bit。
### 設計原理:
電路圖:

![](https://github.com/tysh0738/FPGA_Design/blob/master/Lab03/hw/E24044046/Program2/image/0_block.PNG)

### putty顯示結果:
輸入32-bit的數字，回傳有幾個1和parity bit(奇數個1為1，偶數個1為0)。

![](https://github.com/tysh0738/FPGA_Design/blob/master/Lab03/hw/E24044046/Program2/image/3_putty.PNG)
