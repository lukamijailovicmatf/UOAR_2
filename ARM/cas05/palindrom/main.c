#include <stdio.h>
#include <stdlib.h>

extern int palindrom(const char *s);

int main(){

    char *s;
    scanf("%ms", &s);

    printf("%d\n", palindrom(s));

    free(s);
    return 0;
}