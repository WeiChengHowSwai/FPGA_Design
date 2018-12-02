

/***************************** Include Files *******************************/
#include "paritybit.h"

/************************** Function Definitions ***************************/
u32 parity1(UINTPTR baseAddr, u32 parity_data){
	u32 parity_sum;
	u32 data3 = parity_data;
	PARITYBIT_mWriteReg(baseAddr, 0, data3);
	parity_sum = PARITYBIT_mReadReg (baseAddr, 4);
	return parity_sum;

}
