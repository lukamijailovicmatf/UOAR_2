#include <stdio.h>

extern unsigned nzd(unsigned x, unsigned y);

int main(){

    unsigned x, y;
    scanf("%u %u", &x, &y);
    printf("nzd(%u, %u) = %u\n", x, y, nzd(x, y));

    return 0;
}