/*
 * main.c
 *
 *  Created on: 2018�~12��2��
 *      Author: acer
 */
#include <stdio.h>
#include "xil_types.h"
#include "xil_printf.h"
#include "sleep.h"
#include "xparameters.h"
#include "djb2_hash.h"
#include "arithmetic.h"
#include "parityCheck.h"
#include "pwm_controller_ip.h"


/*Software implementation of djb2*/
u32 djb2(char* str, int len)
{
	u32 hash = 5381U;
	int i = 0;
	for(i = 0; i < len; i++)
	{
		hash = (hash << 5) + hash + str[i];
	}
	return hash;
}

int main()
{
	/*example of using the drivers*/

	/*djb2*/

	
	char str[20] = "ZombieLandSaga";
	xil_printf("Input String - %s\r\n", str);
	xil_printf("-----------------------\r\n");
	xil_printf("Software DJB2 - 0x%x\r\n", djb2(str, strlen(str)));
	xil_printf("Hardware DJB2 - 0x%x\r\n", djb2_hash(XPAR_DJB2_HASH_0_S00_AXI_BASEADDR, (u8*)str, strlen(str)));
	char str2[20] = "Alicization";
	//char str2[20] = "0";
	xil_printf("Input String - %s\r\n", str2);
	xil_printf("-----------------------\r\n");
	xil_printf("Software DJB2 - 0x%x\r\n", djb2(str2, strlen(str2)));
	xil_printf("Hardware DJB2 - 0x%x\r\n", djb2_hash(XPAR_DJB2_HASH_0_S00_AXI_BASEADDR, (u8*)str2, strlen(str2)));
	return 0;
	

	/*djb2*/

	/*arithmetic*/

	/*
	int result = 0;
	result = Arith(XPAR_ARITHMETIC_0_S00_AXI_BASEADDR,10,10,'+');
	printf("10 +  10 = %d\r\n",result);
	result = Arith(XPAR_ARITHMETIC_0_S00_AXI_BASEADDR,10,10,'-');
	printf("10 -  10 = %d\r\n",result);
	result = Arith(XPAR_ARITHMETIC_0_S00_AXI_BASEADDR,10,10,'*');
	printf("10 *  10 = %d\r\n",result);
	result = Arith(XPAR_ARITHMETIC_0_S00_AXI_BASEADDR,-5,10,'+');
	printf("-5 +  10 = %d\r\n",result);
	result = Arith(XPAR_ARITHMETIC_0_S00_AXI_BASEADDR,-5,10,'-');
	printf("-5 -  10 = %d\r\n",result);
	result = Arith(XPAR_ARITHMETIC_0_S00_AXI_BASEADDR,-5,10,'*');
	printf("-5 *  10 = %d\r\n",result);
	result = Arith(XPAR_ARITHMETIC_0_S00_AXI_BASEADDR,5,-10,'+');
	printf(" 5 + -10 = %d\r\n",result);
	result = Arith(XPAR_ARITHMETIC_0_S00_AXI_BASEADDR,5,-10,'-');
	printf(" 5 - -10 = %d\r\n",result);
	result = Arith(XPAR_ARITHMETIC_0_S00_AXI_BASEADDR,5,-10,'*');
	printf(" 5 * -10 = %d\r\n",result);
	result = Arith(XPAR_ARITHMETIC_0_S00_AXI_BASEADDR,-5,-10,'+');
	printf("-5 + -10 = %d\r\n",result);
	result = Arith(XPAR_ARITHMETIC_0_S00_AXI_BASEADDR,-5,-10,'-');
	printf("-5 - -10 = %d\r\n",result);
	result = Arith(XPAR_ARITHMETIC_0_S00_AXI_BASEADDR,-5,-10,'*');
	printf("-5 * -10 = %d\r\n",result);
	*/

	/*arithmetic*/

	/*parity check*/

	/*
	u32	data, Parity;
	printf("Program Start.\r\nInput data:");
	while(getchar() != EOF) {
		scanf("%d", &data);

		Parity = parity(XPAR_PARITYCHECK_0_S00_AXI_BASEADDR, data);
		printf("even parity bit of %d is %d\n\rInput data:", data,Parity);

	}
	printf("Program End.\r\n");
    return 0;

    */


	/*pwm_control*/

	/*
	int brightness1 = 1;
		int brightness2 = 51;
		int brightness3 = 101;
		int brightness4 = 151;
		int increase1 = 1;
		int increase2 = 1;
		int increase3 = 1;
		int increase4 = 1;
		while(1){
			if(brightness1 >= 255){
				increase1 *= -1;
			}
			if(brightness1 <= 0){
				increase1 *= -1;
			}
			if(brightness2 >= 255){
				increase2 *= -1;
			}
			if(brightness2 <= 0){
				increase2 *= -1;
			}
			if(brightness3 >= 255){
				increase3 *= -1;
			}
			if(brightness3 <= 0){
				increase3 *= -1;
			}
			if(brightness4 >= 255){
				increase4 *= -1;
			}
			if(brightness4 <= 0){
				increase4 *= -1;
			}
			pwm_out(XPAR_PWM_CONTROLLER_IP_0_S00_AXI_BASEADDR,0,brightness1);
			pwm_out(XPAR_PWM_CONTROLLER_IP_0_S00_AXI_BASEADDR,1,brightness2);
			pwm_out(XPAR_PWM_CONTROLLER_IP_0_S00_AXI_BASEADDR,2,brightness3);
			pwm_out(XPAR_PWM_CONTROLLER_IP_0_S00_AXI_BASEADDR,3,brightness4);
			printf("%d %d %d %d\r\n",brightness1,brightness2,brightness3,brightness4);
			brightness1 += increase1;
			brightness2 += increase2;
			brightness3 += increase3;
			brightness4 += increase4;
			usleep(10000);
		}

	 */

}


