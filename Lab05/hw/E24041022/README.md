# FPGA-based System Design - Lab05 HW

## 成員名單
E24041022、E24041894、E24046674

## Program1.
設計一個排序電路，由 processor 輸入一串數字將其排序後傳回。(數列長度固定)

將八組32bits的資料依序存進來，先去01、23、45、67去做比較，比較大的就傳到後面，再來是12、34、56去做比較，反覆執行，最後前者多做一次，即可將其依小到大做排序。

![image](https://github.com/kenny8654/FPGA_Design/blob/master/Lab05/hw/E24041022/image/1543321199447.jpg)

## Program2.
設計一個計算電路，由 processor 輸入運算子與運算元並回傳運算完的結果。(加, 減, 乘)

我們可以輸入兩個32bits的數字，利用軟體去判斷加、減、乘，將其代表的數字傳到硬體進行運算。


## Program3.
設計 parity generator，輸入 32-bit 資料回傳其 parity bit (禁止額外暫存器的使用 ex: counter)。

32bits的資料，兩兩分別做XOR，若為偶數個1，出來則是0，反之亦然，一開始先做16個XOR，出來的結果接續做8個XOR，一直做到最後一個，出來的就是答案。


## Program4.
設計 djb2 這個 hash function 的電路。


## Program5.
設計 PWM controller。

參考Lab2的作業來修改，硬體先將內建的clk透過divider變慢，然後從軟體去輸入要改變哪個顏色的PWM，要調高或是調低，再傳到硬體去做計算，另外一開始reset的時候PWM會是50%。
