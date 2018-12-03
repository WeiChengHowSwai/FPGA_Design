

/***************************** Include Files *******************************/
#include "sorting.h"

/************************** Function Definitions ***************************/
void sorting(UINTPTR baseAddr,u32 d_in1, u32 d_in2, u32 d_in3, u32 d_in4,u32 d_out[]){

	u32 data = d_in1+ (d_in2<<4) + (d_in3<<8)+ (d_in4<<12);
	SORTING_mWriteReg(baseAddr, 0, data);

	d_out[0] = SORTING_mReadReg (baseAddr, 4);
	d_out[1] = SORTING_mReadReg (baseAddr, 8);
	d_out[2] = SORTING_mReadReg (baseAddr, 12);
	d_out[3] = SORTING_mReadReg (baseAddr, 16);

	return  ;
}
