#include <stdio.h>

extern int saberi(int x, int y);

int main(){

    printf("Unesite dva cela broja: ");
    int x, y;
    scanf("%d %d", &x, &y);
    int zbir = saberi(x, y);
    printf("%d + %d = %d\n", x, y, zbir);

    return 0;
}