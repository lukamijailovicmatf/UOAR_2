#include <stdio.h>

extern unsigned broj_pravih_delioca(unsigned n);

int main() {
    unsigned n;
    scanf("%u", &n);
    printf("%u\n", broj_pravih_delioca(n));
    return 0;
}