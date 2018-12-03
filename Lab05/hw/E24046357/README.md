# FPGA-based System Design - Lab05 HW
## 成員名單
E24046357、E24046399、E24042060
## Block Design

![BD](https://github.com/ncku-vlsilab/FPGA_Design/blob/master/Lab05/hw/E24046357/image/blockdesign.JPG)

註:在做這次作業時原本都可以正常執行，但在寫README時為了要截圖再執行時卻無法正常執行，所以以下敘述除了BlockDesign皆無圖片，望助教見諒
## Program 1 : 設計一個排序電路，由 processor 輸入一串數字將其排序後傳回。(數列長度固定)
### 程式說明
第一題我們所採用的排序演算法為[Bubble Sort](https://zh.wikipedia.org/wiki/%E5%86%92%E6%B3%A1%E6%8E%92%E5%BA%8F)，為家喻戶曉的排序演算法之一。雖然想法簡單易懂，但在大量資料的排序上很沒有效率。考量到這次只排序8筆資料，所以還是採用之。
### 操作流程
在軟體端會先要求使用者輸入八筆32 bits的資料，輸入完一次丟回去給電路排序，再一次由大排至小丟回來軟體端顯示在Putty上。
## Program 2:設計一個計算電路，由 processor 輸入運算子與運算元並回傳運算完的結果。(加, 減, 乘)
### 程式說明
這題的規格設計為兩個8 bits的運算子，一個2 bits的運算元(如附表)，一個16 bits的結果。

| 運算元 | 訊號 |
| -- | -- |
| + | 00 |
| - | 01 |
| * | 10 |


### 操作流程
在軟體端上會依序要求使用者輸入:運算子A、運算元、運算子B，輸入完後A、B、計算子分別寫入slv_reg0的[7:0]以及[15:8]、[17:16]，由slv_reg1的[15:0]得到結果後在Putty上顯示結果。
## Program 3:設計 parity generator，輸入 32-bit 資料回傳其 parity bit (**禁止額外暫存器的使用 ex: counter**)。
### 程式說明
這次禁止使用額外暫存器，又由於Parity bit是要計算一段資料中的1(0)的奇偶數，於是我們使用XOR這個函數的特性，分別先將第(0,1)、(2,3)....(30,31)位元的資料做XOR，再將得到的16個結果兩兩做XOR...最後得到的便是這筆資料的Parity bit.
### 操作流程
在軟體端上要求使用者輸入一筆4個字元的資料(即為32-bit資料)後，將這筆資料寫入slv_reg0，再由slv_reg1讀取Parity bit，顯示在Putty上。
## Program 4:設計 djb2這個 hash function 的電路。
### 程式說明
我們設計為由軟體端一次丟一個char及上一次的hash value(初始值為5381)丟給硬體計算後，回存新的hash value，再與下一位元的char丟給硬體依序執行，最後在畫面上顯示。
### 操作說明
在軟體端上要求使用者隨機輸入一筆字串(最大長度為20)，計算後顯示在Putty上(亦會在led[0]上顯示：1為亮，0為暗)。
## Program 5:設計 PWM controller。
### 程式說明
這題我們從之前[Lab2-3](https://github.com/ncku-vlsilab/FPGA_Design/tree/master/Lab02/Lab2-3)的教材做修改，把原本sw的輸入改為由軟體端寫入slave register，進而在RGB_LED上顯示四種不同的RGB值。
### 操作說明
在軟體端上要求使用者輸入a/b/c/d四個隨機值，輸入完成後將其轉換為00/01/10/11丟給硬體端讀取後，從RGB_LED上顯示四種對應的PWM值。


> Written with [StackEdit](https://stackedit.io/).
