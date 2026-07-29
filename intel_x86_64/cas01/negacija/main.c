#include <stdio.h>

extern unsigned negacija(unsigned x);

void print_bits(unsigned x){

    unsigned mask = 1 << (8*sizeof(unsigned)-1);
    while(mask){
        if(x & mask)
            putchar('1');
        else
            putchar('0');
        mask >>= 1;
    }
    printf("\n");
}

int main(){

    unsigned x;
    scanf("%u", &x);
    print_bits(x);
    print_bits(negacija(x));

    return 0;
}