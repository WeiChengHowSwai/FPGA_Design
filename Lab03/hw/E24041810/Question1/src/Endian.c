/*
 * Endian.c

 *
 *  Created on: 2018¦~11¤ë2¤é
 *      Author: user1
 */
#include <stdio.h>
#include "xil_printf.h"

typedef union{
	unsigned long l;
	unsigned char c[4];
} EndianTest;

int main(int argc , char* argv[]){
	EndianTest et;
	et.l=0x12345678;
	if(et.c[0]==0x78 && et.c[1]==0x56 && et.c[2]==0x34 && et.c[3]==0x12){
	  xil_printf("little endian.\r\n");
	}
    else if(et.c[0]==0x12 && et.c[1]==0x34 && et.c[2]==0x56 && et.c[3]==0x78){
	  xil_printf("big endian.\r\n");
	}
	else{
	  xil_printf("unknown endian.\r\n");
	}

	return 0;
}



