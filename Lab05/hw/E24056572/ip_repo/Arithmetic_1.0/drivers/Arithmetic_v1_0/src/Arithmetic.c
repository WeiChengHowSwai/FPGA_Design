/***************************** Include Files *******************************/
#include "Arithmetic.h"
/************************** Function Definitions ***************************/
int Arith(UINTPTR baseAddr,u16 A,u16 B,char Operation){
    u32 data_in = B<<16 | A ;
    int data_out = 0;
    ARITHMETIC_mWriteReg(baseAddr, 0, data_in);
    
    if(Operation == '+'){
        ARITHMETIC_mWriteReg(baseAddr, 4,0);
    }else if(Operation == '-'){
        ARITHMETIC_mWriteReg(baseAddr, 4,1);
    }else if(Operation == '*'){
        ARITHMETIC_mWriteReg(baseAddr, 4,2);
    }else{
        return 0;
    }
    data_out = ARITHMETIC_mReadReg(baseAddr, 8);
    return data_out;
}
