#include <stdio.h>

extern void print_bits(unsigned n);

int main(){

    unsigned n;
    scanf("%u", &n);
    print_bits(n);
    printf("\n");

    return 0;
}