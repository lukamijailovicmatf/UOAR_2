#include <stdio.h>
#include <stdlib.h>

extern void mala_u_velika(char *s);

int main() {
    char *s;
    scanf("%ms", &s);
    mala_u_velika(s);
    printf("%s\n", s);
    free(s);
    return 0;
}