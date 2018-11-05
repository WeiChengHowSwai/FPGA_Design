
#include "xparameters.h"
#include "xgpio.h"
#include "xil_printf.h"

#define SW_DEVICE_ID  XPAR_GPIO_0_DEVICE_ID
#define LED_DEVICE_ID  XPAR_GPIO_1_DEVICE_ID

#define LED_DELAY     10000000

XGpio LED_Gpio, SW_Gpio;

#include <stdio.h>
typedef union {
  unsigned long l;
  unsigned char c[4];
} EndianTest;
int main() {
  EndianTest et;
  et.l = 0x12345678;
  xil_printf("it is :");
  if (et.c[0] == 0x78 && et.c[1] == 0x56 && et.c[2] == 0x34 && et.c[3] == 0x12) {
	  xil_printf("Little Endian\r\n");
  } else if (et.c[0] == 0x12 && et.c[1] == 0x34 && et.c[2] == 0x56 && et.c[3] == 0x78) {
	  xil_printf("Big Endian\r\n");
  } else {
	  xil_printf("Unknown Endian\r\n");
  }
  xil_printf("0x%lX is:\r\n", et.l);
  for (int i = 0; i < 4; i++) {
	  xil_printf("%p : 0x%02X\r\n", &et.c[i], et.c[i]);
  }

		return XST_SUCCESS;
}
