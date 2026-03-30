#include <stdio.h>
#include <stdlib.h>

extern int arm_strlen(const char *s);

int main(){

    char *s;
    scanf("%ms", &s);

    printf("%d\n", arm_strlen(s));

    free(s);
    return 0;
}