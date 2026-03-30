#include <stdio.h>
#include <stdlib.h>

extern void argmaxes(unsigned **A, int n, int m, int *args);

void err() {
    fprintf(stderr, "-1\n");
    exit(EXIT_FAILURE);
}

int main() {
    int n, m;
    scanf("%d%d", &n, &m);
    unsigned **A;
    if((A = malloc(n * sizeof(unsigned*))) == NULL) {
        err();
    }
    for (int i = 0; i < n; i++) {
        A[i] = malloc(m * sizeof(unsigned));
    }

    for (int i = 0; i < n; i++) {
        for(int j = 0; j < m; j++) {
            scanf("%u", &A[i][j]);
        }
    }

    int *args;
    if((args = malloc(n * sizeof(int))) == NULL) {
        err();
    }

    argmaxes(A, n, m, args);

    for (int i = 0; i < n; i++) {
        printf("%d ", args[i]);
    }
    printf("\n");
    
    for (int i = 0; i < n; i++) {
        free(A[i]);
    }
    free(A);
    free(args);
    return 0;
}