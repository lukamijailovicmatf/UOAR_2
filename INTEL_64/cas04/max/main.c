#include <stdio.h>
#include <stdlib.h>

extern int max(int* a, int n);

void error(const char* msg){
    fprintf(stderr, "Error: %s\n", msg);
    exit(EXIT_FAILURE);
}

int main(){

    int *a, n;
    scanf("%d", &n);

    if((a = malloc(n * sizeof(int))) == NULL)
        error("Neuspesna alokacija memorije\n");

    for(int i=0; i<n; i++)
        scanf("%d", &a[i]);

    int s = max(a, n);
    printf("%d\n", s);

    free(a);
    return 0;
}