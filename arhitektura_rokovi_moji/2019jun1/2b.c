#include <stdio.h>
#include <stdlib.h>

extern void filtriraj(unsigned* a, unsigned* b, unsigned n, unsigned* c, unsigned* m);

void greska(){
    fprintf(stderr, "-1\n");
    exit(EXIT_FAILURE);
}

int main() {

    unsigned n;
    scanf("%u", &n);

    unsigned* a = (unsigned*)malloc(n*sizeof(unsigned));
    if(a == NULL)
        greska();

    unsigned* b = (unsigned*)malloc(n*sizeof(unsigned));
    if(b == NULL)
        greska();

    unsigned* c = (unsigned*)malloc(n*sizeof(unsigned));
    if(c == NULL)
        greska();

    for(unsigned i=0; i<n; i++)
        scanf("%u", &a[i]);

    for(unsigned i=0; i<n; i++)
        scanf("%u", &b[i]);

    unsigned m;
    filtriraj(a, b, n, c, &m);

    for(unsigned i=0; i<m; i++)
        printf("%u ", c[i]);

    free(a);
    free(b);
    free(c);
    return 0;
}