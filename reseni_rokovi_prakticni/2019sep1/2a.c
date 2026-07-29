#include <stdio.h>

extern int trougao(int a, int b, int c);

int main() {
    int a, b, c;
    scanf("%d%d%d", &a, &b, &c);
    printf("%d\n", trougao(a, b, c));
    return 0;
}