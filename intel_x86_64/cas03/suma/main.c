#include <stdio.h>

extern unsigned suma(unsigned);

int main(){

    unsigned n;
    scanf("%u", &n);

    printf("%d\n", suma(n));

    return 0;
}