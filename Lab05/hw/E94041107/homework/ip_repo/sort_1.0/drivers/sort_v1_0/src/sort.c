

/***************************** Include Files *******************************/
#include "sort.h"

/************************** Function Definitions ***************************/
u32 sort1(UINTPTR baseAddr, u32 A, u32 B, u32 C) {
	u32 Sum;
	u32 data = A + (B << 3) +(C << 6);
	SORT_mWriteReg(baseAddr, 0, data);
	Sum = SORT_mReadReg (baseAddr, 4);
	return Sum;
}
