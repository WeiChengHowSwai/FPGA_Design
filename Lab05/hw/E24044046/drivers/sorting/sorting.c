
/***************************** Include Files *******************************/
#include "sorting.h"

/************************** Function Definitions ***************************/
void sorting(UINTPTR baseAddr,u32 A,u32 B,u32 C,u32 D,u32 after_sorting[]){

	u32 reset=1<<12;
	u32 data=A+(B<<3)+(C<<6)+(D<<9);

	SORTING_mWriteReg(baseAddr, 0, reset);
	SORTING_mWriteReg(baseAddr, 0, data);

	after_sorting[3] = SORTING_mReadReg (baseAddr, 8)>>3;
	after_sorting[2] = SORTING_mReadReg (baseAddr, 8)-(after_sorting[3]<<3);
	after_sorting[1] = SORTING_mReadReg (baseAddr, 4)>>3;
	after_sorting[0] = SORTING_mReadReg (baseAddr, 4)-(after_sorting[1]<<3);

	return;
}
