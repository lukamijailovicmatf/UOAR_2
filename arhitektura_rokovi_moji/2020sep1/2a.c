#include <stdio.h>

extern int power(int a, int b);
extern int amstrong(unsigned n);

int main() {
    unsigned n;
    scanf("%u", &n);
    printf("%d\n", amstrong(n));
    return 0;
}