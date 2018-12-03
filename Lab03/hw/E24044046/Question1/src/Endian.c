

#include "xil_printf.h"

int main() {
    int a = 0x12345678;
    char *ptr = (char *)&a;
    if (*ptr == 0x12)
        xil_printf("Big Endian\n");
    else
        xil_printf("Little Endian\n");
    return 0;
}
