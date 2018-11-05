/*
 * hw3_1.c
 *
 *  Created on: 2018¦~11¤ë1¤é
 *      Author: user1
 */
#include <stdio.h>
#include "xil_printf.h"
int main(int argc , char* argv[]){
	int number;

	while(1){
	int count=0;

	xil_printf("Please enter a number in decimal: ");
	scanf("%d",&number);
	xil_printf("%d \r\n",number);

	while(number>0){
		if(number%2==1){
			count++;
		}
		number=number/2;
	}

	if(count%2){
		xil_printf("Even parity= 1 \r\n");
	}
	else{
		xil_printf("Even parity= 0 \r\n");
	}
	}

	return 0;
}

