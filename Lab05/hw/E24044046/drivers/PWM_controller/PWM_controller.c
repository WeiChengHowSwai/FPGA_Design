

/***************************** Include Files *******************************/
#include "PWM_controller.h"

/************************** Function Definitions ***************************/
void PWM_controller(UINTPTR baseAddr, u32 A, u32 B,u32 C){

	u32 reset=1<<24;
	u32 data=A+(B<<8)+(C<<16);

	PWM_CONTROLLER_mWriteReg(baseAddr, 0, reset);
	PWM_CONTROLLER_mWriteReg(baseAddr, 0, data);
	return;
}
