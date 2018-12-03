

/***************************** Include Files *******************************/
#include "arithmetic.h"

/************************** Function Definitions ***************************/
u32 arithmetic(UINTPTR baseAddr, u32 A, u32 B,char operator){

	u32 data=A+(B<<3)+(operator<<6);
	u32 result;

	ARITHMETIC_mWriteReg(baseAddr, 0, data);
	result = ARITHMETIC_mReadReg (baseAddr, 4);

	return result;
}
