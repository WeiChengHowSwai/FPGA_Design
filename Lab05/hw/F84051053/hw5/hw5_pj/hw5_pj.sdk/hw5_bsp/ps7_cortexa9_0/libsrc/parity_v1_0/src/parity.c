

/***************************** Include Files *******************************/
#include "parity.h"

/************************** Function Definitions ***************************/

u32 parity(UINTPTR baseAddr, u32 data) {
    u32 ans=0;
    PARITY_mWriteReg(baseAddr, 0, data);
    ans = PARITY_mReadReg (baseAddr, 4);
    return ans;
}
