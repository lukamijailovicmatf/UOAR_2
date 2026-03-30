#include <stdio.h>
#include <stdlib.h>

void error(const char* msg);

extern void minimax(int* a, int n, int* pmin, int* pmax);

int main(){

    int* a;
    int n;
    scanf("%d", &n);

    if((a = malloc(n * sizeof(int))) == NULL)
        error("Neuspesna alokacija memorije\n");

    for(int i=0; i<n; i++)
        scanf("%d", &a[i]);

    int min, max;
    minimax(a, n, &min, &max);
    printf("min = %d max = %d\n", min, max);
    
    free(a);
    return 0;
}