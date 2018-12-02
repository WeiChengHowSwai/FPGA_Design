

/***************************** Include Files *******************************/
#include "djb2_hash.h"

/************************** Function Definitions ***************************/

u32 djb2_hash(UINTPTR baseAddr, u8* str, u32 length)
{
    u32 behash;
    DJB2_HASH_reset(baseAddr);
    u32 i = 0;
    for(i = 0; i < length; i+=4)
    {
        if((i + 4) <= length)
        {
            behash = DJB2_HASH_LENGTH_4 |(str[i+3] << 21) | (str[i+2] << 14) | (str[i+1] << 7) | (str[i]);
            DJB2_HASH_sendData(baseAddr, behash);
        }
        else
        {
            switch(length - i)
            {
                case 1:
                    behash = DJB2_HASH_LENGTH_1 | (str[i]);
                    break;
                case 2:
                    behash = DJB2_HASH_LENGTH_2 | (str[i+1] << 7) | (str[i]);
                    break;
                case 3:
                    behash = DJB2_HASH_LENGTH_3 | (str[i+2] << 14) | (str[i+1] << 7) | (str[i]);
                    break;
                default: //Impossible Case
                    behash = 0x0;
                    break;
            }
            DJB2_HASH_sendData(baseAddr, behash);
        }
        while(DJB2_HASH_isBusy(baseAddr));
    }
    return DJB2_HASH_mReadReg(baseAddr, DJB2_HASH_S00_AXI_SLV_REG1_OFFSET);
}
