/*
 * led.c
 *
 *  Created on: 2018/8/23
 *      Author: VLSILAB
 */


#include "xparameters.h"
#include "xgpio.h"
#include "xil_printf.h"


#define SW_DEVICE_ID  XPAR_GPIO_0_DEVICE_ID
#define LED_DEVICE_ID  XPAR_GPIO_1_DEVICE_ID
#define BTN_DEVICE_ID  XPAR_GPIO_2_DEVICE_ID

#define LED_DELAY     10000000

XGpio LED_Gpio, SW_Gpio, BTN_Gpio ;
int func0 ();
int func1 ();
int func2 ();
int func4 ();
int func6 ();
int func7 ();
int func9 ();
int funcE ();
void hash(int );
u32 led_data = 0x00, sw_data ,btn_data;

int main() {
	int LED_Status, SW_Status, BTN_Status;


	/* Initialize the GPIO driver */
	LED_Status = XGpio_Initialize(&LED_Gpio, LED_DEVICE_ID);
	SW_Status = XGpio_Initialize(&SW_Gpio, SW_DEVICE_ID);
	BTN_Status = XGpio_Initialize(&BTN_Gpio, BTN_DEVICE_ID);

	if (LED_Status != XST_SUCCESS || SW_Status) {
		xil_printf("Gpio Initialization Failed\r\n");
		return XST_FAILURE;
	}
	/* Set the direction for all signals as inputs except the LED output */
	XGpio_SetDataDirection(&LED_Gpio, 1, 0x00);
	XGpio_SetDataDirection(&SW_Gpio, 1, 0x0f);
	XGpio_SetDataDirection(&BTN_Gpio,1,0x0f);

	while (1) {
			btn_data = XGpio_DiscreteRead(&BTN_Gpio, 1);
			sw_data = XGpio_DiscreteRead(&SW_Gpio, 1);
			//xil_printf("switches data = %d\r\n", sw_data);
			//xil_printf("button data = %d\r\n", btn_data);
			/* Set the LED to High */
		//	XGpio_DiscreteWrite(&LED_Gpio, 1, led_data);
			if(btn_data==1){
			switch(sw_data)
			{
				case 1:
					xil_printf("switches data = %d\r\n", sw_data);
					xil_printf("Number1= E94041107\r\n");
					funcE();
					func9();
					func4();
					func0();
					func4();
					func1();
					func1();
					func0();
					func7();
					
				break;
				case 2:
					xil_printf("switches data = %d\r\n", sw_data);
					xil_printf("Number2= E94046199\r\n");
					funcE();
					func9();
					func4();
					func0();
					func4();
					func6();
					func1();
					func9();
					func9();
					
				break;
				case 3:
					xil_printf("switches data = %d\r\n", sw_data);
					xil_printf("Number3= E94041220\r\n");
					funcE();
					func9();
					func4();
					func0();
					func4();
					func1();
					func2();
					func2();
					func0();
					

				break;
				default:
					XGpio_DiscreteWrite(&LED_Gpio, 1, led_data);
				break;

			}


			}

		}



		xil_printf("Successfully ran Gpio Example\r\n");
		return XST_SUCCESS;
}



int funcE()
{

	hash(14);

	led_data ++ ;
	XGpio_DiscreteWrite(&LED_Gpio, 1, led_data);
	for (int Delay = 0; Delay < LED_DELAY; Delay++);
	led_data -- ;
	XGpio_DiscreteWrite(&LED_Gpio, 1, led_data);
	for (int Delay = 0; Delay < LED_DELAY; Delay++);
	for (int Delay = 0; Delay < 2*LED_DELAY; Delay++);
}
int func0()
{
	hash(0);

	for(int x=0 ; x<=4 ; x++)
	{
	led_data ++ ;
	XGpio_DiscreteWrite(&LED_Gpio, 1, led_data);
	for (int Delay = 0; Delay < 3*LED_DELAY; Delay++);
	led_data -- ;
	XGpio_DiscreteWrite(&LED_Gpio, 1, led_data);
	for (int Delay = 0; Delay < LED_DELAY; Delay++);
	}
	for (int Delay = 0; Delay < 2*LED_DELAY; Delay++);
	
}
int func1()
{
	hash(1);
	led_data ++ ;
	XGpio_DiscreteWrite(&LED_Gpio, 1, led_data);
	for (int Delay = 0; Delay < LED_DELAY; Delay++);
	led_data -- ;
	XGpio_DiscreteWrite(&LED_Gpio, 1, led_data);
	for (int Delay = 0; Delay < LED_DELAY; Delay++);
	for(int x=0 ; x<=3 ; x++)
	{
	led_data ++ ;
	XGpio_DiscreteWrite(&LED_Gpio, 1, led_data);
	for (int Delay = 0; Delay < 3*LED_DELAY; Delay++);
	led_data -- ;
	XGpio_DiscreteWrite(&LED_Gpio, 1, led_data);
	for (int Delay = 0; Delay < LED_DELAY; Delay++);
	}
	for (int Delay = 0; Delay < 2*LED_DELAY; Delay++);
}
int func2()
{
	hash(2);
	for(int x=0 ; x<=1 ; x++)
	{
	led_data ++ ;
	XGpio_DiscreteWrite(&LED_Gpio, 1, led_data);
	for (int Delay = 0; Delay < LED_DELAY; Delay++);
	led_data -- ;
	XGpio_DiscreteWrite(&LED_Gpio, 1, led_data);
	for (int Delay = 0; Delay < LED_DELAY; Delay++);
	}
	for(int x=0 ; x<=2 ; x++)
	{
	led_data ++ ;
	XGpio_DiscreteWrite(&LED_Gpio, 1, led_data);
	for (int Delay = 0; Delay < 3*LED_DELAY; Delay++);
	led_data -- ;
	XGpio_DiscreteWrite(&LED_Gpio, 1, led_data);
	for (int Delay = 0; Delay < LED_DELAY; Delay++);
	}
	for (int Delay = 0; Delay < 2*LED_DELAY; Delay++);
}
int func4()
{
	hash(4);
	for(int x=0 ; x<=3 ; x++)
	{
	led_data ++ ;
	XGpio_DiscreteWrite(&LED_Gpio, 1, led_data);
	for (int Delay = 0; Delay < LED_DELAY; Delay++);
	led_data -- ;
	XGpio_DiscreteWrite(&LED_Gpio, 1, led_data);
	for (int Delay = 0; Delay < LED_DELAY; Delay++);
	}
	led_data ++ ;
	XGpio_DiscreteWrite(&LED_Gpio, 1, led_data);
	for (int Delay = 0; Delay < 3*LED_DELAY; Delay++);
	led_data -- ;
	XGpio_DiscreteWrite(&LED_Gpio, 1, led_data);
	for (int Delay = 0; Delay < LED_DELAY; Delay++);
	for (int Delay = 0; Delay < 2*LED_DELAY; Delay++);
}
int func6()
{
	hash(6);
	led_data ++ ;
	XGpio_DiscreteWrite(&LED_Gpio, 1, led_data);
	for (int Delay = 0; Delay < 3*LED_DELAY; Delay++);
	led_data -- ;
	XGpio_DiscreteWrite(&LED_Gpio, 1, led_data);
	for (int Delay = 0; Delay < LED_DELAY; Delay++);
	for(int x=0 ; x<=3 ; x++)
	{
	led_data ++ ;
	XGpio_DiscreteWrite(&LED_Gpio, 1, led_data);
	for (int Delay = 0; Delay < LED_DELAY; Delay++);
	led_data -- ;
	XGpio_DiscreteWrite(&LED_Gpio, 1, led_data);
	for (int Delay = 0; Delay < LED_DELAY; Delay++);
	}
	for (int Delay = 0; Delay < 2*LED_DELAY; Delay++);
}
int func7()
{
	hash(7);
	for(int x=0 ; x<=1 ; x++)
	{
	led_data ++ ;
	XGpio_DiscreteWrite(&LED_Gpio, 1, led_data);
	for (int Delay = 0; Delay < 3*LED_DELAY; Delay++);
	led_data -- ;
	XGpio_DiscreteWrite(&LED_Gpio, 1, led_data);
	for (int Delay = 0; Delay < LED_DELAY; Delay++);
	}
	for(int x=0 ; x<=2 ; x++)
	{
	led_data ++ ;
	XGpio_DiscreteWrite(&LED_Gpio, 1, led_data);
	for (int Delay = 0; Delay < LED_DELAY; Delay++);
	led_data -- ;
	XGpio_DiscreteWrite(&LED_Gpio, 1, led_data);
	for (int Delay = 0; Delay < LED_DELAY; Delay++);
	}
	for (int Delay = 0; Delay < 2*LED_DELAY; Delay++);
}
int func9()
{
	hash(9);
	for(int x=0 ; x<=3 ; x++)
	{
	led_data ++ ;
	XGpio_DiscreteWrite(&LED_Gpio, 1, led_data);
	for (int Delay = 0; Delay < 3*LED_DELAY; Delay++);
	led_data -- ;
	XGpio_DiscreteWrite(&LED_Gpio, 1, led_data);
	for (int Delay = 0; Delay < LED_DELAY; Delay++);
	}
	led_data ++ ;
	XGpio_DiscreteWrite(&LED_Gpio, 1, led_data);
	for (int Delay = 0; Delay < LED_DELAY; Delay++);
	led_data -- ;
	XGpio_DiscreteWrite(&LED_Gpio, 1, led_data);
	for (int Delay = 0; Delay < LED_DELAY; Delay++);
	for (int Delay = 0; Delay < 2*LED_DELAY; Delay++);
}
void hash(int hash_in)
{
	int y;
	y=2*hash_in+1;
	xil_printf("%d", y);

}
