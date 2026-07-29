#include <stdio.h>
#include <stdlib.h>

extern int prost(unsigned n);

void err() {
    fprintf(stderr, "-1\n");
    exit(EXIT_FAILURE);
}

int main() {
    unsigned n;
    scanf("%u", &n);
    printf("%d\n", prost(n));
    return 0;
}