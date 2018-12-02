

/***************************** Include Files *******************************/
#include "PWM_ctrl.h"

/************************** Function Definitions ***************************/
int PWM(UINTPTR baseaddr , int sw)
{
	u32 PWM ;
	int data = sw << 1;
	PWM_CTRL_mWriteReg(baseaddr , 0 , 0x00);
	PWM_CTRL_mWriteReg(baseaddr , 0 , data);
	PWM = PWM_CTRL_mReadReg(baseaddr , 4);
	return PWM ;

}
