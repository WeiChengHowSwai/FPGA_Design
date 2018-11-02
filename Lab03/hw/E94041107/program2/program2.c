#include "stdio.h"



int main() {
	int array[32]={0};
	int b , counter=0;


	printf("\n\rplease type 32-bit digit :\n\r");

	for(int a =0 ; a<=31 ; a++)
	{
    	 scanf("%d",&array[a]) ;
	}

	for(int d = 0 ; d<=31 ; d++)
	{
 		printf("%d",array[d]);
	}
    for(int c=0 ; c <=31 ; c++)
    {
    	if(array[c]==1)
    		counter ++ ;
    }

    printf("\n%d",counter) ;
    if((counter%2)==0)
    	{
    		printf("\n\rodd parity bit : 1\n\r");
    		printf("even parity bit : 0");
    	}
    else
    	{
    		printf("\n\rodd parity bit : 0\n\r");
    		printf("even parity bit : 1");
    	}

	return 0;
}


