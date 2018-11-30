

/***************************** Include Files *******************************/
#include "hash.h"

/************************** Function Definitions ***************************/

u32 hash(UINTPTR baseAddr, u32 str) {
	u32 result=0;

	HASH_mWriteReg(baseAddr, 0, 1);


	//HASH_mWriteReg(baseAddr, 0, 0);
	HASH_mWriteReg(baseAddr, 4, str);
	HASH_mWriteReg(baseAddr, 0, 2);
	//result = HASH_mReadReg (baseAddr, 12);
	//u32 data =str;


	result = HASH_mReadReg (baseAddr, 8);



	return result ;
}
