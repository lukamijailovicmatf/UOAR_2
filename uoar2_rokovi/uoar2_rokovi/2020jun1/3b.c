#include <stdio.h>
#include <stdlib.h>

extern int suma(int *A, int na, int *B, int nb);

void err() {
    fprintf(stderr, "-1\n");
    exit(EXIT_FAILURE);
}

int main() {
    int na, nb;
    scanf("%d%d", &na, &nb);
    int *a, *b;
    if((a = malloc(na * sizeof(int))) == NULL) {
        err();
    }
    if((b = malloc(nb * sizeof(int))) == NULL) {
        err();
    }

    for(int i = 0; i < na; i++) {
        scanf("%d", &a[i]);
    }
    for(int i = 0; i < nb; i++) {
        scanf("%d", &b[i]);
    }
    
    printf("%d\n", suma(a, na, b, nb));
    
    free(a);
    free(b);
    return 0;
}