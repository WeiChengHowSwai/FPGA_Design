

/***************************** Include Files *******************************/
#include "calculator.h"

/************************** Function Definitions ***************************/
u32 calculator(UINTPTR baseAddr, u32 A, u32 B, u32 cmd) {
	u32 O;
	CALCULATOR_mWriteReg(baseAddr, 0, A);
	CALCULATOR_mWriteReg(baseAddr, 4, B);
	CALCULATOR_mWriteReg(baseAddr, 8, cmd);
	O = CALCULATOR_mReadReg(baseAddr, 12);
	return O;
}
