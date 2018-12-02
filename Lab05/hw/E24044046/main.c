
#include <stdio.h>
#include "xil_printf.h"
#include "xil_io.h"
#include "xparameters.h"
#include "arithmetic.h"
#include "PWM_controller.h"


int main()
{
	u32 N;
	u32	A,B,C,D,result;
	u32 a,b,c,d;
	u32 next_step;
	u32 after_sorting[4]={};

	char hash_data[3]={};
	char operator;
	printf("Program Start.\n\r");
	while(getchar() != EOF) {
		printf("\nPlease enter which program you want to excecute:\r\n program 1 for sorting \
				\r\n program 2 for arithmetic \r\n program 3 for parity generator \
				\r\n program 4 for djb2 hash function\r\n program 5 for PWM controller\r\nYour choose (1~5): ");

		scanf("%d", &N);

		switch(N){

		//program 1
		case 1:
			printf(" %d\r\nProgram %d starts.\r\n", N, N);
			printf("Input four numbers not greater than 7:\r\n");
			scanf("%d %d %d %d", &A,&B,&C,&D);
			printf(" %d %d %d %d \r\n", A,B,C,D);
			sorting(XPAR_SORTING_0_S00_AXI_BASEADDR, A, B,C,D,after_sorting);
			printf("After sorting:");
			for(int i=0;i<=3;i++)
				printf("%d ",after_sorting[i]);
			break;

		//program 2
		case 2:
		printf(" %d\r\nProgram %d starts.\r\n", N, N);
		printf("Input A (not greater than 7):");
		scanf("%d", &A);
		printf(" %d\r\n", A);
		printf("Input operator(+, - or *):");
		scanf("%s", &operator);
		if(operator==43)
			printf(" %s\r\n", "+");
		else if(operator==45)
			printf(" %s\r\n", "-");
		else if(operator==42)
			printf(" %s\r\n", "*");
		printf("Input B (not greater than 7):");
		scanf("%d", &B);
		printf(" %d\r\n", B);

		result = arithmetic(XPAR_ARITHMETIC_0_S00_AXI_BASEADDR, A, B,operator);
		if(operator==45&&A<B)
			printf("result = %d\n\r", result-64);
		else
			printf("result = %d\n\r", result);
		break;

		//program 3
		case 3:
		printf(" %d\r\nProgram %d starts.\r\n", N, N);
		printf("Input an integer:");
		scanf("%d", &A);
		printf(" %d\r\n", A);
		result=parity_bit(XPAR_PARITY_BIT_0_S00_AXI_BASEADDR, A);
		printf("result = %d\n\r", result);
		break;

		//program 4
		case 4:
		printf(" %d\r\nProgram %d starts.\r\n", N, N);
		printf("Input a string of three characters:");
		scanf("%s", &hash_data);
		printf(" %s\r\n", hash_data);
		A=hash_data[0];
		B=hash_data[1];
		C=hash_data[2];
//		printf(" %d %d %d\r\n", A,B,C);
		result=djb2_hash(XPAR_DJB2_HASH_0_S00_AXI_BASEADDR, A,B,C);
		printf("result = %u\n\r", result);
		break;

		//program 5
		case 5:
		printf(" %d\r\nProgram %d starts.\r\n", N, N);
		printf("Input the PWM time of RED(0~255):");
		scanf("%d", &A);
		printf(" %d\r\n", A);
		printf("Input the PWM time of GREEN(0~255):");
		scanf("%d", &B);
		printf(" %d\r\n", B);
		printf("Input the PWM time of BLUE(0~255):");
		scanf("%d", &C);
		printf(" %d\r\n", C);
		PWM_controller(XPAR_PWM_CONTROLLER_0_S00_AXI_BASEADDR, A,B,C);
		while(next_step!=4){
		printf("What's your next step?\r\n1.Reset PWM of RED. \r\n2.Reset PWM of GREEN.\
				\r\n3.Reset PWM of BLUE.\r\n4.Stop the program.\r\nYour choose:");
		scanf("%d", &next_step);
		printf("%d\r\n",next_step);
		switch(next_step){
		case 1:
			printf("Input the PWM time of RED(0~255):");
			scanf("%d", &A);
			printf(" %d\r\n", A);
			PWM_controller(XPAR_PWM_CONTROLLER_0_S00_AXI_BASEADDR, A,B,C);
			break;
		case 2:
			printf("Input the PWM time of GREEN(0~255):");
			scanf("%d", &B);
			printf(" %d\r\n", B);
			PWM_controller(XPAR_PWM_CONTROLLER_0_S00_AXI_BASEADDR, A,B,C);
			break;
		case 3:
			printf("Input the PWM time of BLUE(0~255):");
			scanf("%d", &C);
			printf(" %d\r\n", C);
			PWM_controller(XPAR_PWM_CONTROLLER_0_S00_AXI_BASEADDR, A,B,C);
			break;
		case 4:
			PWM_controller(XPAR_PWM_CONTROLLER_0_S00_AXI_BASEADDR, 0,0,0);
			printf("Program 5 ends.\r\n");
			break;
		default:
			printf("No such command!\r\n");
			break;
		}
		}
		break;
		default:
			printf(" %d\r\nNo such program!\r\n", N);
			break;
		}

	}

	printf("Program End.\n\r");
    return 0;
}


