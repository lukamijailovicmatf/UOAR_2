#include <stdio.h>
#include <stdlib.h>

extern void saberi(unsigned *A, unsigned *B, unsigned n, unsigned *C);
extern void saberi_neparne(unsigned *A, unsigned *B, unsigned *C, unsigned n);

void err() {
    fprintf(stderr, "-1\n");
    exit(EXIT_FAILURE);
}

int main() {
    unsigned n;
    scanf("%u", &n);
    unsigned *A, *B, *C;
    if((A = malloc(n * sizeof(unsigned))) == NULL) {
        err();
    }
    if((B = malloc(n * sizeof(unsigned))) == NULL) {
        err();
    }
    if((C = malloc(n * sizeof(unsigned))) == NULL) {
        err();
    }

    for(unsigned i = 0; i < n; i++) {
        scanf("%u", &A[i]);
    }
    for(unsigned i = 0; i < n; i++) {
        scanf("%u", &B[i]);
    }
    
    saberi_neparne(A, B, C, n);

    for(unsigned i = 0; i < n; i++) {
        printf("%u ", C[i]);
    }
    printf("\n");
    free(A);
    free(B);
    free(C);
    return 0;
}