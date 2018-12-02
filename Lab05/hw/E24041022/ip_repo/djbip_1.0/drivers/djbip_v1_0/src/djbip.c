

/***************************** Include Files *******************************/
#include "djbip.h"

u32 djb(UINTPTR baseAddr,char str[]){
    u32 c;
    u32 hash=5381;
    c=*str;
    while (c = *str++){
        DJBIP_mWriteReg(baseAddr,0,c);
        DJBIP_mWriteReg(baseAddr,4,hash);
    	hash = DJBIP_mReadReg (baseAddr, 8);
    }

    return hash;
}
/************************** Function Definitions ***************************/
