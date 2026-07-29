#include <stdio.h>

extern int savrsen_stepen(unsigned n, unsigned *pm, unsigned *pk);

int main(){

    unsigned n, m, k;
    scanf("%u", &n);

    if(savrsen_stepen(n, &m, &k)){
        printf("%d = %d ^ %d\n", n, m, k);
    }else{
        printf(":(\n");
    }
}