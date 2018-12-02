

/***************************** Include Files *******************************/
#include "mathip.h"
#include "xil_printf.h"
#include "xil_io.h"
#include "xparameters.h"


/************************** Function Definitions ***************************/
s32 math(UINTPTR baseAddr,s32 a,s32 b,s32 operand){

	MATHIP_mWriteReg(baseAddr, 0, a);
	MATHIP_mWriteReg(baseAddr, 4, b);
	MATHIP_mWriteReg(baseAddr, 8, operand);
	return MATHIP_mReadReg (baseAddr, 12);

}
