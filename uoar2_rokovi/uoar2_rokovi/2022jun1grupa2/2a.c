#include <stdio.h>

extern int suma_parnih(int n);

int main() {
    int n;
    scanf("%d", &n);
    printf("%d\n", suma_parnih(n));
    return 0;
}