/*
 * main.c
 *
 *  Created on: 2018?11?30?
 *      Author: USER
 */



#include <stdio.h>
#include "xil_printf.h"
#include "xil_io.h"
#include "xparameters.h"
#include "arithmetic.h"
#include "sorting.h"
#include "hash.h"
#include "PWM.h"
#include "parity.h"

int main()
{
	u32	A, B,OPERATOR, Sum=0, number, evenparity,pwm_time,pwm_result;
	u32	number1,number2,number3,number4,write_en,sort[4]={0},counter=0,read_en=0;
	u32	str=0,hash_result=0;
	char a[4];
	char b='\0';
	int program;
	printf("Program Start.\n\r");
	while(1) {

		printf("Enter the number of 1~5 to choose the program:");
		scanf("%d", &program);
		printf("%d\r\n", program);

		//sort
		if(program==1){
			printf("sorting!\r\n");
			printf("Enter number1(less than 16):");
			scanf("%d", &number1);
			printf(" %d\r\n", number1);
			printf("Enter number2(less than 16):");
			scanf("%d", &number2);
			printf(" %d\r\n", number2);
			printf("Enter number3(less than 16):");
			scanf("%d", &number3);
			printf(" %d\r\n", number3);
			printf("Enter number4(less than 16):");
			scanf("%d", &number4);
			printf(" %d\r\n", number4);

			sorting(sort,XPAR_SORTING_0_S00_AXI_BASEADDR, number1,number2,number3,number4);

			printf("After sorting: ");
			for(int i=0;i<3;i++){
				printf(" %d,", sort[i]);
			}
				printf(" %d\r\n", sort[3]);

		}

		//*******************************
		//arithmetic
		if(program==2){
		printf("arithmetic!\r\n");


		printf("Enter input A(less than 8):");
		scanf("%d", &A);
		printf(" %d\r\n", A);
		printf("OPERATOR(+ or - or *):");
		scanf("%c", &b);
		scanf("%c", &b);
		printf("%c\r\n", b);
		printf("Enter input B(less than 8):");
		scanf("%d", &B);
		printf(" %d\r\n", B);


		if(b=='+'){
			OPERATOR=b-43;
		}
		else if(b=='-'){
			OPERATOR=b-44;
		}
		else if(b=='*'){
			OPERATOR=b-40;
		}

		Sum = arithmetic(XPAR_ARITHMETIC_0_S00_AXI_BASEADDR, A, B,OPERATOR);

		if(OPERATOR==0){
			printf("A + B = %d\n\r", Sum);
		}
		else if(OPERATOR==1){
			if(A>=B){
			printf("A - B = %d\n\r", Sum);
			}
			else {
			printf("A - B = -%d\n\r", Sum);
			}
		}
		else if(OPERATOR==2){
			printf("A * B = %d\n\r", Sum);
		}
		else {
			printf("Can't find this operator\n\r");
		}
		}

	//**********************************************
	//parity
	if(program==3){
		printf("parity!\r\n");
		printf("Enter a 32 bits number:");
		scanf("%d", &number);
		printf(" %d\r\n", number);

		evenparity = parity(XPAR_PARITY_0_S00_AXI_BASEADDR, number);

		printf("The even parity is: %d\n\r", evenparity);
	}

	//**********************************************
	//djb2
	if(program==4){
		printf("djb2 hash!\r\n");
		printf("Enter a string for 4 bytes:");
		scanf("%s", &a);
		printf(" %s\r\n", a);

		str=a[0]+(a[1]<<8)+(a[2]<<16)+(a[3]<<24);

		hash_result=hash(XPAR_HASH_0_S00_AXI_BASEADDR, str);

		printf("After hash: ");
		printf("%d\r\n", hash_result);



	}
	//***********************************************
	//PWM
	if(program==5){
		printf("PWM!\r\n");
		printf("Enter the pwm time:");
		scanf("%d", &pwm_time);
		printf(" %d\r\n", pwm_time);

		pwm(XPAR_PWM_0_S00_AXI_BASEADDR, pwm_time);
	}


	}
	printf("Program End.\n\r");
    return 0;
}
