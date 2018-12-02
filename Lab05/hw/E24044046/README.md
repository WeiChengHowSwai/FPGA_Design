# Homework - Lab05

### 成員學號: E24044046、E24046713

### Block Design

![](https://github.com/tysh0738/FPGA_Design/blob/master/Lab05/hw/E24044046/image/block_design.PNG)

### Program 1

### 題目要求:
設計一個排序電路，由 processor 輸入一串數字將其排序後傳回。(數列長度固定)

### 設計原理:
輸入4個 3-bit 的數，經過bubble sort後，由小而大依序輸出。

### putty結果:
1.排序4,3,2,1

![](https://github.com/tysh0738/FPGA_Design/blob/master/Lab05/hw/E24044046/image/sorting_01.PNG)

2.排序5,0,7,3

![](https://github.com/tysh0738/FPGA_Design/blob/master/Lab05/hw/E24044046/image/sorting_02.PNG)

### Program 2

### 題目要求:
設計一個計算電路，由 processor 輸入運算子與運算元並回傳運算完的結果。(加, 減, 乘)

### 設計原理:
1.輸入兩個 3-bit 的數及加(+)、減(-)或乘(*)，經過運算後輸出結果。
2.在進行減法時，由於硬體運算使用2's complement的方式，若被減數小於減數，無法輸出負數，因此在main.c將計算結果再減64，維持輸出正確性。

### putty結果:
1.加法(5+7=12)

![](https://github.com/tysh0738/FPGA_Design/blob/master/Lab05/hw/E24044046/image/arithmetic_01.PNG)

2.大減小的減法(6-3=3)

![](https://github.com/tysh0738/FPGA_Design/blob/master/Lab05/hw/E24044046/image/arithmetic_02.PNG)

3.乘法(7*4=28)

![](https://github.com/tysh0738/FPGA_Design/blob/master/Lab05/hw/E24044046/image/arithmetic_03.PNG)

4.小減大的減法(4-6)

(1)使用軟體將計算結果減64

![](https://github.com/tysh0738/FPGA_Design/blob/master/Lab05/hw/E24044046/image/arithmetic_04.PNG)

(2)僅硬體測試結果 

![](https://github.com/tysh0738/FPGA_Design/blob/master/Lab05/hw/E24044046/image/arithmetic_05.PNG)

### Program 3

### 題目要求:
設計 parity generator，輸入 32-bit 資料回傳其 parity bit (禁止額外暫存器的使用 ex: counter)。

### 設計原理:
輸入一筆 32-bit 的資料，將每一個bit進行xor的運算，運算結果即為parity bit。

### putty結果:
1.10(binary:1010)的parity bit為0

![](https://github.com/tysh0738/FPGA_Design/blob/master/Lab05/hw/E24044046/image/parity_01.PNG)

2.11(binary:1011)的parity bit為0

![](https://github.com/tysh0738/FPGA_Design/blob/master/Lab05/hw/E24044046/image/parity_02.PNG)


### Program 4

### 題目要求:
設計 djb2 這個 hash function 的電路。

### 設計原理:
輸入一個 3-byte 的字串，將每個character轉為ASCII碼，置入hash function進行計算。

### putty結果:
1.計算abc的djb2 hash結果

![](https://github.com/tysh0738/FPGA_Design/blob/master/Lab05/hw/E24044046/image/hash_01.PNG)

2.計算5w8的djb2 hash結果

![](https://github.com/tysh0738/FPGA_Design/blob/master/Lab05/hw/E24044046/image/hash_02.PNG)

### Program 5

### 題目要求:
設計 PWM controller。

### 設計原理:
1. 依序輸入3個數(0~255)為一開始RED、GREEN、BLUE的PWM時間。
2. 藉由PuTTy上的指示，決定要對哪個顏色的PWM進行更改，或結束program 5。

### putty介面下的指令:

![](https://github.com/tysh0738/FPGA_Design/blob/master/Lab05/hw/E24044046/image/PWM_01.PNG)

### FPGA燒錄結果: (下述R,G,B分別代表red,green,blue的PWM值)
1.一開始設定R=30,G=0,B=0

![](https://github.com/tysh0738/FPGA_Design/blob/master/Lab05/hw/E24044046/image/PWM_02.jpg)

2.改變G為50(R=30,G=50,B=0)

![](https://github.com/tysh0738/FPGA_Design/blob/master/Lab05/hw/E24044046/image/PWM_03.jpg)

3.改變G為0(R=30,G=0,B=0)

![](https://github.com/tysh0738/FPGA_Design/blob/master/Lab05/hw/E24044046/image/PWM_02.jpg)

4.改變B為40(R=30,G=0,B=40)

![](https://github.com/tysh0738/FPGA_Design/blob/master/Lab05/hw/E24044046/image/PWM_04.jpg)

5.結束程式，燈熄滅(R=0,G=0,B=0)

![](https://github.com/tysh0738/FPGA_Design/blob/master/Lab05/hw/E24044046/image/PWM_05.jpg)




