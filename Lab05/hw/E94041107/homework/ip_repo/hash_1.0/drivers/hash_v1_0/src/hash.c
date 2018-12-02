

/***************************** Include Files *******************************/
#include "hash.h"

/************************** Function Definitions ***************************/
u32 hout1(UINTPTR baseAddr, u32 hin){
	
	u32 hout0;
	
	u32 data4 = hin;
	HASH_mWriteReg(baseAddr, 0, data4);
	hout0 = HASH_mReadReg (baseAddr, 4);

	
	return hout0;
}