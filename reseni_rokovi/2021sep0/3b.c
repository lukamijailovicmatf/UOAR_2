#include <stdio.h>
#include <stdlib.h>

extern unsigned zbir_prostih_delioca(unsigned n);

void err() {
    fprintf(stderr, "-1\n");
    exit(EXIT_FAILURE);
}

int main() {
    unsigned n;
    scanf(" %u", &n);
    printf("%u\n", zbir_prostih_delioca(n));
    return 0;
}