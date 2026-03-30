#include <stdio.h>
#include <stdlib.h>

extern int suma_negativnih(int *a, int n);

void err() {
    fprintf(stderr, "-1\n");
    exit(EXIT_FAILURE);
}

int main() {
    int n;
    scanf("%d", &n);
    int *a;
    if((a = malloc(n * sizeof(unsigned))) == NULL) {
        err();
    }

    for(int i = 0; i < n; i++) {
        scanf("%d", &a[i]);
    }
    
    printf("%d\n", suma_negativnih(a, n));
    free(a);
    return 0;
}