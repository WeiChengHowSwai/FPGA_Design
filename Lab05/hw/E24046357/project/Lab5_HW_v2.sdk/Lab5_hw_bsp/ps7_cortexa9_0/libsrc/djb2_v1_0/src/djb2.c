

/***************************** Include Files *******************************/
#include "djb2.h"

/************************** Function Definitions ***************************/
u32 djb2(UINTPTR baseaddr , char data_in[] , int length){
	u32 result = 5381;

	for(int i = 0 ; i < length ; i++)
	{
		DJB2_mWriteReg(baseaddr , 0 , data_in[i] );

		DJB2_mWriteReg(baseaddr , 4 , result );

		result = DJB2_mReadReg(baseaddr , 8);
	}

	return result ;
}
