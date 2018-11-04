
#include "xparameters.h"
#include "xgpio.h"
#include "xil_printf.h"
#include <stdio.h>

#define LED_DEVICE_ID  XPAR_GPIO_0_DEVICE_ID
#define SW_DEVICE_ID  XPAR_GPIO_1_DEVICE_ID
#define BTN_DEVICE_ID  XPAR_GPIO_2_DEVICE_ID

#define LED_DELAY     10000000

XGpio LED_Gpio, SW_Gpio , BTN_Gpio;

unsigned int SDBMHash(char *str)
{
    unsigned int hash = 0;

    while (*str)
    {
        // equivalent to: hash = 65599*hash + (*str++);
        hash = (*str++) + (hash << 6) + (hash << 16) - hash;
    }

    return (hash & 0x7FFFFFFF);
}

int main() {

	int LED_Status, SW_Status, BTN_Status;
	u32 led_data = 0x00, sw_data, btn_data;

	/* Initialize the GPIO driver */
	LED_Status = XGpio_Initialize(&LED_Gpio, LED_DEVICE_ID);
	SW_Status = XGpio_Initialize(&SW_Gpio, SW_DEVICE_ID);
	BTN_Status = XGpio_Initialize(&BTN_Gpio, BTN_DEVICE_ID);
	if (LED_Status != XST_SUCCESS || SW_Status || BTN_Status) {
		xil_printf("Gpio Initialization Failed\r\n");
		return XST_FAILURE;
	}
	/* Set the direction for all signals as inputs except the LED output */
	XGpio_SetDataDirection(&LED_Gpio, 1, 0x00);
	XGpio_SetDataDirection(&SW_Gpio, 1, 0x0f);
	XGpio_SetDataDirection(&BTN_Gpio, 1, 0x0f);
	////////////////////////////////////////////////////////////////////////////


	//OUR//
	char S0[]="E24056580";
	char S1[]="E24045173";
	char S2[]="E24053037";
	char *S;

	int s0=SDBMHash(S0);
	int s1=SDBMHash(S1);
	int s2=SDBMHash(S2);

	while (1) {
			sw_data = XGpio_DiscreteRead(&SW_Gpio, 1);
			btn_data = XGpio_DiscreteRead(&BTN_Gpio, 1);
			xil_printf("switches data = %d\r\n", sw_data);
			/* Set the LED to High */
			led_data = 0;
			XGpio_DiscreteWrite(&LED_Gpio, 1, led_data);

			switch(sw_data){
			case 0:
					S=S0;
					break;
			case 1:
					S=S1;
					break;
			case 2:
					S=S2;
					break;
			default:
					break;
			}

			//Morse code//
			if(btn_data == 1  && sw_data!=3){
				for(int count=0;count<9;count++){

					xil_printf("%c ", S[count]);

					//專門為"E"設計的
					if(count==0){
						//亮一顆
						led_data=1;
						//下面這四行是Delay，讓他亮久一點
						XGpio_DiscreteWrite(&LED_Gpio, 1, led_data);
						for(int i=0;i<6;i++){
							for (int Delay = 0; Delay < LED_DELAY; Delay++);
						}

						//暗掉
						led_data=0;
						XGpio_DiscreteWrite(&LED_Gpio, 1, led_data);
						for(int i=0;i<3;i++){
							for (int Delay = 0; Delay < LED_DELAY; Delay++);
						}
					}
					//這邊是數字的部分
					else if(count<9){
						int temp=(int)S[count]-'0';

						for(int i=0;i<5;i++){
							if(temp>0 && temp<6){
								led_data=1;
							}else{
								led_data=7;
							}

							XGpio_DiscreteWrite(&LED_Gpio, 1, led_data);
							for(int i=0;i<6;i++){
								for (int Delay = 0; Delay < LED_DELAY; Delay++);
							}

							led_data=0;
							XGpio_DiscreteWrite(&LED_Gpio, 1, led_data);
							for(int i=0;i<3;i++){
								for (int Delay = 0; Delay < LED_DELAY; Delay++);
							}

							temp--;
						}
					}else{
						xil_printf("end\n");
						break;
					}

					//這邊也是要讓他暗掉，做出字元中間的間隔
					led_data=0;
					XGpio_DiscreteWrite(&LED_Gpio, 1, led_data);
					for(int i=0;i<10;i++){
						for (int Delay = 0; Delay < LED_DELAY; Delay++);
					}
				}
			}

			//hash code//
			if(btn_data == 1  && sw_data==3){
				xil_printf("Use SDBM hash function\r\n");
				xil_printf("E24056580 => %d\r\n",s0);
				xil_printf("E24045173 => %d\r\n",s1);
				xil_printf("E24053037 => %d\r\n",s2);
				for(int i=0;i<6;i++){
					for (int Delay = 0; Delay < LED_DELAY; Delay++);
				}
			}
		}

		xil_printf("Successfully ran Gpio Example\r\n");
		return XST_SUCCESS;
}
