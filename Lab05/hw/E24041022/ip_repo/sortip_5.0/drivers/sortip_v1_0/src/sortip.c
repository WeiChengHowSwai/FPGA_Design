

/***************************** Include Files *******************************/
#include "sortip.h"

/************************** Function Definitions ***************************/
void sort(u32 dataout[],UINTPTR baseAddr,u32 datain1,u32 datain2,u32 datain3,u32 datain4,u32 datain5,u32 datain6,u32 datain7,u32 datain8){
	int i=0;
	SORTIP_mWriteReg(baseAddr, 64, 1);
	SORTIP_mWriteReg(baseAddr, 64, 0);
	SORTIP_mWriteReg(baseAddr, 72, 0);
	SORTIP_mWriteReg(baseAddr, 0, datain1);
	SORTIP_mWriteReg(baseAddr, 4, datain2);
	SORTIP_mWriteReg(baseAddr, 8, datain3);
	SORTIP_mWriteReg(baseAddr, 12, datain4);
	SORTIP_mWriteReg(baseAddr, 16, datain5);
	SORTIP_mWriteReg(baseAddr, 20, datain6);
	SORTIP_mWriteReg(baseAddr, 24, datain7);
	SORTIP_mWriteReg(baseAddr, 28, datain8);
	SORTIP_mWriteReg(baseAddr, 72, 1);
	while(i==0){

		i = SORTIP_mReadReg (baseAddr, 76);
	}
	dataout[0] = SORTIP_mReadReg (baseAddr, 32);
	dataout[1] = SORTIP_mReadReg (baseAddr, 36);
	dataout[2] = SORTIP_mReadReg (baseAddr, 40);
	dataout[3] = SORTIP_mReadReg (baseAddr, 44);
	dataout[4] = SORTIP_mReadReg (baseAddr, 48);
	dataout[5] = SORTIP_mReadReg (baseAddr, 52);
	dataout[6] = SORTIP_mReadReg (baseAddr, 56);
	dataout[7] = SORTIP_mReadReg (baseAddr, 60);
	SORTIP_mWriteReg(baseAddr, 72, 0);

	return ;
}
