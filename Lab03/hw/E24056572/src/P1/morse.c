/*
 * morse.c
 *
 *  Created on: 2018.11.1
 *      Author: NekoSaiKou, Davinais
 */

#include "inttypes.h"
#include "morse.h"
#include "sleep.h"
#include "stdio.h"
#include "string.h"
#include "xgpio.h"
#include "xil_printf.h"
#include "xil_types.h"
#include "xparameters.h"


XGpio LED_Gpio, Input_Gpio;
int main() {
	int LED_Status, Output_Status;
	u32 sw_data,btn_data;

	int neko[] 		= {10,2,4,0,5,6,5,7,2};
	int omnon[] 	= {10,2,4,0,5,4,2,0,3};
	int davinais[] 	= {10,2,4,0,5,6,6,3,7};
	int sos[] 		= {11,12,11};

	/* Initialize the GPIO driver */
	LED_Status = XGpio_Initialize(&LED_Gpio, LED_DEVICE_ID);
	Output_Status = XGpio_Initialize(&Input_Gpio, Input_DEVICE_ID);
	if (LED_Status != XST_SUCCESS || Output_Status) {
		xil_printf("Gpio Initialization Failed\r\n");
		return XST_FAILURE;
	}
	/* Set the direction for all signals as inputs except the LED output */
	XGpio_SetDataDirection(&LED_Gpio, 1, 0x00);
	XGpio_SetDataDirection(&Input_Gpio, 1, 0x01);
	XGpio_SetDataDirection(&Input_Gpio, 2, 0x03);


	while (1) {
		for(int i = 1 ; i < 100 ; i ++){
			btn_data = XGpio_DiscreteRead(&Input_Gpio, 1);
			if(btn_data == 0){
				i = 0;
			}else{
				usleep(10);
			}
		}
		sw_data = XGpio_DiscreteRead(&Input_Gpio, 2);
		xil_printf("switches data = %d\r\n", sw_data);
		switch(sw_data){
			case 0:{
			    //64 + '\0'
			    char need_enc[65] = "E24056572";
			    //Should be '0xd0531b80b72594e1'
				hash(need_enc);
				morse_out(neko,9);
				break;
			}
			case 1:{
			    //64 + '\0'
			    char need_enc[65] = "E24054203";
			    //Should be '0x396ce16eb720601e'
				hash(need_enc);
				morse_out(omnon,9);
				break;
			}
			case 2:{
			    //64 + '\0'
			    char need_enc[65] = "E24056637";
			    //Should be '0xe9e99980c586f3c7'
				hash(need_enc);
				morse_out(davinais,9);
				break;
			}
			default:{
				//64 + '\0'
				char need_enc[65] = "SOS";
				//Should be '0x97eb8c19fa4ec3cc'
				hash(need_enc);
				morse_out(sos,3);
				break;
			}
		}
	}

	return XST_SUCCESS;
}
/**
 * \fn		    morse_out(int output[], int length)
 * \details     parse morse code to led with predefined length ref\param[in]
 * \param[in]	output[]   the character index ref\*morse_convert[]
 * \param[in]	length 	   the number of character
 * \in morse code Dit(an unit) stands for short pulse and Dah(three units) stands for long, space between Dit or Dah is an unit,
 * \space between character(set of Dit and Dah) is 3 units and space between vocabulary is 7units.
 * \an unit is 200000 us in this program.
 */
void morse_out(int output[], int length){
	for (int i = 0; i < length; i++) {
		for (int k = 0; k < strlen(morse_convert[output[i]]); k++) {
			if(morse_convert[output[i]][k] == '0'){
				XGpio_DiscreteWrite(&LED_Gpio, 1, 0xf);
				usleep(200000);
			}else{
				XGpio_DiscreteWrite(&LED_Gpio, 1, 0xf);
				usleep(600000);
			}
			XGpio_DiscreteWrite(&LED_Gpio, 1, 0x0);
			usleep(200000);
		}
		usleep(600000);
	}
	usleep(1400000);
}

/**
 * \fn		    hash(char need_enc[])
 * \details     print result after Fowler-Noll-Vo-1a hash function
 * \param[in]	need_enc[]   input string to be hashed
 * \ FNV-a hash function is chosen in this function
 */
void hash(char need_enc[]){

    uint64_t hashed = FNV_OFFSET_BASIS_64B;
    xil_printf(need_enc);
    int i = 0;
    for(i = 0; i < strlen(need_enc); i++)
    {
        hashed ^= need_enc[i];
        hashed *= FNV_PRIME_64B;
    }
    //xil_printf("0x%" PRIx64 "\n", hashed);
    printf("    0x%" PRIx64 "\r\n", hashed);
}
