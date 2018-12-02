

/***************************** Include Files *******************************/
#include "pwm.h"

/************************** Function Definitions ***************************/

void pwm(UINTPTR baseAddr, u32 R, u32 G,u32 B) {
	PWM_mWriteReg(baseAddr, 0, R);
	PWM_mWriteReg(baseAddr, 4, G);
	PWM_mWriteReg(baseAddr, 8, B);
	return;
}
