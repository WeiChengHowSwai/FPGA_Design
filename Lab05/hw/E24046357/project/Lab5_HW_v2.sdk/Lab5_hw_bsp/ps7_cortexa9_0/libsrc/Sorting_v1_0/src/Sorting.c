

/***************************** Include Files *******************************/
#include "Sorting.h"

/************************** Function Definitions ***************************/
void Sorting(UINTPTR baseaddr , u32 data_in[] , u32 data_out[] )
{

	SORTING_mWriteReg(baseaddr , 0 , 0x01);
	for(int i = 0 ; i < 8 ; i++) SORTING_mWriteReg(baseaddr , ((i+1)*4) , data_in[i] );
	SORTING_mWriteReg(baseaddr , 0 , 0x00);
	SORTING_mWriteReg(baseaddr , 0 , 0x02);
	for(int i = 0 ; i < 8 ; i++) data_out[i] = SORTING_mReadReg(baseaddr , (36+i*4) );


}
