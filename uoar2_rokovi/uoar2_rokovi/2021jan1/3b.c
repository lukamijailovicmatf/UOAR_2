#include <stdio.h>
#include <stdlib.h>

extern int prost(unsigned n);
extern unsigned izbaci_proste(unsigned *A, unsigned n);

void err() {
    fprintf(stderr, "-1\n");
    exit(EXIT_FAILURE);
}

int main() {
    unsigned n;
    scanf("%u", &n);
    unsigned *a;
    if((a = malloc(n * sizeof(unsigned))) == NULL) {
        err();
    }

    for(unsigned i = 0; i < n; i++) {
        scanf("%u", &a[i]);
    }
    
    unsigned len = izbaci_proste(a, n);
    printf("%u ", len);
    for(unsigned i = 0; i < len; i++) {
        printf("%u ", a[i]);
    }
    printf("\n");
    free(a);
    return 0;
}