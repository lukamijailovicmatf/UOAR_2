#include <stdio.h>

extern unsigned faktorijel(unsigned n);

int main(){

    unsigned n;
    scanf("%u", &n);
    printf("%u\n", faktorijel(n));

    return 0;
}