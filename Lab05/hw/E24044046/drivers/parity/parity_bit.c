

/***************************** Include Files *******************************/
#include "parity_bit.h"

/************************** Function Definitions ***************************/
u32 parity_bit(UINTPTR baseAddr, u32 A){

	u32 parity_bit;

	PARITY_BIT_mWriteReg(baseAddr, 0, A);
	parity_bit = PARITY_BIT_mReadReg (baseAddr, 4);

	return parity_bit;
}
