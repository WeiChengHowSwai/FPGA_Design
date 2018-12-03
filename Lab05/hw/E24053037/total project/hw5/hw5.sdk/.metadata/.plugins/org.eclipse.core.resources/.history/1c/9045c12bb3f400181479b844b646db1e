#include <stdio.h>
#include "xil_printf.h"
#include "xil_io.h"
#include "xparameters.h"
#include "parity.h"


int main()
{
	u32	A, P;
	printf("Program Start.\n\r");
	while(getchar() != EOF) {

		printf("Input A:");
		scanf("%d", &A);
		printf(" %d\r\n", A);


		P = parity(XPAR_PARITY_0_S00_AXI_BASEADDR, A);

		printf("A 's parity bit = %d\n\r", P);

	}
	printf("Program End.\n\r");
    return 0;
}
