

/***************************** Include Files *******************************/
#include "parity.h"

/************************** Function Definitions ***************************/

u32 parity(UINTPTR baseAddr, u32 number) {
	u32 result=0;

	PARITY_mWriteReg(baseAddr, 8, number);


	result = PARITY_mReadReg (baseAddr, 4)>>4;



	return result ;
}
