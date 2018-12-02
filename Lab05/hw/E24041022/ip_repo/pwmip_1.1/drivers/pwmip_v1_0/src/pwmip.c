

/***************************** Include Files *******************************/
#include "pwmip.h"

#include <stdio.h>
#include "xil_printf.h"
#include "xil_io.h"
#include "xparameters.h"

/************************** Function Definitions ***************************/

void pwm(UINTPTR baseAddr,u32 color,u32 operand,u32 signal){

	PWMIP_mWriteReg(baseAddr, 4, color);
	PWMIP_mWriteReg(baseAddr, 8, operand);
	PWMIP_mWriteReg(baseAddr, 24, signal);

}
