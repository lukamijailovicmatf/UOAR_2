#include <stdio.h>

extern unsigned stepen(unsigned n);

int main() {
    unsigned n;
    scanf("%u", &n);
    printf("%u\n", stepen(n));
    return 0;
}