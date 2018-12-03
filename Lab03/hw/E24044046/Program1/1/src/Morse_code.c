#include "xparameters.h"
#include "xgpio.h"
#include "xil_printf.h"

#define SW_DEVICE_ID  XPAR_GPIO_0_DEVICE_ID
#define LED_DEVICE_ID  XPAR_GPIO_2_DEVICE_ID
#define BTN_DEVICE_ID  XPAR_GPIO_1_DEVICE_ID

#define LED_DELAY     30000000

XGpio LED_Gpio, SW_Gpio,BTN_Gpio;

int main(){

	int LED_Status, SW_Status,BTN_Status;

	u32 sw_data,btn_data;
	u32 member1[23]={0b0100,0b0101,0b0111,0b0001,0b0101,0b0101,0b1100,0b0111,0b0001,0b0101,0b0101,0b1100,
			         0b0101,0b0101,0b1100,0b0111,0b0001,0b0101,0b0101,0b1100,0b0111,0b0101,0b0101};
	u32 member2[23]={0b0100,0b0101,0b0111,0b0001,0b0101,0b0101,0b1100,0b0111,0b0001,0b0101,0b0101,0b1100,
	                 0b0111,0b0101,0b0101,0b0001,0b1101,0b0101,0b0001,0b0111,0b0001,0b0101,0b0111};

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
	//xil_printf("Hello!\r\n");
	while(1){

		sw_data = XGpio_DiscreteRead(&SW_Gpio, 1);

		/* Set the LED to Low */
		XGpio_DiscreteWrite(&LED_Gpio, 1, 0);

		switch(sw_data){
		case 0:btn_data=XGpio_DiscreteRead(&BTN_Gpio, 1);
			   if(btn_data==1){
				   xil_printf("switches data = %d\r\n", sw_data);
				   xil_printf("The Morse code of E24044046 is\r\n");
				   for(int i=0;i<23;i++){
					   xil_printf("%x ",member1[i]);
					   XGpio_DiscreteWrite(&LED_Gpio, 1, member1[i]);
					   for(int Delay = 0 ; Delay < LED_DELAY ; Delay++ );
				   }
				   xil_printf("\r\n\r\n");
			   }
			   break;

		case 1:btn_data=XGpio_DiscreteRead(&BTN_Gpio, 1);
		   if(btn_data==1){
			   xil_printf("switches data = %d\r\n", sw_data);
			   xil_printf("The Morse code of E24046713 is\r\n");
			   for(int i=0;i<23;i++){
				   xil_printf("%x ",member2[i]);
				   XGpio_DiscreteWrite(&LED_Gpio, 1, member2[i]);
				   for(int Delay = 0 ; Delay < LED_DELAY ; Delay++ );
			   }
			   xil_printf("\r\n\r\n");
		  }
		   break;

		}
	}



}





