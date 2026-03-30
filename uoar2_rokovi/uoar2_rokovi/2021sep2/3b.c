#include <stdio.h>
#include <stdlib.h>

extern void transformisi(unsigned *a, int n);

void err() {
    fprintf(stderr, "-1\n");
    exit(EXIT_FAILURE);
}

int main() {
    int n;
    scanf("%d", &n);
    unsigned *a;
    if((a = malloc(n * sizeof(unsigned))) == NULL) {
        err();
    }

    for(int i = 0; i < n; i++) {
        scanf("%u", &a[i]);
    }
    
    transformisi(a, n);
    for(int i = 0; i < n; i++) {
        printf("%u ", a[i]);
    }
    printf("\n");
    free(a);
    return 0;
}