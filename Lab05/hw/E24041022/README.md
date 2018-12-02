# FPGA-based System Design - Lab05 HW

## 成員名單
E24041022、E24041894、E24046674

## Block Design.

![image](https://github.com/kenny8654/FPGA_Design/blob/master/Lab05/hw/E24041022/image/messageImage_1543757459069.jpg)

## Program1.
設計一個排序電路，由 processor 輸入一串數字將其排序後傳回。(數列長度固定)

將八組32bits的資料依序存進來，先去01、23、45、67去做比較，比較大的就傳到後面，再來是12、34、56去做比較，反覆執行，最後前者多做一次，即可將其依小到大做排序。

![image](https://github.com/kenny8654/FPGA_Design/blob/master/Lab05/hw/E24041022/image/1543321199447.jpg)

## Program2.
設計一個計算電路，由 processor 輸入運算子與運算元並回傳運算完的結果。(加, 減, 乘)

我們可以輸入兩個32bits的數字，利用軟體去判斷加、減、乘，將其代表的數字傳到硬體進行運算。

![image](https://github.com/kenny8654/FPGA_Design/blob/master/Lab05/hw/E24041022/image/math.PNG)

## Program3.
設計 parity generator，輸入 32-bit 資料回傳其 parity bit (禁止額外暫存器的使用 ex: counter)。

32bits的資料，兩兩分別做XOR，若為偶數個1，出來則是0，反之亦然，一開始先做16個XOR，出來的結果接續做8個XOR，一直做到最後一個，出來的就是答案。

![image](https://github.com/kenny8654/FPGA_Design/blob/master/Lab05/hw/E24041022/image/parity.PNG)

## Program4.
設計 djb2 這個 hash function 的電路。

將一字串傳給軟體的function，function會把每個字符以及前一次算出的結果(初始為5381)，依序丟給硬體計算 (hash<<5)+hash+c，全部都丟完後算出的就是結果

![image](https://github.com/kenny8654/FPGA_Design/blob/master/Lab05/hw/E24041022/image/1543576412040.jpg)

## Program5.
設計 PWM controller。

參考Lab2的作業來修改，硬體先將內建的clk透過divider變慢，然後從軟體去輸入要改變哪個顏色的PWM，要調高或是調低，再傳到硬體去做計算，另外一開始reset的時候PWM會是50%。

以影片呈現功能，助教可以在自己demo看看

https://drive.google.com/file/d/1MQaNIoZQY5WrZXAzl91ljaFGd18o-8wr/view?usp=sharing

怕助教看不清楚畫面裡的字，前面做的動作都是 R + ，所以每次RED的PWM值都會加大，最後加到100%為止，由影片可以看出來前50%都是白光(RESET的結果)，後50%都是紅光，再來逐漸做 B - ，所以BLUE的值會一直變小，到最後就變成 前50%是黃(綠+紅)，後50%是紅。


### ★由於這次是第一次交ip的檔案，不確定有哪些是需要交的，若有遺漏哪些檔案，希望助教再告知我們QQ ★


