/*
 * hash_morse.c
 *
 *  Created on: 2018¦~11¤ë1¤é
 *      Author: user1
 */



#include "xparameters.h"
#include "xgpio.h"
#include "xil_printf.h"

#define SW_DEVICE_ID  XPAR_GPIO_0_DEVICE_ID
#define LED_DEVICE_ID  XPAR_GPIO_1_DEVICE_ID

#define LED_DELAY     10000000

void short_delay(int in);
void long_delay(int in);

XGpio LED_Gpio, SW_Gpio;


int main(int argc,char *argv[]) {
	int LED_Status, SW_Status;
	u32 led_data = 0x00, sw_data;
	//bkdr hash function
	unsigned int hash(char *ptr){
		unsigned int seed=31;
		unsigned int hash_number=0;
		unsigned int i=0;
		for(i=0;i<9;i++){
			hash_number=hash_number*seed+ptr[i];
		}
		return hash_number;
	}
	char str1[9]="E24041810";
	char str2[9]="E24046755";
	char str3[9]="E24046307";
	//xil.printf("Please enter student number: ");
	//scanf("%s",str);

	/* Initialize the GPIO driver */
	LED_Status = XGpio_Initialize(&LED_Gpio, LED_DEVICE_ID);
	SW_Status = XGpio_Initialize(&SW_Gpio, SW_DEVICE_ID);
	if (LED_Status != XST_SUCCESS || SW_Status) {
		xil_printf("Gpio Initialization Failed\r\n");
		return XST_FAILURE;
	}
	/* Set the direction for all signals as inputs except the LED output */
	XGpio_SetDataDirection(&LED_Gpio, 1, 0x00);
	XGpio_SetDataDirection(&SW_Gpio, 1, 0x0f);

	while (1) {
			sw_data = XGpio_DiscreteRead(&SW_Gpio, 1);
			if(sw_data == 1){
                xil_printf("E24041810 after hash is %d .\r\n" , hash(str1));
                short_delay(1);
                short_delay(2);short_delay(2);long_delay(2);long_delay(2);long_delay(2);
                short_delay(3);short_delay(3);short_delay(3);short_delay(3);long_delay(3);
                long_delay(4);long_delay(4);long_delay(4);long_delay(4);long_delay(4);
                short_delay(5);short_delay(5);short_delay(5);short_delay(5);long_delay(5);
                short_delay(6);long_delay(6);long_delay(6);long_delay(6);long_delay(6);
                long_delay(7);long_delay(7);long_delay(7);short_delay(7);short_delay(7);
                short_delay(8);long_delay(8);long_delay(8);long_delay(8);long_delay(8);
                long_delay(9);long_delay(9);long_delay(9);long_delay(9);long_delay(9);
			}
            else if(sw_data == 2){
                xil_printf("E24046755 after hash is %d .\r\n",hash(str2));
                short_delay(1);
                short_delay(2);short_delay(2);long_delay(2);long_delay(2);long_delay(2);
                short_delay(3);short_delay(3);short_delay(3);short_delay(3);long_delay(3);
                long_delay(4);long_delay(4);long_delay(4);long_delay(4);long_delay(4);
                short_delay(5);short_delay(5);short_delay(5);short_delay(5);long_delay(5);
                long_delay(6);short_delay(6);short_delay(6);short_delay(6);short_delay(6);
                long_delay(7);long_delay(7);short_delay(7);short_delay(7);short_delay(7);
                short_delay(8);short_delay(8);short_delay(8);short_delay(8);short_delay(8);
                short_delay(9);short_delay(9);short_delay(9);short_delay(9);short_delay(9);
			}
            else if(sw_data == 3){
                xil_printf("E24046307 after hash is %d .\r\n",hash(str3));
                short_delay(1);
                short_delay(2);short_delay(2);long_delay(2);long_delay(2);long_delay(2);
                short_delay(3);short_delay(3);short_delay(3);short_delay(3);long_delay(3);
                long_delay(4);long_delay(4);long_delay(4);long_delay(4);long_delay(4);
                short_delay(5);short_delay(5);short_delay(5);short_delay(5);long_delay(5);
                long_delay(6);short_delay(6);short_delay(6);short_delay(6);short_delay(6);
                short_delay(7);short_delay(7);short_delay(7);long_delay(7);long_delay(7);
                long_delay(8);long_delay(8);long_delay(8);long_delay(8);long_delay(8);
                long_delay(9);long_delay(9);short_delay(9);short_delay(9);short_delay(9);
			}
			else ;


		}


		xil_printf("Successfully ran Gpio Example\r\n");
		return XST_SUCCESS;
}
void short_delay(int in)
{
	u32 led_data;
    for (int Delay = 0; Delay < (2*LED_DELAY); Delay++);
    led_data = in;
    XGpio_DiscreteWrite(&LED_Gpio, 1, led_data);//print led
    for (int Delay = 0; Delay < (2*LED_DELAY); Delay++);
    led_data = 0;
    XGpio_DiscreteWrite(&LED_Gpio, 1, led_data);//print led
}

void long_delay(int in)
{
	u32 led_data;
    for (int Delay = 0; Delay < (5*LED_DELAY); Delay++);
    led_data = in;
    XGpio_DiscreteWrite(&LED_Gpio, 1, led_data);
    for (int Delay = 0; Delay < (5*LED_DELAY); Delay++);
    led_data = 0;
    XGpio_DiscreteWrite(&LED_Gpio, 1, led_data);
}


