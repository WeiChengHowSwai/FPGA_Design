/*
 * hw3_1.c
 *
 *  Created on: 2018¦~11¤ë1¤é
 *      Author: user1
 */
#include <stdio.h>
#include "xil_printf.h"
int main(int argc , char* argv[]){
	int number=37;
	int array[32];
	int i=0;
	int count=0;
	xil_printf("Number = %d \r\n",number);
	//printf("a");
	for(int j=0;j<32;j++){
		array[j]=0;
		//printf("%d\n",array[j]);
	}
	while(number>0){
		array[i]=number%2;
		number=number/2;
		i++;
	}
	//parity
	for(int j=0;j<32;j++){
		if(array[j]==1){
			count++;
		}
	}
	//xil_printf("%d",count);
	if(count%2){
		xil_printf("Even parity= 1 \r\n");
	}
	else{
		xil_printf("Even parity= 0 \r\n");
	}

	return 0;
}


