/*
 * main.c
 *
 *  Created on: Oct 17, 2018
 *      Author: WeiCheng Chen
 */
#include "xparameters.h"
#include "xgpio.h"
#include "xil_printf.h"
#include "xil_types.h"

#define SW_DEVICE_ID	XPAR_GPIO_0_DEVICE_ID
#define LED_DEVICE_ID	XPAR_GPIO_1_DEVICE_ID

#define LED_DELAY     50000000

XGpio LED_Gpio, SW_Gpio;

static const unsigned int E24046357[24] = {
		0b0100 , 0b0101 , 0b0111 , 0b0001 , 0b0101 , 0b0101 , 0b1100 , 0b0111 , 0b0001 , 0b0101 ,
		0b0101 , 0b1100 , 0b0111 , 0b0101 , 0b0101 , 0b0001 , 0b0101 , 0b0111 , 0b0001 , 0b0101 ,
		0b0101 , 0b0001 , 0b1101 , 0b0101 };
static const unsigned int E24046399[22] = {
		0b0100 , 0b0101 , 0b0111 , 0b0001 , 0b0101 , 0b0101 , 0b1100 , 0b0111 , 0b0001 , 0b0101 ,
		0b0101 , 0b1100 , 0b0111 , 0b0101 , 0b0101 , 0b0001 , 0b0101 , 0b0111 , 0b0001 , 0b1101 ,
		0b0001 , 0b1101	};
static const unsigned int E24042060[21] = {
		0b0001 , 0b0001 , 0b0101 , 0b1100 , 0b0101 , 0b0101 , 0b0111 , 0b0001 , 0b1100 , 0b0101 ,
		0b0101 , 0b0111 , 0b0001 , 0b0101 , 0b1100 , 0b0111 , 0b0001 , 0b1101 , 0b0101 , 0b0100 ,
		0b0111
};

int main(){

	int LED_Status, SW_Status , i;
	u32 sw_data;

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

	while(1){
		sw_data = XGpio_DiscreteRead(&SW_Gpio, 1);
		xil_printf("switches data = %d\r\n", sw_data);
		/* Set the LED to High */

		if(sw_data == 0)
		{
			xil_printf("The ID is E24046357 , coding...\r\n");
			for(i = 0 ; i < 24 ; i++)
			{
				XGpio_DiscreteWrite(&LED_Gpio, 1, E24046357[i]);
				xil_printf("%x ",E24046357[i]);
				for(int Delay = 0 ; Delay < LED_DELAY ; Delay++ );
			}
			xil_printf("\r\n");
		}
		else if(sw_data == 1)
		{
			xil_printf("The ID is E24046399 , coding...\r\n");
			for(i = 0 ; i < 22 ; i++)
			{
				XGpio_DiscreteWrite(&LED_Gpio, 1, E24046399[i]);
				xil_printf("%x ",E24046399[i]);
				for(int Delay = 0 ; Delay < LED_DELAY ; Delay++ );
			}
			xil_printf("\r\n");
		}
		else if(sw_data == 2)
		{
			xil_printf("The ID is E24042060 , coding...\r\n");
			for(i = 0 ; i < 21 ; i++)
			{
				XGpio_DiscreteWrite(&LED_Gpio, 1, E24042060[i]);
				xil_printf("%x ",E24042060[i]);
				for(int Delay = 0 ; Delay < LED_DELAY ; Delay++ );
			}
			xil_printf("\r\n");
		}
		else if(sw_data == 3)
		{
			XGpio_DiscreteWrite(&LED_Gpio, 1, 0xF);
			xil_printf("RECIPIENT UNKNOWN \r\n");
		}

		/* Wait a small amount of time so the LED is visible */
		for (int Delay = 0; Delay < LED_DELAY; Delay++);
	}



}
