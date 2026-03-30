#include <stdio.h>

extern long faktorijel(long n);

int main() {
    long n;
    scanf("%ld", &n);
    printf("%ld\n", faktorijel(n));
    return 0;
}