#include <stdio.h>
#include <stdlib.h>

extern int broj_ponavljanja(char* str, char c);

int main() {
    char *s;
    char c;
    scanf("%ms %c", &s, &c);
    printf("%d\n", broj_ponavljanja(s, c));
    free(s);
    return 0;
}