#include <stdio.h>

extern unsigned polukvadrat(unsigned n);

int main() {
    unsigned n;
    scanf("%u", &n);
    printf("%u\n", polukvadrat(n));
    return 0;
}