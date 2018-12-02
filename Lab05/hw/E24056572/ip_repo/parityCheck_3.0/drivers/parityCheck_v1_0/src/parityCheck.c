

/***************************** Include Files *******************************/
#include "parityCheck.h"

/************************** Function Definitions ***************************/
u32 parity(UINTPTR baseAddr, u32 data) {
	u32 parity_reg;
	PARITYCHECK_mWriteReg(baseAddr, 0, data);
	parity_reg =PARITYCHECK_mReadReg (baseAddr, 4);
	return parity_reg;
}