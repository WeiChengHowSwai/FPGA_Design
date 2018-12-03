

/***************************** Include Files *******************************/
#include "djb2.h"

/************************** Function Definitions ***************************/
u32 hash(UINTPTR baseAddr, u32 A) {
	u32 P;
	DJB2_mWriteReg(baseAddr, 0, A);
	P = DJB2_mReadReg (baseAddr, 4);
	return P;
}
