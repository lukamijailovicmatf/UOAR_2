#include <stdio.h>

extern int max(int x, int y);

int main(){

    int x, y;
    scanf("%d %d", &x, &y);
    printf("max(%d, %d) == %d\n", x, y, max(x, y));

    return 0;
}