

/***************************** Include Files *******************************/
#include "arithmetic.h"

/************************** Function Definitions ***************************/


u32 arithmetic(UINTPTR baseAddr,u32 A,u32 B,u32 OPERATOR){

u32 result;
u32 data= A + (B<<3) + (OPERATOR<<6);
ARITHMETIC_mWriteReg(baseAddr, 0, data);


result = ARITHMETIC_mReadReg (baseAddr, 4);

return result;
}
