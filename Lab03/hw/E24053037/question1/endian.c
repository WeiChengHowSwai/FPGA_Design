
#include <stdio.h>

int main() {
    int a = 0x12345678;
    char *ptr = (char *)&a;
    if (*ptr == 0x12)
        printf("It's a big-endian system.\n");

    else if (*ptr == 0x78)
        printf("It's a little-endian system.\n");

    else
         printf("It can't be defined.\n");

    return 0;

}
