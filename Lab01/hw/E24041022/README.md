# ☠☠☠☠☠☠☠☠☠☠☠☠☠☠☠☠☠☠☠
# FPGA-based System Design - Lab01 HW

## 成員名單
E24041022、E24041894、E24046674
## Question1
請問，Synthesis 產生了一個有關 led[3] 的 warning，此 warning 是什麼意思? 是否會影響 FPGA 呈現的結果?
Implementation 產生了 "place_design is not in timing mode" 的 warning，為什麼會產生此 warning?
## Answer1 
1.會有這個warning是因為在寫code的時候，沒有寫到led[3]，導致硬體合成過後，led[3]這個角位是空接的，但這並不會影響到FPGA呈現的結果。

2.這代表我們沒有給FPGA一個對應的clk，但由於這個程式碼並沒有用到clk，所以這個warning不會造成影響。

## Question 2
本實驗所加入的 Constraints 有個 virCLK.xdc 的檔案，若將此檔案移除在重新做一次本實驗，會有什麼不一樣的地方?
## Answer2
1.再重做一次這個實驗，由於這次有加一個虛擬的clk (.xdc檔)，所以就不會跑出Question1的warning。

## Programming
這個程式就是讓我們練習，用不同的button來控制不同的led燈。
