#include "xil_printf.h"
#include "xil_types.h"
#include <stdio.h>
int main() {
	int data;
	int out[32];
	int count;
	int i;
	while(1){
		count=0;
		xil_printf("Input the data:\r\n");
		scanf("%d",&data);
		xil_printf("%d \r\n",data);
		if(data > 4294967295 || data < 0){
			xil_printf("It's a unusable data,please input again!");
			continue;
		}
		xil_printf("32bits output:");
		for(i=0;i<32;i++){
			out[i]=(data%2);
			data=data/2;
		}
		for(i=31;i>=0;i--){
			xil_printf("%d",out[i]);
		}


		for(i=0;i<32;i++){
			if(out[i]==1)count++;
		}
		if(count%2==1){
		xil_printf("\nodd parity bit:1\r\n");
		}
		else xil_printf("\nodd parity bit:0\r\n");


	}
}
