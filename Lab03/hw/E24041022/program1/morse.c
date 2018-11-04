#include "xparameters.h"
#include "xgpio.h"
#include "xil_printf.h"

#define SW_DEVICE_ID  XPAR_GPIO_0_DEVICE_ID
#define BTN_DEVICE_ID  XPAR_GPIO_1_DEVICE_ID
#define LED_DEVICE_ID  XPAR_GPIO_2_DEVICE_ID

#define LED_DELAY     10000000
//#define STUDENT_1   E24041022
//#define STUDENT_2   E24046674
//#define STUDENT_3     E24041894

XGpio LED_Gpio, SW_Gpio, BTN_Gpio;

int main() {
 int LED_Status, SW_Status, BTN_Status;
 u32 led_data = 0x00, sw_data,btn_data;
 int student1[100] ={
   1,0,0,0,//E
   1,0,1,0,7,0,7,0,7,0,0,0,//2
   1,0,1,0,1,0,1,0,7,0,0,0,//4
   7,0,7,0,7,0,7,0,7,0,0,0,//0
   1,0,1,0,1,0,1,0,7,0,0,0,//4
   1,0,7,0,7,0,7,0,7,0,0,0,//1
   7,0,7,0,7,0,7,0,7,0,0,0,//0
   1,0,1,0,7,0,7,0,7,0,0,0,//2
   1,0,1,0,7,0,7,0,7,0,0,0//2
 };
 int student2[100] = {
   1,0,0,0,//E
   1,0,1,0,7,0,7,0,7,0,0,0,//2
   1,0,1,0,1,0,1,0,7,0,0,0,//4
   7,0,7,0,7,0,7,0,7,0,0,0,//0
   1,0,1,0,1,0,1,0,7,0,0,0,//4
   7,0,1,0,1,0,1,0,1,0,0,0,//6
   7,0,1,0,1,0,1,0,1,0,0,0,//6
   7,0,7,0,1,0,1,0,1,0,0,0,//7
   1,0,1,0,1,0,1,0,7,0,0,0//4
 };
 int student3[100] = {
   1,0,0,0,//E
   1,0,1,0,7,0,7,0,7,0,0,0,//2
   1,0,1,0,1,0,1,0,7,0,0,0,//4
   7,0,7,0,7,0,7,0,7,0,0,0,//0
   1,0,1,0,1,0,1,0,7,0,0,0,//4
   1,0,7,0,7,0,7,0,7,0,0,0,//1
   7,0,7,0,7,0,1,0,1,0,0,0,//8
   7,0,7,0,7,0,7,0,1,0,0,0,//9
   1,0,1,0,1,0,1,0,7,0,0,0//4
 };
 /* Initialize the GPIO driver */
 LED_Status = XGpio_Initialize(&LED_Gpio, LED_DEVICE_ID);
 SW_Status = XGpio_Initialize(&SW_Gpio, SW_DEVICE_ID);
 BTN_Status = XGpio_Initialize(&BTN_Gpio, BTN_DEVICE_ID);
 if (LED_Status != XST_SUCCESS || SW_Status|| BTN_Status) {
  xil_printf("Gpio Initialization Failed\r\n");
  return XST_FAILURE;
 }
 /* Set the direction for all signals as inputs except the LED output */
 XGpio_SetDataDirection(&LED_Gpio, 1, 0x00);
 XGpio_SetDataDirection(&SW_Gpio, 1, 0x0f);
 XGpio_SetDataDirection(&BTN_Gpio, 1, 0x01);

 while (1) {
   btn_data = XGpio_DiscreteRead(&BTN_Gpio, 1);

   //xil_printf("switches data = %d\r\n", sw_data);

   if(btn_data == 1){
    sw_data = XGpio_DiscreteRead(&SW_Gpio, 1);
    switch(sw_data){
    case 1:
     xil_printf("Sutdent1's id : E24041022\r\nSutdent1's Morse code : ");
     for(int i = 0; i < 100; i++){
      led_data = student1[i];
      xil_printf("%d ",led_data);
      XGpio_DiscreteWrite(&LED_Gpio, 1, led_data);/* Set the LED to High */
      for (int Delay = 0; Delay < LED_DELAY; Delay++);/* Wait a small amount of time so the LED is visible */
      for (int Delay = 0; Delay < LED_DELAY; Delay++);/* Wait a small amount of time so the LED is visible */
     }
     xil_printf("\r\n");
     break;
    case 2:
     xil_printf("Sutdent2 id : E24046674\r\nSutdent2's Morse code : ");
     for(int i = 0; i < 100; i++){
      led_data = student1[i];
      xil_printf("%d ",led_data);
      XGpio_DiscreteWrite(&LED_Gpio, 1, student2[i]);/* Set the LED to High */
      for (int Delay = 0; Delay < LED_DELAY; Delay++);/* Wait a small amount of time so the LED is visible */
      for (int Delay = 0; Delay < LED_DELAY; Delay++);/* Wait a small amount of time so the LED is visible */
     }
     xil_printf("\r\n");
     break;
    case 3:
     xil_printf("Sutdent3 id : E24041894\r\nSutdent3's Morse code : ");
     for(int i = 0; i < 100; i++){
      led_data = student1[i];
      xil_printf("%d ",led_data);
      XGpio_DiscreteWrite(&LED_Gpio, 1, student3[i]);/* Set the LED to High */
      for (int Delay = 0; Delay < LED_DELAY; Delay++);/* Wait a small amount of time so the LED is visible */
      for (int Delay = 0; Delay < LED_DELAY; Delay++);/* Wait a small amount of time so the LED is visible */
     }
     xil_printf("\r\n");
     break;
    }

   }

  }

  xil_printf("Successfully ran Gpio Example\r\n");
  return XST_SUCCESS;
}
