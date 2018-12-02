


/***************************** Include Files *******************************/
#include "parity.h"

/************************** Function Definitions ***************************/
u32 parity(UINTPTR baseAddr, u32 A) {
	u32 P;
	PARITY_mWriteReg(baseAddr, 0, A);
	P = PARITY_mReadReg (baseAddr, 4);
	return P;
}
