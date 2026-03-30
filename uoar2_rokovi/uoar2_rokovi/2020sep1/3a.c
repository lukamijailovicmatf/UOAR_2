#include <stdio.h>

extern int power(int a, int b);
extern int armstrong(unsigned n);

int main() {
    unsigned n;
    scanf("%u", &n);
    printf("%d\n", armstrong(n));
    return 0;
}