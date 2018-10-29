/*
/*
 * main.c
 *
 *  Created on: Oct 28, 2018
 *      Author: WeiCheng Chen
 */
#include "xil_printf.h"
#include <stdio.h>

//Logical functions definitions
#define RIGHTROT(x , n) (( (x) >> (n) ) | ( (x) << (32 - (n) )))
#define RIGHTSHI(x , n) (( (x) >> (n) ))
#define CH(x , y , z)   (( (x) & (y) ) ^ ( (~(x)) & (z) ))
#define MAJ(x , y , z)  (( (x) & (y) ) ^ ( (x) & (z) ) ^ ( (y) & (z) ))
#define SUM0(x)			((RIGHTROT(x,2)) ^ (RIGHTROT(x,13)) ^ (RIGHTROT(x,22)))
#define SUM1(x)			((RIGHTROT(x,6)) ^ (RIGHTROT(x,11)) ^ (RIGHTROT(x,25)))
#define SIGMA0(x)		((RIGHTROT(x,7)) ^ (RIGHTROT(x,18)) ^ (RIGHTSHI(x,3)))
#define SIGMA1(x)		((RIGHTROT(x,17)) ^ (RIGHTROT(x,19)) ^ (RIGHTSHI(x,10)))

//Constant words definition
static const unsigned int K[64] = {
	0x428a2f98,0x71374491,0xb5c0fbcf,0xe9b5dba5,0x3956c25b,0x59f111f1,0x923f82a4,0xab1c5ed5,
	0xd807aa98,0x12835b01,0x243185be,0x550c7dc3,0x72be5d74,0x80deb1fe,0x9bdc06a7,0xc19bf174,
	0xe49b69c1,0xefbe4786,0x0fc19dc6,0x240ca1cc,0x2de92c6f,0x4a7484aa,0x5cb0a9dc,0x76f988da,
	0x983e5152,0xa831c66d,0xb00327c8,0xbf597fc7,0xc6e00bf3,0xd5a79147,0x06ca6351,0x14292967,
	0x27b70a85,0x2e1b2138,0x4d2c6dfc,0x53380d13,0x650a7354,0x766a0abb,0x81c2c92e,0x92722c85,
	0xa2bfe8a1,0xa81a664b,0xc24b8b70,0xc76c51a3,0xd192e819,0xd6990624,0xf40e3585,0x106aa070,
	0x19a4c116,0x1e376c08,0x2748774c,0x34b0bcb5,0x391c0cb3,0x4ed8aa4a,0x5b9cca4f,0x682e6ff3,
	0x748f82ee,0x78a5636f,0x84c87814,0x8cc70208,0x90befffa,0xa4506ceb,0xbef9a3f7,0xc67178f2
};

int main()
{
	unsigned int a, b, c, d, e, f, g, h;


	unsigned int i, j , T1, T2;

	char message[100];
	unsigned int data[64];
	unsigned int W[64];
	int size_mes ;

	while(1){

	a = 0x6a09e667;
	b = 0xbb67ae85;
	c = 0x3c6ef372;
	d = 0xa54ff53a;
	e = 0x510e527f;
	f = 0x9b05688c;
	g = 0x1f83d9ab;
	h = 0x5be0cd19;
	size_mes = 0 ;

	xil_printf( "Please enter the ID :" );
	scanf("%s", message );
	xil_printf("%s\r\n",message);

	//Count the size of the message.
	for (i = 0; i < 100; i++)
	{
		if (message[i] != NULL)
		{
			size_mes++;
			data[i] = message[i];
		}
		else break;
	}
	data[i] = 0x80 ;
	i = i + 1;
	for (; i < 62; i++)
	{
		data[i] = 0x00;
	}
	data[62] = ((size_mes * 8) >> 8);
	data[63] = ((size_mes * 8) & 0x00ff);

	for (i = 0, j = 0; i < 16; i++, j = j + 4) W[i] = (data[j] << 24) | (data[j+1] << 16) | (data[j+2] << 8) | (data[j+3]);
	for (; i < 64; i++) W[i] = SIGMA1(W[i - 2]) + W[i - 7] + SIGMA0(W[i - 15]) + W[i - 16];

	xil_printf("The padded message is:\r\n");
	for (i = 0; i < 64; i++)
		{
			xil_printf("%x ",data[i]);
		}
	xil_printf("\r\n");


	for (i = 0; i < 64; i++)
	{
		T1 = h + SUM1(e) + CH(e, f, g) + K[i] + W[i];
		T2 = SUM0(a) + MAJ(a, b, c);
		h = g;
		g = f;
		f = e;
		e = d + T1;
		d = c;
		c = b;
		b = a;
		a = T1 + T2;
	}
	a = a + 0x6a09e667;
	b = b + 0xbb67ae85;
	c = c + 0x3c6ef372;
	d = d + 0xa54ff53a;
	e = e + 0x510e527f;
	f = f + 0x9b05688c;
	g = g + 0x1f83d9ab;
	h = h + 0x5be0cd19;

	xil_printf("The message digest is : %x %x %x %x %x %x %x %x\r\n",a,b,c,d,e,f,g,h);

	}
	return 0;
}




