#include "xil_printf.h"
#include <stdio.h>

int main() {

	while(1){
		 u32 number;//integer is 4 bytes(32 bits)
//		 char binary[32]={0};

		 xil_printf("Please enter a number less than 4,294,967,296(32-bit number): ");
		 scanf("%u",&number);
		 xil_printf("%u\r\n",number);

//		 xil_printf("binary representation:");
		 int sum=0;//calculate how many 1s
//		 int i=31;
		 while(number!=0){
//			binary[i]=number%2;
//			i--;
			if(number%2==1) sum++;
			number=number/2;
		 }
/*		 for(int i=0;i<32;i++){
			 xil_printf("%d",binary[i]);
		 }*/
		 int parity_bit=sum%2;
		 xil_printf("\r\nThere are %d 1s.\r\nThe parity bit is %d.\r\n\r\n",sum,parity_bit);
		}

}
