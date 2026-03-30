#include <stdio.h>
#include <stdlib.h>

extern int najduzi_vektor(int **, int, int);

void greska() {
    fprintf(stderr, "%d\n", -1);
    exit(EXIT_FAILURE);
}

int main() {
    int n, m;
    scanf("%d%d", &n, &m);
    int **a;
    if((a = malloc(m * sizeof(int*))) == NULL) {
        greska();
    }
    for(unsigned i = 0; i < m; i++) {
        if((a[i] = malloc(n * sizeof(int))) == NULL) {
            greska();
        }
    }

    for(unsigned i = 0; i < m; i++) {
        for(unsigned j = 0; j < n; j++) {
            scanf("%d", &a[i][j]);
        }
    }

    printf("%d\n", najduzi_vektor(a, n, m));

    for(unsigned i = 0; i < m; i++) {
        free(a[i]);
    }
    free(a);
    return 0;
}