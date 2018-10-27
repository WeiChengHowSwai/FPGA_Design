#Homework - Lab02

### 成員學號: E24044046、E24046713

### Program 1.

### 題目要求:
使用兩顆 RGB LED 實作十字路口的紅綠燈。
1.綠燈時間15秒，LED 顯示秒數。
2.可用按鈕控制紅綠燈。
3.一個 RGB LED 綠燈或黃燈時，另一個一定是紅燈。
4.可調整綠燈秒數。

### 設計原理:
1.為了方便運算秒數並觀察，我們使用divider.v將原本125MHz的clock變為1Hz的clk_div，並將其接至我們的RGB_LED module使用。

2.RGB_LED module:利用FSM來控制兩個燈號的時序，分為六個state，以下為其工作: 

| State  | 說明 |
| ---------- | -----------|
| RG   | led4亮紅燈、led5亮綠燈 |
| RY   | led4亮紅燈、led5亮黃燈   |
| RR1   | led4、led5皆亮紅燈   |
| GR   | led4亮綠燈、led5亮紅燈   |
| YR   | led4亮黃燈、led5亮紅燈   |
| RR2   | led4、led5皆亮紅燈   |

3.按下不同的button時，運作模式不同，以下為其說明:

| button  | 說明 |
| ---------- | -----------|
| btn0(rst)   | 跳到RG的state，並且兩燈號的紅燈:19s、綠燈:15s、黃燈:2s |
| btn1   | 跳到RG的state，並且兩燈號的紅燈:14s、綠燈:10s、黃燈:2s   |
| btn2   | 跳到RR1的state， 並且強制兩燈號都為紅燈10s，10s後恢復兩燈號的紅燈:19s、綠燈:15s、黃燈:2s (發生路況問題時使用)   |

4.led0~3顯示倒數秒數

### FPGA燒錄結果
1.當按下btn0(rst)時，led4亮紅燈、led5亮綠燈，並且led顯示15秒，如圖一，並依序遞減至一，如圖二為14、圖三為1。

![](https://github.com/tysh0738/FPGA_Design/blob/master/Lab02/hw/E24044046/program1/image/1_rst15.PNG)

![](https://github.com/tysh0738/FPGA_Design/blob/master/Lab02/hw/E24044046/program1/image/2_rst14.PNG)

![](https://github.com/tysh0738/FPGA_Design/blob/master/Lab02/hw/E24044046/program1/image/3_rst1.PNG)

2.在btn0的模式下，經過15s後，轉為led4亮紅燈、led5亮黃燈，並維持2s。

![](https://github.com/tysh0738/FPGA_Design/blob/master/Lab02/hw/E24044046/program1/image/4_RY.PNG)

3.在btn0的模式下，經過2s後，轉為led4、led5皆亮紅燈，並維持2s。

![](https://github.com/tysh0738/FPGA_Design/blob/master/Lab02/hw/E24044046/program1/image/5_RR1.PNG)

4.在btn0的模式下，經過2s後，轉為led4亮綠燈、led5亮紅燈，並維持15s。

![](https://github.com/tysh0738/FPGA_Design/blob/master/Lab02/hw/E24044046/program1/image/6_GR.PNG)

5.在btn0的模式下，經過15s後，轉為led4亮黃燈、led5亮紅燈，並維持2s。

![](https://github.com/tysh0738/FPGA_Design/blob/master/Lab02/hw/E24044046/program1/image/7_YR.PNG)

6.在btn0的模式下，經過2s後，轉為led4、led5皆亮紅燈，並維持2s。

![](https://github.com/tysh0738/FPGA_Design/blob/master/Lab02/hw/E24044046/program1/image/8_RR2.PNG)

7.按下btn1後，led4亮紅燈、led5亮綠燈，並且led顯示10s。

![](https://github.com/tysh0738/FPGA_Design/blob/master/Lab02/hw/E24044046/program1/image/9_btn1.PNG)

8.按下btn2後，led4、led5皆亮紅燈，並且led顯示10s。

![](https://github.com/tysh0738/FPGA_Design/blob/master/Lab02/hw/E24044046/program1/image/10_btn2.PNG)


### Program 2.

### 題目要求:使用按鈕調整 RGB LED 的 RGB值。
1.botton 1 reset RGB 的 PWM 值。
2.botton 3, 4 分別為增加或減少 PWM 值。
3.switches 為 01 時，調整 R 的 PWM 值。
4.switches 為 10 時，調整 G 的 PWM 值。
5.switches 為 11 時，調整 B 的 PWM 值。
6.LED 會顯示 switches 對應的 RGB 的 PWM 值。
7.switches 為 00 時，按下 botton 2 顯示 RGB LED。

### 設計原理:
1.為了避免clock頻率過快，導致欲按壓button一下，卻感應成好幾下，因此使用與Program 1相同的1Hz clk_div，連接至Decoder module。

2.led4為結果的主要呈現。

3.led5用以輔助，顯示各個switch狀態時button所能調整的對應RGB顏色，其對應關係如下：
| sw | led5 |
|-----|------|
| 00 | none |
| 01 | red |
| 10 | green |
| 11 | blue |
例：當sw為01時，led5亮起紅燈，此時btn2、btn3調整標的為led4的R PWM值。

2.按下不同的button時，有不同的操作，以下為其說明:

| button  | 說明 |
| ---------- | -----------|
| btn0(rst)   | 重置led4的RGB PWM值為128，此時led4為白光 |
| btn1   | 僅在sw為00時才有作用，將led4 RGB PWM值調整至255，此時led4同為白光，但較rst時更亮   |
| btn2   | 增加R或G或B的PWM值(由sw狀態決定)，每次按壓增加16，最大至240   |
| btn3   | 減少R或G或B的PWM值(由sw狀態決定)，每次按壓減少16，最小至0   |

3.led0~3顯示sw對應的RGB PWM值，僅能呈現16種亮度狀態，因此btn每次增減PWM值以16為單位，且上限為240

### FPGA燒錄結果
1.在sw為00時，按下btn1，led5未亮燈，led4呈現最亮的白燈

![](https://github.com/tysh0738/FPGA_Design/blob/master/Lab02/hw/E24044046/program2/image/1_btn1.JPG)

2.rst後，在sw為01時，led5亮紅燈，led3~0顯示1000，即R的PWM值為128。

![](https://github.com/tysh0738/FPGA_Design/blob/master/Lab02/hw/E24044046/program2/image/2_rst.JPG)

3.在2.的情況下按下btn2，led3~0顯示1001，即PWM值增加16為144

![](https://github.com/tysh0738/FPGA_Design/blob/master/Lab02/hw/E24044046/program2/image/3_btn2.JPG)

4.在2.的情況下按下btn3，led3~0顯示0111，即PWM值減少16為112

![](https://github.com/tysh0738/FPGA_Design/blob/master/Lab02/hw/E24044046/program2/image/4_btn3.JPG)

5.其他顏色呈現：下面三張圖顯示當R、G、B PWM值分別為48、0、80時，led4呈現紫色

![](https://github.com/tysh0738/FPGA_Design/blob/master/Lab02/hw/E24044046/program2/image/5_RGB_R.JPG)

![](https://github.com/tysh0738/FPGA_Design/blob/master/Lab02/hw/E24044046/program2/image/6_RGB_G.JPG)

![](https://github.com/tysh0738/FPGA_Design/blob/master/Lab02/hw/E24044046/program2/image/7_RGB_B.JPG)
