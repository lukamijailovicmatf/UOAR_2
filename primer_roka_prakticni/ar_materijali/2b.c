#include <stdio.h>
#include <stdlib.h>

void error()
{
    fprintf(stderr, "-1");
    exit(EXIT_FAILURE);
}

/**
 * Funkcija transformise niz n tako sto svaki element niza
 * osim prostih zameni brojem pravih delioca tog broja
 * 
 * @param a Niz koji transformisemo
 * @param n Duzina niza
*/
extern void transformisi(unsigned *a, int n);



int main(int argc, char const *argv[])
{
    int n;
    unsigned *a;

    scanf("%d", &n);
    if(n <= 0)
        error();

    a = malloc(n * sizeof(unsigned));
    if(a == NULL)
        error();
    
    for(int i = 0; i < n; ++i)
    {
        scanf("%u", &a[i]);
    }
    
    transformisi(a, n);

    for (int i = 0; i < n; i++)
    {
        printf("%u ", a[i]);
    }
    
    return 0;
}
