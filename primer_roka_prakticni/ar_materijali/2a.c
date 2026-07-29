#include <stdio.h>

/**
 * @param n Broj ciji broj pravih delioca trazimo
 * @returns Broj pravih delioca broja n
*/
extern unsigned broj_parvih_delioca(unsigned n);

int main()
{
    unsigned n;
    scanf("%u", &n);
    printf("%u", broj_parvih_delioca(n));
    return 0;
}
