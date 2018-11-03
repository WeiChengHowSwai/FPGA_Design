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


int main() {
	int LED_Status, SW_Status;
	u32 led_data = 0x00, sw_data;

	int number1=24041810;
	int number2=24046755;
	int number3=24046307;

	int record[3]={3,3,3};
	int hash(int stu1,int *ptr){
		int index=stu1%3;
		if(ptr[index]==3){
			ptr[index]=index;
		}
		else{
			switch(index){
				case 0:
					index=2;
					break;
				case 1:
					index=0;
					break;
				case 2:
					index=1;
					break;
			}
			ptr[index]=index;
		}
		return index;
	}

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
                xil_printf("E24041810 after hash is %d .\r\n" , hash(number1,record));
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
                xil_printf("E24046755 after hash is %d .\r\n",hash(number2,record));
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
                xil_printf("E24046307 after hash is %d .\r\n",hash(number3,record));
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

		/*while(1){
			sw_data = XGpio_DiscreteRead(&SW_Gpio, 1);
			if(sw_data==1){
				xil_printf("E24041810 after hash is %d .\r\n" , hash(number1,record));
			}
			else if(sw_data==2){
				xil_printf("E24046755 after hash is %d .\r\n",hash(number2,record));
			}
			else if(sw_data==3){
				xil_printf("E24046307 after hash is %d .\r\n",hash(number3,record));
			}
			else{
				xil_printf("Change the switch:\r\n");
			}
		}*/

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



