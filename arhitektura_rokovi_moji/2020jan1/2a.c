#include <stdio.h>

extern unsigned prost(unsigned n);

int main(){

    unsigned n;
    scanf("%u", &n);
    
    if(prost(n) == 1)
        printf("Broj %u je prost\n", n);
    else
        printf("Broj %u nije prost\n", n);

    return 0;
}