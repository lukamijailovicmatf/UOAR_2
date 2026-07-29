#include <stdio.h>
#include <stdlib.h>

extern void longest(const char *s, int *pstart, int *plenght);

int main(){

    char *s;
    scanf("%ms", &s);
    int start, lenght;
    longest(s, &start, &lenght);

    printf("%d: '%c': %d\n", start, s[start], lenght);

    free(s);
    return 0;
}