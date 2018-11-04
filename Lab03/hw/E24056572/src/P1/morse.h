/*
 * morse.h
 *
 *  Created on: 2018.11.1
 *      Author: NekoSaiKou
 */

/*device setting*/
#define LED_DEVICE_ID  XPAR_GPIO_0_DEVICE_ID
#define Input_DEVICE_ID  XPAR_GPIO_1_DEVICE_ID
/*hash function*/
#define FNV_OFFSET_BASIS_64B 0xcbf29ce484222325U
#define FNV_PRIME_64B        0x100000001b3U //2^40 + 2^8 + 0xb3
/*0 1 2 3 4 5 6 7 8 9 E S O*/
const static char* morse_convert[] = {
"11111","01111","00111","00011","00001",
"00000","10000","11000","11100","11110",
"0","000","111"
};

void morse_out(int output[], int length);
void hash(char need_enc[]);
