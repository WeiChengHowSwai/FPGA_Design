

/***************************** Include Files *******************************/
#include "pwm_controller_ip.h"

/************************** Function Definitions ***************************/
u32 time_data = 0x00000000;
void pwm_out(UINTPTR baseAddr,int port,u8 in_time){

	int offset = port * 8;
	/*switch 0 to 1*/
	time_data = time_data | ((0x00000000^in_time)<<offset);
	/*switch 1 to 0*/
	time_data = time_data & (~((0x00000000^(~in_time))<<offset));

    /*4-ports only*/
    if(port <= 3){
        PWM_CONTROLLER_IP_mWriteReg(baseAddr,0,time_data);
    }
}