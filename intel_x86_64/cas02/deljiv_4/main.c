#include <stdio.h>

extern int deljiv_4(int x);

int main(){

    int x;
    scanf("%d", &x);
    if(deljiv_4(x))
        printf("%d je deljiv sa 4\n", x);
    else
        printf("%d nije deljiv sa 4\n", x);

    return 0;
}