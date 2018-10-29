# FPGA Design Lab2
---
成員：F84051053蔡慶霖、F94041034裴翰祥
---
# **實作成果**
## Program 1.
>  使用兩顆 RGB LED 實作十字路口的紅綠燈。
> 1. 綠燈時間15秒，LED 顯示秒數。
> 1. 可用按鈕控制紅綠燈。
> 1. 一個 RGB LED 綠燈或黃燈時，另一個一定是紅燈。
> 1. 可調整綠燈秒數。

**實作說明 :**
* sw=2'b11時才為工作狀態，即開始綠燈倒數，倒數畢後變成紅燈。
* sw不為2'b11時，才可以按bnt[2]調整綠燈秒數，秒數由LED顯示。
* 按下btn[0]直接變成綠燈並倒數(sw須為11工作狀態)
* 按下btn[1]直接變成紅燈(sw須為11工作狀態)
* 按下reset(btn[3])，倒數秒數變回15
* 其餘符合題目要求

**實作圖片：**

**按下btn[0]變為綠燈(sw為11)**
<img src="https://i.imgur.com/U9jSUxw.jpg" width = "400" align=center />

**按下btn[1]變為紅燈(sw為11)**
<img src="https://i.imgur.com/B6mhg76.jpg" width = "400" align=center />

**按下btn[2]以調整秒數(sw不為11)，此時調整為三秒(led=4'b0011)**
<img src="https://i.imgur.com/eF9ClNo.jpg" width = "400" align=center />

## Program 2.
> 使用按鈕調整 RGB LED 的 RGB值。
> 
> 1. botton 1 reset RGB 的 PWM 值。
> 1. botton 3, 4 分別為增加或減少 PWM 值。
> 1. switches 為 01 時，調整 R 的 PWM 值。
> 1. switches 為 10 時，調整 G 的 PWM 值。
> 1. switches 為 11 時，調整 B 的 PWM 值。
> 1. LED 會顯示 switches 對應的 RGB 的 PWM 值。
> 1. switches 為 00 時，按下 botton 2 顯示 RGB LED。

**實作說明 :**
* 按下reset(btn[0])時，RGB的PWM值皆變回255
* 每次增加或減少的PWM值以16為單位
* PWM值由LED顯示，LED全亮時，PWM為最大，LED皆不亮時，PWM為最小
* 其餘符合題目要求

**實作圖片：**

**將G的PWM值歸零後，在sw為00時，按下btn[1]發出紫色光**
<img src="https://i.imgur.com/pY2r7k3.jpg" width = "400" align=center />

**按下reset，將RGB的PWM值皆變回255**
<img src="https://i.imgur.com/tLdjPfS.jpg" width = "400" align=center />

**按下reset，將PWM值變回255，故呈現白光**
<img src="https://i.imgur.com/URidwFp.jpg" width = "400" align=center />

**此時sw為10，按下btn[3]可以減少G的PWM值**
<img src="https://i.imgur.com/bElnQQF.jpg" width = "400" align=center />