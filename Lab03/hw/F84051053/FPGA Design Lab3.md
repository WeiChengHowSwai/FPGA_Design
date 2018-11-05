# FPGA Design Lab3
---
成員：F84051053蔡慶霖、F94041034裴翰祥
---

**Question1**
---
ZYNQ CPU 儲存資料的方式為 little-endian

---
## **Program1**
**1.**
**實作方法:**
調整LED_DELAY分別寫出LED長亮與短亮的function，再將學號上的每個字元寫成一個function。
當switch調整為00，顯示F84051053的morse code
當switch調整為11，顯示F94041034的morse code
可以隨時切換switch，而morse code顯示在在四個Led上同步發亮

**2.**
**實作方法:**
將學號每個字元轉換成ASCII code，並將其相加，最後mod 13，得到value。
但data最多只能儲存到13筆資料
<img src="https://i.imgur.com/txCcwZg.jpg" width = "400" align=center />

---
## **Program 2.**
**實作方法：**
計算32-bit資料當中有幾個1後再mod 2，
若得到結果為1，則even parity bit為1，odd parity bit為0，
若得到結果為0，則even parity bit為0，odd parity bit為1
<img src="https://i.imgur.com/e7awxAV.jpg" width = "400" align=center />

