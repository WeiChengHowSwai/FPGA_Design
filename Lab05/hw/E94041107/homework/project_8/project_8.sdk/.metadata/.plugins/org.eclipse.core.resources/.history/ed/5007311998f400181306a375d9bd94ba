/*
 * main.c
 *
 *  Created on: 2018¦~11¤ë30¤é
 *      Author: ruyuan
 */
#include <stdio.h>
#include "xil_printf.h"
#include "xil_io.h"
#include "xparameters.h"
#include "alu.h"
#include "paritybit.h"
#include "hash.h"
#include "pwm.h"
#include "sort.h"

int main()
{
	u32	A, B, C, Sum,number,X,Y,sel,alu_sum,parity_data,parity_sum,pwm_out,pwm_in,no1,no2,no3;
	u32 hout ;
	char hin[4] ;
	u32 in;

	printf("Program Start.\n\r");


	while(getchar() != EOF) {
	   printf("1.sort  2.alu  3.parity  4.hash function  5.PWM controller");
	   scanf("%d", &number);
	   printf(" %d\r\n", number);
       if(number==1){
		printf("Input A:");
		scanf("%d", &A);
		printf(" %d\r\n", A);
		printf("Input B:");
		scanf("%d", &B);
		printf(" %d\r\n", B);
		printf("Input C:");
		scanf("%d", &C);
		printf(" %d\r\n", C);


		Sum = sort1(XPAR_SORT_0_S00_AXI_BASEADDR, A, B, C);

		no1=Sum/64;
		no2=(Sum-64*(no1))/8;
		no3=Sum-64*(no1)-8*no2;

		printf("no1,no2,no3 = %d%d%d\n\r", no1,no2,no3);
		}

		if(number==2){
		printf("Input X:");
		scanf("%d", &X);
		printf(" %d\r\n", X);
		printf("Input Y:");
		scanf("%d", &Y);
		printf(" %d\r\n", Y);
		printf("Input sel(0.+ 1.- 2.*):");
		scanf("%d", &sel);
		printf(" %d\r\n", sel);


		alu_sum = alu1(XPAR_ALU_0_S00_AXI_BASEADDR, X, Y, sel);
        if(sel==0)
		{printf("X + Y = %d\n\r", alu_sum);}
        if(sel==1)
        {printf("X - Y = %d\n\r", alu_sum);}
        if(sel==2)
        {printf("X * Y = %d\n\r", alu_sum);}
		}

		if(number==3){
		printf("Input parity_data:");
		scanf("%d", &parity_data);
		printf(" %d\r\n", parity_data);


		parity_sum = parity1(XPAR_PARITYBIT_0_S00_AXI_BASEADDR, parity_data);

		if(parity_sum==1)
		{printf("even=0 , odd=1 \n\r");}
		if(parity_sum==2)
		{printf("even=1 , odd=0 \n\r");}
		}

		if(number==4){
		printf("please type a 4 byte string.");
		scanf("%s",&hin);
		printf("%s\r\n",hin);
		in=hin[0]+(hin[1]<<8)+(hin[2]<<16)+(hin[3]<<24);
		hout = hout1(XPAR_HASH_0_S00_AXI_BASEADDR, in);
		printf("After hash function = %d\n\r", hout);
		}

		if(number==5){
		printf("please appreciate the led controlled by PWM");
		scanf("%d",&pwm_in);
		printf("%d\r\n",pwm_in);
		pwm_out = pwm1(XPAR_PWM_0_S00_AXI_BASEADDR, pwm_in);
		}

	}
	printf("Program End.\n\r");
    return 0;
}








