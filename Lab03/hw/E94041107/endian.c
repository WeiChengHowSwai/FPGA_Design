#include <stdio.h>
#include <stdlib.h>

int main()
{
	int a = 0x1234 ;
	char b = *(char*)&a;
	if(b==0x12)
		printf("big endian\n");
	else
		printf("little endian");

	return 0 ;
}
