# Homework Lab1 
## Member


E24056580
E24045173

##  Question 1.

1. Synthesis 產生了一個有關 led[3] 的 warning，此 warning 是什麼意思? 是否會影響 FPGA 呈現的結果?  
	
	這個warning是因為我們在程式中雖然有進行宣告，但並沒有使用到led[3]這個IO。不過基本上不會影響實驗結果，可以想像成我們宣告了變數但是都沒有使用一樣。

2. Implementation 產生了 _"place_design is not in timing mode"_ 的 warning，為什麼會產生此 warning?

	因為我們有加入一個CLK的constraint，但是我們這次實驗並沒有使用到他，也就是並不是一個時序的電路，因此會出現這個warning。

##  Question 2.

1. 本實驗所加入的 Constraints 有個 virCLK.xdc 的檔案，若將此檔案移除在重新做一次本實驗，會有什麼不一樣的地方?**

	會出現錯誤訊息，因為通常我們在打RTL code的時候會使用到序向電路，這種設計會需要用到clock當作參考，因此在設計時(儘管我們這次只有使用到組合電路)，都需要加入一項CLK的constraint以防止此錯誤產生。

## Programming
為了將LED與按鈕結合，第一步就是先去改pynq-z2_v1.0.xdc裡面的設定，將按鈕的IO宣告出來。

這次我們只需要用到兩顆按鈕，所以程式碼為

    set_property -dict { PACKAGE_PIN D19   IOSTANDARD LVCMOS33 } [get_ports { btn[0] }]; #IO_L4P_T0_35 Sch=btn[0]
	set_property -dict { PACKAGE_PIN D20   IOSTANDARD LVCMOS33 } [get_ports { btn[1] }]; #IO_L4N_T0_35 Sch=btn[1]

接著為了控制LED燈，因此需要對主程式做一些修改。程式碼為
	

    always_comb begin
    		case (btn)
    	      2'b00: led = 4'b0000;
    	      2'b01: led = 4'b0001;
    	      2'b10: led = 4'b0010;
    	      2'b11: led = 4'b0100;
    	    endcase
    	  end
這樣修改的結果，會讓我們在按第一顆按鈕時讓第一顆LED亮起；按第二顆按紐時，第二顆LED亮起；兩顆一起按時，則會讓第三顆LED亮起。
