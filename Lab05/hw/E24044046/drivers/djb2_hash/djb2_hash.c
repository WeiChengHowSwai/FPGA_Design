

/***************************** Include Files *******************************/
#include "djb2_hash.h"

/************************** Function Definitions ***************************/
u32 djb2_hash(UINTPTR baseAddr, u32 A,u32 B,u32 C){

	u32 reset=A+(B<<8)+(C<<16)+(1<<24);
	u32 data=A+(B<<8)+(C<<16);
	u32 hash;

	DJB2_HASH_mWriteReg(baseAddr, 0, reset);
	DJB2_HASH_mWriteReg(baseAddr, 0, data);
	hash = DJB2_HASH_mReadReg (baseAddr, 4);
	return hash;
}
