

/***************************** Include Files *******************************/
#include "alu.h"

/************************** Function Definitions ***************************/
u32 alu1(UINTPTR baseAddr, u32 X, u32 Y, u32 sel){
	u32 alu_sum;
	u32 data2 = X + (Y << 3) +(sel << 6);
	ALU_mWriteReg(baseAddr, 0, data2);
	alu_sum = ALU_mReadReg (baseAddr, 4);
	return alu_sum;

}
