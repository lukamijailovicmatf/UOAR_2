#include <stdio.h>
#include <stdlib.h>

extern int skalarni_proizvod(int *, int *, int);

void greska() {
    fprintf(stderr, "%d\n", -1);
    exit(EXIT_FAILURE);
}

int main() {
    int n;
    scanf("%d", &n);
    int *a, *b;
    if((a = malloc(n * sizeof(int))) == NULL) {
        greska();
    }
    if((b = malloc(n * sizeof(int))) == NULL) {
        greska();
    }

    for(unsigned i = 0; i < n; i++) {
        scanf("%d", &a[i]);
    }

    for(unsigned i = 0; i < n; i++) {
        scanf("%d", &b[i]);
    }
    printf("%d\n", skalarni_proizvod(a, b, n));
    free(a);
    free(b);
    return 0;
}