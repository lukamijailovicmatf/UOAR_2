#include <stdio.h>
#include <stdlib.h>

extern int stepen(int n, unsigned s);
extern unsigned niz_na_stepen(int *a, unsigned n, int b);

void err() {
    fprintf(stderr, "-1\n");
    exit(EXIT_FAILURE);
}

int main() {
    unsigned n;
    scanf("%u", &n);
    int *a;
    if((a = malloc(n * sizeof(int))) == NULL) {
        err();
    }

    for(unsigned i = 0; i < n; i++) {
        scanf("%d", &a[i]);
    }
    int b;
    scanf("%d", &b);
    
    unsigned len = niz_na_stepen(a, n, b);
    printf("%u ", len);
    for(unsigned i = 0; i < len; i++) {
        printf("%d ", a[i]);
    }
    printf("\n");
    free(a);
    return 0;
}