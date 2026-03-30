#include <stdio.h>

extern int sve_jedinice(unsigned n);

int main() {
    unsigned n;
    scanf("%u", &n);
    printf("%d\n", sve_jedinice(n));
    return 0;
}