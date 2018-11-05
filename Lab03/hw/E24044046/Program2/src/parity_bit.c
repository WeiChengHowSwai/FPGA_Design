#include "xil_printf.h"
#include <stdio.h>

int main() {

	while(1){
	 char number[32]={};
	 xil_printf("Please enter a 32-bit number: ");
	 scanf("%s",number);
	 xil_printf("%s\r\n",number);
	 int sum=0;
	 for(int i=0;i<32;i++){
		 if(number[i]=='1')
		  sum++;
	 }
	 int parity_bit=sum%2;
	 xil_printf("There are %d 1s.\r\nThe parity bit is %d.\r\n\r\n",sum,parity_bit);
	}
}
