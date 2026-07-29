#include <stdio.h>
#include <stdlib.h>

extern int stranice(int *A, int *B, int *C, int n);

void err() {
    fprintf(stderr, "-1\n");
    exit(EXIT_FAILURE);
}

int main() {
    int n;
    scanf("%d", &n);
    int *a, *b, *c;
    if((a = malloc(n * sizeof(int))) == NULL) {
        err();
    }
    if((b = malloc(n * sizeof(int))) == NULL) {
        err();
    }
    if((c = malloc(n * sizeof(int))) == NULL) {
        err();
    }

    for(int i = 0; i < n; i++) {
        scanf("%d", &a[i]);
    }
    for(int i = 0; i < n; i++) {
        scanf("%d", &b[i]);
    }
    for(int i = 0; i < n; i++) {
        scanf("%d", &c[i]);
    }
    
    printf("%d\n", stranice(a, b, c, n));
    
    free(a);
    free(b);
    free(c);
    return 0;
}