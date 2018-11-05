#include "xparameters.h"
#include "xgpio.h"
#include "xil_printf.h"
#include <stdio.h>

#define SW_DEVICE_ID  XPAR_GPIO_0_DEVICE_ID
#define BTN_DEVICE_ID  XPAR_GPIO_1_DEVICE_ID

#define DELAY     10000000

XGpio SW_Gpio,BTN_Gpio;

int hash(int* mem){
	//partition
	int part[3];
	for(int i=0;i<3;i++){
		part[i]=mem[3*i]*10000+mem[3*i+1]*100+mem[3*i+2];
		//xil_printf("%d ",part[i]);
	}
	xil_printf("\r\n");
	int sum=part[0]+part[1]+part[2];
	//xil_printf("sum=%d\r\n",sum);
	return (sum%56);
}

int main(){

	int SW_Status,BTN_Status;

	u32 sw_data,btn_data;
	int member1[9]={'E','2','4','0','4','4','0','4','6'};
	int member2[9]={'E','2','4','0','4','6','7','1','3'};
	int member3[9]={};
    char temp[9]={};

	/* Initialize the GPIO driver */
	SW_Status = XGpio_Initialize(&SW_Gpio, SW_DEVICE_ID);
	BTN_Status = XGpio_Initialize(&BTN_Gpio, BTN_DEVICE_ID);

	if (SW_Status || BTN_Status) {
		xil_printf("Gpio Initialization Failed\r\n");
		return XST_FAILURE;
	}

	/* Set the direction for all signals as inputs except the LED output */
	XGpio_SetDataDirection(&SW_Gpio, 1, 0x0f);
	XGpio_SetDataDirection(&BTN_Gpio, 1, 0x0f);

	while(1){

		sw_data = XGpio_DiscreteRead(&SW_Gpio, 1);

		switch(sw_data){
		case 0:btn_data=XGpio_DiscreteRead(&BTN_Gpio, 1);
			   if(btn_data==1){
				   xil_printf("switches data = %d\r\n", sw_data);
				   xil_printf("ASCII code of E24044046: ");
				  for(int i=0;i<9;i++){
				   xil_printf("%d",member1[i]);
				   for(int delay = 0 ; delay < DELAY ; delay++ )
					   ;
				   }
				   xil_printf("hash= %d\r\n",hash(member1));
				   xil_printf("\r\n");
				}
			   break;

		case 1:btn_data=XGpio_DiscreteRead(&BTN_Gpio, 1);
		   if(btn_data==1){
			   xil_printf("switches data = %d\r\n", sw_data);
			   xil_printf("ASCII code of E24046713: ");
			  for(int i=0;i<9;i++){
			   xil_printf("%d",member2[i]);
			   for(int delay = 0 ; delay < DELAY ; delay++ )
				   ;
			   }

			   xil_printf("hash= %d\r\n",hash(member2));
			   xil_printf("\r\n");
		  }
		   break;

		default:btn_data=XGpio_DiscreteRead(&BTN_Gpio, 1);
		   if(btn_data==1){
			   xil_printf("switches data = %d\r\nPlease enter ID: ", sw_data);
			   scanf("%s",temp);
			   xil_printf("%s\r\nASCII code of %s: ",temp,temp);
			   for(int i=0;i<9;i++) member3[i]=temp[i];
			   for(int i=0;i<9;i++){
			   xil_printf("%d",member3[i]);
			   for(int delay = 0 ; delay < DELAY ; delay++ )
				   ;
			   }

			   xil_printf("hash= %d\r\n",hash(member3));
			   xil_printf("\r\n");
		  }
		   break;


		}
	}



}








