#include "xil_printf.h"
#include "xil_types.h"
#include <stdio.h>
int main() {
	char data[32];
	int count;
	int i;
while(1){
		xil_printf("Input a 32bits data:\r\n");
		scanf("%s",data);
		for(i=0;i<32;i++){
			if(data[i]=='1')count++;

		}
		if(count%2==1){
			xil_printf("odd parity check:\r\n");
			xil_printf("%s\r\n",data);
			xil_printf("                               ^parity bit\r\n");

			if(data[31]=='1')data[31]='0';
			else data[31]='1';
			xil_printf("even parity check:\r\n");
			xil_printf("%s\r\n",data);
			xil_printf("                               ^parity bit\r\n");


		}
		if(count%2==0){
			xil_printf("even parity check:\r\n");
			xil_printf("%s\r\n",data);
			xil_printf("                               ^parity bit\r\n");

			if(data[31]=='1')data[31]='0';
			else data[31]='1';
			xil_printf("odd parity check:\r\n");
			xil_printf("%s\r\n",data);
			xil_printf("                               ^parity bit\r\n");


		}
	}



	return 0;
}
