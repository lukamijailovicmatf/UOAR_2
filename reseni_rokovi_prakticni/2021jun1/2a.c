#include <stdio.h>
#include <stdlib.h>

extern int stepen(int n, unsigned s);

int main() {
    int n;
    unsigned s;
    scanf("%d%u", &n, &s);
    printf("%d\n", stepen(n, s));
    return 0;
}