FPGA-based System Design - Lab05 HW
=

* [Member](#Member)
* [Program1](#Program1)
* [Program2](#Program2)
* [Program3](#Program3)
* [Program4](#Program4)
* [Program5](#Program5)

<h2 id="Member">Member</h2>

- E24056572   
- E24056637   
- E24054203   



<h2 id="Program1">Program1 設計排序電路</h2>  

<h3>Introduction</h3>
  
<h3>Programming</h3>

<h3>Result</h3>

<h2 id = "Program2">Program2 設計計算電路</h2>

<h3>Introduction</h3>

電路會從axi的slave register讀取兩個16位元數，經過運算與擴充後寫回一個32位元數，由cpu輸入的部分會是兩個帶符號的short以及一個運算模式的訊號。  

Deiver的部分惠要求使用者輸入四個參數，分別是base address、兩個帶符號短整數以及一個運算子，運算子的部分支援+、-以及*三種字元。

在driver程式碼的部分要注意的是不同資料型態的資料處理，由於實作上我將兩個16位元數串成一個32位元數寫入axi slave register，因此需要將傳給driver的兩個短整數其中一個左移16位後與另外一個短整數做OR運算，左移16位的結果會受到短整數是正值還是負值影響，因此儘管輸入的是帶符號數，在driver之中依然使用u16、u32這兩個型態來處理。  

而因為本電路並沒有使用到clock，因此timing constraint裡面只有使用virtual clock。

<h3>Result</h3>

<img src = "./image/arith_main.png">
<img src = "./image/arith.png">

<h2 id="Program3">Program3 設計parity generator</h2>  

<h3>Introduction</h3>
  
<h3>Programming</h3>

<h3>Result</h3>

<h2 id="Program4">Program4 設計dib2 hash function電路</h2>  

<h3>Introduction</h3>

<h3>Result</h3>


<h2 id = "Program5">Program5 設計pwm控制電路</h2>

<h3>Introduction</h3>

作業要求為設計PWM Controller，我們延續在Lab2使用過的設計，而為了使用上更方便且更有彈性，我們將pwm的輸出port增加到四個，四個都可以獨立運作，輸出的PWM duty cycle則參考了Arduino上使用的設計，範圍從0至255。  
Driver目前提供了pwm_out這個function，這個函式會要求佔存器的Base Adderess、Port以及輸出數值，由於提供了四個port，port的範圍為0至3，超過則不會有任何動作。

<h3>Programming</h3>

實作上，pwm控制器會從一個slave register讀取使用者要求的0至255間的資料，我們將四個port共32bit的資料存放在一個佔存器之中，當使用者輸入某一個port以及8位元資料時，Driver會根據輸入的port，將本來的32位元資料中對應port的8位元資料替代掉，接著寫入佔存器中讓Controller讀取。  

以下是demo影片。  

<a href = "https://youtu.be/gYdYgQHwCoA">PWM_Controller Example</a>



<h3>Result</h3>
