/*
 * main.c
 *
 *  Created on: 2018年12月2日
 *      Author: ASUS
 */
#include "pwmip.h"
#include "djbip.h"
#include "mathip.h"
#include "parityip.h"
#include "sortip.h"
#include <stdio.h>
#include "xil_printf.h"
#include "xil_io.h"
#include "xparameters.h"



int main(){
	u32	datain1,datain2,datain3,datain4,datain5,datain6,datain7,datain8;
	u32 dataout[8] = {0};
	s32 a,b,answer,datain;
	u32 operand;
	char operands,color;
	char c;
	int k;
	u32 hash=0;
	char s[100]={0};
	while(1){
		int todo = 0;
		printf("Type 1 for sort, \r\n"
				"type 2 for arithmetic, \r\n"
				"type 3 for parity generator, \r\n"
				"type 4 for hash (djb2), \r\n"
				"type 5 for PWM controller, \r\n"
				"What do you want to do : ");
		scanf(" %d",&todo);
		printf(" %d\r\n",todo);
		switch(todo){
		case 1://sort

			while(1) {
				printf("Input 1 :");
				scanf("%d", &datain1);
				printf(" %d\r\n", datain1);
				printf("Input 2:");
				scanf("%d", &datain2);
				printf(" %d\r\n", datain2);
				printf("Input 3:");
				scanf("%d", &datain3);
				printf(" %d\r\n", datain3);
				printf("Input 4:");
				scanf("%d", &datain4);
				printf(" %d\r\n", datain4);
				printf("Input 5:");
				scanf("%d", &datain5);
				printf(" %d\r\n", datain5);
				printf("Input 6:");
				scanf("%d", &datain6);
				printf(" %d\r\n", datain6);
				printf("Input 7:");
				scanf("%d", &datain7);
				printf(" %d\r\n", datain7);
				printf("Input 8:");
				scanf("%d", &datain8);
				printf(" %d\r\n", datain8);


				sort(dataout,XPAR_SORTIP_0_S00_AXI_BASEADDR,datain1,datain2,datain3,datain4,datain5,datain6,datain7,datain8);
				printf("sort result yabi:\n\r");
				for(int j=0;j<8;j++)
					printf("%d\n\r", dataout[j]);
			}

			break;

		case 2://arithmetic

				while(1){
				printf("Input a:");
				scanf("%d", &a);
				printf(" %d\r\n",a);
				printf("Input b:");
				scanf("%d", &b);
				printf(" %d\r\n",b);
				while(1){
					printf("Input operand(+,-,*):");
					scanf(" %c", &c);
					printf(" %c\r\n",c);
					if(c == '+'){
							operand = 0;
							break;
						}
						else if(c == '-'){
							operand = 1;
							break;
						}
						else if(c == '*'){
							operand = 2;
							break;
						}
						else{
							printf("plz type +,-,*");
						}
				}

				answer = math(XPAR_MATHIP_0_S00_AXI_BASEADDR,a,b,operand);
				printf("Answer is : %d\r\n",answer);
				}

			break;

		case 3://parity

				while(1){
				printf("Input 32bit number : ");
				scanf("%d", &datain);
				printf(" %d\r\n",datain);

				answer = parity(XPAR_PARITYIP_0_S00_AXI_BASEADDR,datain);
				printf("Your input number in binary : ");
				for (int c = 31; c >= 0; c--)
				  {
				    k = datain >> c;

				    if (k & 1)
				      printf("1");
				    else
				      printf("0");
				  }
				printf("\r\nAnswer is : %d\r\n",answer);
				}

			break;

		case 4://djb2


				while(getchar() != EOF) {
					printf("Input :");
					scanf("%s", &s);
					printf("%s\n\r",s);
					hash=djb(XPAR_DJBIP_0_S00_AXI_BASEADDR,s);
					printf("djb32 : %x\n\r",hash);



				}

			break;

		case 5://PWM

				pwm(XPAR_PWMIP_0_S00_AXI_BASEADDR, 0, 1, 0);
				pwm(XPAR_PWMIP_0_S00_AXI_BASEADDR, 0, 0, 0);
				pwm(XPAR_PWMIP_0_S00_AXI_BASEADDR,3,1,0);
				while(1){
				printf("What color do you wnat to control? (R or G or B) : ");
				scanf(" %c", &color);
				printf(" %c\r\n",color);
				printf("plz type '+' increase or '-'decrease : ",operands);
				scanf(" %c" , &operands);
				printf(" %c\r\n",operands);

				if(color == 'R'){
					if(operands == '+'){
						pwm(XPAR_PWMIP_0_S00_AXI_BASEADDR,0,1,1);
						pwm(XPAR_PWMIP_0_S00_AXI_BASEADDR,0,1,0);
					}
					else if(operands == '-'){
						pwm(XPAR_PWMIP_0_S00_AXI_BASEADDR,0,0,1);
						pwm(XPAR_PWMIP_0_S00_AXI_BASEADDR,0,0,0);
					}
					else
						printf("plz type + or - \r\n");
				}else if(color == 'G'){
					if(operands == '+'){
						pwm(XPAR_PWMIP_0_S00_AXI_BASEADDR,1,1,1);
						pwm(XPAR_PWMIP_0_S00_AXI_BASEADDR,1,1,0);
					}
					else if(operands == '-'){
						pwm(XPAR_PWMIP_0_S00_AXI_BASEADDR,1,0,1);
						pwm(XPAR_PWMIP_0_S00_AXI_BASEADDR,1,0,0);
					}
					else
						printf("plz type + or - \r\n");
				}else if(color == 'B'){
					if(operands == '+'){
						pwm(XPAR_PWMIP_0_S00_AXI_BASEADDR,2,1,1);
						pwm(XPAR_PWMIP_0_S00_AXI_BASEADDR,2,1,0);
					}
					else if(operands == '-'){
						pwm(XPAR_PWMIP_0_S00_AXI_BASEADDR,2,0,1);
						pwm(XPAR_PWMIP_0_S00_AXI_BASEADDR,2,0,0);
					}
					else
						printf("plz type + or - \r\n");
				}else{
					printf("plz type R or G or B\r\n");
				}

			}

			break;
		default:
			printf("plz type 1~5 !!!\r\n");
			break;
		}
	}
	return;
}
