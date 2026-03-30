#include <stdio.h>
#include <stdlib.h>

extern int trag(int **A, int n);

void err() {
    fprintf(stderr, "-1\n");
    exit(EXIT_FAILURE);
}

int main() {
    int n;
    scanf("%d", &n);
    int **A;
    if((A = malloc(n * sizeof(int*))) == NULL) {
        err();
    }
    for (int i = 0; i < n; i++) {
        A[i] = malloc(n * sizeof(int));
    }

    for (int i = 0; i < n; i++) {
        for(int j = 0; j < n; j++) {
            scanf("%d", &A[i][j]);
        }
    }
    
    printf("%d\n", trag(A, n));
    for (int i = 0; i < n; i++) {
        free(A[i]);
    }
    free(A);
    return 0;
}