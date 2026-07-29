#include <stdio.h>
#include <stdlib.h>

extern int transformisi(int n);

int main() {
    int n;
    scanf("%d", &n);
    printf("%d\n", transformisi(n));
    return 0;
}