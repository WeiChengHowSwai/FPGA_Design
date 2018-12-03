# FPGA Design Lab5
---
**成員：F84051053蔡慶霖、F94041034裴翰祥**
---
---




**本次實驗Block Diagram**
---
<img src="https://i.imgur.com/9C7LKQa.jpg" width = "1000" align=center />

---
**main.c架構：**
**以一個while迴圈內選擇欲進行的program，輸入1為排序，2為計算，3為parity，4為hash，5為PWM控制。**

---
## **Program1**
> 設計一個排序電路，由 processor 輸入一串數字將其排序後傳回。(數列長度固定)
> 
**實驗成果說明：**

<img src="https://i.imgur.com/Mw0OfJl.jpg" width = "1000" align=center />

設計4bits以內的排序電路

---
## **Program2**
> 設計一個計算電路，由 processor 輸入運算子與運算元並回傳運算完的結果。(加, 減, 乘)

**實驗成果說明：**

<img src="https://i.imgur.com/W6aIK7U.jpg" width = "1000" align=center />

與排序電路一樣是4bits之間的運算，但answer可達8bits

---
## **Program3**
> 設計 parity generator，輸入 32-bit 資料回傳其 parity bit (禁止額外暫存器的使用 ex: counter)。

**實驗成果說明：**

<img src="https://i.imgur.com/CJ59Q1l.jpg" width = "1000" align=center />

採用evenparitybit。
如圖，當輸入15時(即2'b1111)，輸出0，
當輸入127時(即2'b1111111)，輸出1。

---
## **Program4**
> 設計 djb2 這個 hash function 的電路。

**實驗成果說明：**

<img src="https://i.imgur.com/XMlD9DS.jpg" width = "1000" align=center />

如圖，輸入a來驗證，其ASCII code為97，5381 * 33 + 97 = 177670。

---
## **Program5**
> 設計 PWM controller。

**實驗成果說明：**

<img src="https://i.imgur.com/24IAg3h.jpg" width = "1000" align=center />
<img src="https://i.imgur.com/prsqg3Y.jpg" width = "1000" align=center />

如上面兩張圖，當RGB分別為，20 0 20時，可看到FPGA RGB LED呈現紫色燈光(Red+Blue)。

---