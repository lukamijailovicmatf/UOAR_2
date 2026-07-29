#include <stdio.h>

extern unsigned secret(unsigned n);

int main(){

    unsigned n;
    scanf("%u", &n);
    printf("%u\n", secret(n));

    return 0;
}