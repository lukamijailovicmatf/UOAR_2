#include <stdio.h>

extern int power(int a, int b);

int main() {
    int a, b;
    scanf("%d%d", &a, &b);
    printf("%d\n", power(a, b));
    return 0;
}