

/***************************** Include Files *******************************/
#include "ParityGenerator.h"

/************************** Function Definitions ***************************/
u32 parity_test(UINTPTR baseaddr , char a , char b , char c , char d){
	u32 result , data ;
	data = a + (b << 8) + (c << 16) + (d << 24) ;
	PARITYGENERATOR_mWriteReg(baseaddr , 0 , data) ;
	result = PARITYGENERATOR_mReadReg(baseaddr , 4) ;
	return result ;
}
