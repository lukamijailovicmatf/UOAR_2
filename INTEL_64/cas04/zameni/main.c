#include <stdio.h>

extern void zameni(int*, int*);

int main(){

    int x, y;
    scanf("%d %d", &x, &y);
    printf("x = %d y = %d\n", x, y);
    zameni(&x, &y);
    printf("x = %d y = %d\n", x, y);

    return 0;
}