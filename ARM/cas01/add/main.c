#include <stdio.h>

extern int add(int x, int y);

int main(){

    int x, y;
    scanf("%d %d", &x, &y);
    printf("add(%d, %d) = %d\n", x, y, add(x, y));

    return 0;
}