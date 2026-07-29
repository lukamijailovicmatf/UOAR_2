#include <stdio.h>

extern unsigned ojler(unsigned);

int main(){

    unsigned n;
    scanf("%u", &n);

    printf("%u\n", ojler(n));

    return 0;
}