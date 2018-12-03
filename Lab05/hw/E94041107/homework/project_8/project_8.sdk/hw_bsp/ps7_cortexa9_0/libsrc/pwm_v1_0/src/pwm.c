

/***************************** Include Files *******************************/
#include "pwm.h"

/************************** Function Definitions ***************************/
u32 pwm1(UINTPTR baseAddr, u32 pwm_in){
	u32 pwm_out;
	u32 data5 = pwm_in;
	PWM_mWriteReg(baseAddr, 0, data5);
	pwm_out = PWM_mReadReg (baseAddr, 4);
	return pwm_out;

}
