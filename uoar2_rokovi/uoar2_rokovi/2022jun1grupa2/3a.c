#include <stdio.h>

extern int nzd(int a, int b);

int main() {
    int a, b;
    scanf("%d%d", &a, &b);
    printf("%d\n", nzd(a, b));
    return 0;
}