#include <stdio.h>
#include <stdlib.h>

extern int suma_parnih(int n);
extern void izmeni_niz(int *a, unsigned n);

void err() {
    fprintf(stderr, "-1\n");
    exit(EXIT_FAILURE);
}

int main() {
    unsigned n;
    scanf("%u", &n);
    int *a;
    if((a = malloc(n * sizeof(int))) == NULL) {
        err();
    }

    for(unsigned i = 0; i < n; i++) {
        scanf("%d", &a[i]);
    }
    
    izmeni_niz(a, n);
    
    for(unsigned i = 0; i < n; i++) {
        printf("%d ", a[i]);
    }
    printf("\n");
    free(a);
    return 0;
}