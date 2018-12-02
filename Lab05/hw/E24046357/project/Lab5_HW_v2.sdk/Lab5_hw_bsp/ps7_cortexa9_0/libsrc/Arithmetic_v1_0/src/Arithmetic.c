

/***************************** Include Files *******************************/
#include "Arithmetic.h"

/************************** Function Definitions ***************************/
s32 compute(UINTPTR baseaddr , s32 A , s32 B , s32 unit){
	s32 result , data ;
	data = A + (B << 8) + (unit <<16) ;
	ARITHMETIC_mWriteReg(baseaddr , 0 , data) ;
	result = ARITHMETIC_mReadReg(baseaddr , 4) ;
	return result ;
}
