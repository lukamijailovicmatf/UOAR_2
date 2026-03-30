#include <stdio.h>
#include <stdlib.h>

void error(){
    fprintf(stderr, "-1");
    exit(EXIT_FAILURE);
}

/**
 * Funkcija transformise datu nisku tako sto joj
 * sva mala slova pretvara u velika.
 * 
 * @param s Niska koju zelimo transformisati
*/
extern void mala_u_velika(char *s);

int main()
{
    char *s;
    scanf("%ms", &s);
    if(s == NULL)
        error();

    mala_u_velika(s);
    printf("%s", s);

    free(s);

    return 0;
}
