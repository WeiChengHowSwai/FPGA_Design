

/***************************** Include Files *******************************/
#include "parityip.h"
#include <stdio.h>
#include "xil_printf.h"
#include "xil_io.h"
#include "xparameters.h"

/************************** Function Definitions ***************************/
u32 parity(UINTPTR baseAddr,u32 datain){
	PARITYIP_mWriteReg(baseAddr, 0, datain);
	return PARITYIP_mReadReg (baseAddr, 4);
}
