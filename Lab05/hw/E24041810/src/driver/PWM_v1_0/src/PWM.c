

/***************************** Include Files *******************************/
#include "PWM.h"

/************************** Function Definitions ***************************/

void pwm(UINTPTR baseAddr, u32 pwm_time) {

	PWM_mWriteReg(baseAddr, 0, 1);
	PWM_mWriteReg(baseAddr, 12, pwm_time);
	PWM_mWriteReg(baseAddr, 0, 0);

	
	return  ;
}
