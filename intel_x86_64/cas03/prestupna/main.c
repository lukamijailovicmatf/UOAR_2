#include <stdio.h>

extern unsigned prestupna(unsigned);

int main(){

    unsigned godina;
    scanf("%u", &godina);
    if(prestupna(godina))
        printf("Godina je prestupna\n");
    else
        printf("Godina nije prestupna\n");

    return 0;
}