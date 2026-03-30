#include <stdio.h>
#include <stdlib.h>

extern void uzastopni(int *A, int *B, int *C, unsigned n);
extern void minus1(int *A, int *B, int *C, unsigned n);

void err() {
    fprintf(stderr, "-1\n");
    exit(EXIT_FAILURE);
}

int main() {
    unsigned n;
    scanf("%u", &n);
    int *A, *B, *C;
    if((A = malloc(n * sizeof(int))) == NULL) {
        err();
    }
    if((B = malloc(n * sizeof(int))) == NULL) {
        err();
    }
    if((C = malloc(n * sizeof(int))) == NULL) {
        err();
    }

    for(unsigned i = 0; i < n; i++) {
        scanf("%d", &A[i]);
    }
    for(unsigned i = 0; i < n; i++) {
        scanf("%d", &B[i]);
    }
    
    uzastopni(A, B, C, n);

    for(unsigned i = 0; i < n-1; i++) {
        printf("%d ", C[i]);
    }
    printf("\n");
    free(A);
    free(B);
    free(C);
    return 0;
}