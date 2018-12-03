#include "xil_printf.h"
#include <stdio.h>
unsigned int BKDRHash(char *str);
int main(){
 char student[9];
 while(1){
 xil_printf("Please enter your student ID ><\r\n");
 scanf("%s",student);
 xil_printf("Your student ID is %s\r\n",student);
 xil_printf("After hash : %08x\r\n",BKDRHash(student));
 }
}

// BKDR Hash Function
unsigned int BKDRHash(char *str)
{
unsigned int seed = 131; // 31 131 1313 13131 131313 etc..
unsigned int hash = 0;

while (*str)
{
    hash = hash * seed + (*str++);

}

return (hash);
}
