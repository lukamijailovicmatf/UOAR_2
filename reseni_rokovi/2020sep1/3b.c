#include <stdio.h>
#include <stdlib.h>

extern int armstrongovi(unsigned *A, unsigned n);

void err() {
    fprintf(stderr, "-1\n");
    exit(EXIT_FAILURE);
}

int main() {
    unsigned n;
    scanf("%u", &n);
    unsigned *A;
    if((A = malloc(n * sizeof(unsigned))) == NULL) {
        err();
    }

    for(unsigned i = 0; i < n; i++) {
        scanf("%u", &A[i]);
    }
    
    unsigned len = armstrongovi(A, n);
    for(unsigned i = 0; i < len; i++) {
        printf("%u ", A[i]);
    }
    printf("\n");
    free(A);
    return 0;
}