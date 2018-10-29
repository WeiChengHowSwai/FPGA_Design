/*
 * Parity.c
 *
 *  Created on: Oct 29, 2018
 *      Author: ³¯­³§e
 */
#include "xil_printf.h"
#include "xil_types.h"
#include "xparameters.h"
#include <stdio.h>

int main(){

	char data[32] ;
	int count ;

	while(1){

		xil_printf("Enter a 32-bit data :");
		scanf("%s",data);
		xil_printf("%s\r\n",data);
		count = 0 ;

		/* Count the number of '1's */
		for(int i = 0 ; i < 32 ; i++)
		{
			if(data[i] == '1')
				count ++ ;
		}

		/* Determine the parity of the data */
		if((count%2)==1)
			xil_printf("There are odd(%d) 1s.\r\n", count );
		else
			xil_printf("There are even(%d) 1s.\r\n", count );
	}

}

