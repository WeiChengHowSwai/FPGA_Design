/***************************** Include Files *******************************/
#include "arithmetic.h"

/************************** Function Definitions ***************************/


u32 arithmetic(UINTPTR baseAddr,u32 A,u32 B,u32 op){

    u32 ans;
    u32 data= A + (B<<4) + (op<<8);
    ARITHMETIC_mWriteReg(baseAddr, 0, data);
    ans = ARITHMETIC_mReadReg (baseAddr, 4);

    return ans;
}
