/*
 * endianCheck.c
 *
 *  Created on: 2018�~11��2��
 *      Author: Omnom
 */

#include <stdio.h>
#include "xil_printf.h"
int main(void)
{
    short int a = 0x1234;
    char *p = (char *)&a;

    xil_printf("p=%x\r\n",*p);

    if(*p == 0x34)
    	xil_printf("Little endian \r\n");
    else if(*p == 0x12)
    	xil_printf("Big endian \r\n");
    else
    	xil_printf("Unknow endian \r\n");

    return 0;
}




