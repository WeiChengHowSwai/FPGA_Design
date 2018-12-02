

/***************************** Include Files *******************************/
#include "sorting.h"

/************************** Function Definitions ***************************/
void sorting(u32 sort[],UINTPTR baseAddr, u32 number1, u32 number2, u32 number3, u32 number4) {

	SORTING_mWriteReg(baseAddr, 0, 131072);
	u32 data =number1+ (number2<<4 ) + (number3 <<8 )+ (number4<<12) +65536;
	SORTING_mWriteReg(baseAddr, 0, data);

	sort[0] = SORTING_mReadReg (baseAddr, 4);
	sort[1] = SORTING_mReadReg (baseAddr, 8);
	sort[2] = SORTING_mReadReg (baseAddr, 12);
	sort[3] = SORTING_mReadReg (baseAddr, 16);

	return  ;
}

