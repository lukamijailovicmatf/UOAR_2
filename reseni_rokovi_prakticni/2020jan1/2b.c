#include <stdio.h>
#include <stdlib.h>

extern unsigned transformisi_niz(int* niz, int n);

void greska(){
    fprintf(stderr, "-1\n");
    exit(EXIT_FAILURE);
}

int main() {

    int n;
    scanf("%d", &n);

    unsigned* niz = (int*)malloc(n*sizeof(int));
    if(niz == NULL)
        greska();

    for(unsigned i=0; i<n; i++)
        scanf("%d", &niz[i]);

    unsigned len = transformisi_niz(niz, n);

    for(unsigned i=0; i<len; i++)
        printf("%d ", niz[i]);

    free(niz);
    return 0;
}