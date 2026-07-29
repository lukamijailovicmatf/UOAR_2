#include <stdio.h>

extern unsigned nzd(unsigned, unsigned);

int main(){

    unsigned a, b;
    scanf("%u %u", &a, &b);

    printf("nzd(%u, %u) = %u\n", a, b, nzd(a, b));

    return 0;
}