# FPGA Design Lab1
成員：F84051053蔡慶霖、F94041031裴翰祥
---
Question 1
-

因led[3]的port沒有被assign任何值(也就是從頭到尾都是constant 0)，但verilog code上的output端有定義led[3]，故會出現此warning來提醒我們led[3]沒有被用到，不過並不會影響FPGA呈現的結果。

而"place_design is not in timing mode."是在提醒我們所設計的電路不是時序的

Question 2
-
若不加入virCLK.xdc，則會出現以下warning
![](https://i.imgur.com/G8oViXE.jpg)
由於Vivado會假定設計的電路是時序性，若沒有創建clk就會多出此warning，故只要創建一個clk，即使沒有實際用途，就不會出現該warning。而本來的設計不需要用到clk，故呈現的結果不會受影響。

Programming
-
本次設計由開關控制LED的發亮，以下是設計說明：
~~~
* 按下BTN0，LED0發亮
* 按下BTN1，LED1發亮
* 按下BTN2，LED2發亮
* 按下BTN3，LED3發亮
~~~

實作成果：(verilog code見src資料夾)
---
* 按下BTN3，LED3發亮
![](https://i.imgur.com/0HTnXHW.jpg =x291)

* 按下BTN1，LED1發亮
![](https://i.imgur.com/NBc4UFa.jpg =x300)