

/***************************** Include Files *******************************/
#include "PWM.h"

/************************** Function Definitions ***************************/
void pwm(UINTPTR baseAddr,u32 reset,u32 R,u32 G,u32 B) {
	u32 Time_in;
	Time_in = R + (G << 7) + (B << 14);
	PWM_mWriteReg(baseAddr, 0, reset);
	PWM_mWriteReg(baseAddr, 4, Time_in);
}
