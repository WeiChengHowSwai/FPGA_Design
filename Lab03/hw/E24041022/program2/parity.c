#include "xil_printf.h"
#include <stdio.h>
int main() {
 int counter,fail=0;
 char data[32];
 while(1){
 counter=0;
 fail=0;
 for(int i=0;i<32;i++)
  data[i]=0;
 xil_printf("please enter 32 bits data\r\n");
 scanf("%s",data);
 xil_printf("your data is : \r\n");
 for(int i=0;i<32;i++){
  xil_printf("%c",data[i]);
  if(data[i]!='1'&&data[i]!='0')
   fail=1;
  else
   counter=counter+data[i]-48;
 }
 xil_printf("\r\n");
 xil_printf("counter=%d\r\n",counter);
 if(counter%2==0&&fail!=1)
  xil_printf("there are even 1s\r\n");
 else if(counter%2==1&&fail!=1)
  xil_printf("there are odd 1s\r\n");
 else
  xil_printf("only 1 or 0 allow! or your data is not 32 bits\r\n");
 }
 return 0;

}
