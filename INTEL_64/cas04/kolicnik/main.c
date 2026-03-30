#include <stdio.h>

extern void kolicnik(int, int, int*, int*);

int main(){

    int x, y, k, o;
    scanf("%d %d", &x, &y);
    kolicnik(x, y, &k, &o);
    printf("%d = %d * %d + %d\n", x, y, k, o);

    return 0;
}