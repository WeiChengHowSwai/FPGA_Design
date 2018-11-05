/*
 * parityCheck.c
 *
 *  Created on: 2018�~11��2��
 *      Author: Omnom
 */

#include <stdio.h>
#include "xil_printf.h"

void method_1(int);
void method_2(int);

int parityCheck(void) {
    int input;

    xil_printf("test1\r\n\r\n");
    input=0x1001001;
    method_1(input);
    xil_printf("\r\n\r\n");
    method_2(input);
    xil_printf("\r\n\r\n");

    xil_printf("test2\r\n\r\n");
    input=0xf1;
    method_1(input);
    xil_printf("\r\n\r\n");
    method_2(input);
    xil_printf("\r\n\r\n");

    xil_printf("test3\r\n\r\n");
    input=0x3f;
    method_1(input);
    xil_printf("\r\n\r\n");
    method_2(input);
    xil_printf("\r\n\r\n");

    return 0;
}


//O(log_2 n) with n bits
void method_1(int input){
    char bitsize = sizeof(input)<<3;

    bitsize>>=1;
    while (bitsize) {
    	xil_printf("-> %8x xor %8x\r\n",input,input>>bitsize);
        input ^=  (input>>bitsize);
        bitsize >>= 1;
    }
    xil_printf("-> %8x\r\n",input);
    xil_printf("%d\r\n",input&1);
}

//O(k) with k bits are 1
//no need to know the length of input

//with n bits
//average: O(n/2)
//worst:   O(n)

void method_2(int input){

    char parity=0;

    while (input)
    {
        parity = !parity;
        xil_printf("-> %8x and %8x\r\n",input,input - 1);
        input  &= (input - 1);
    }
    xil_printf("-> %8x\r\n",input);
    xil_printf("%d\r\n",parity);
}

