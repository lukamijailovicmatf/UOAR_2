#include <stdio.h>
#include <stdlib.h>

void error(const char* msg);

extern int linear_search(int* a, int n, int x);

int main(){

    int* a;
    int n;
    scanf("%d", &n);

    if((a = malloc(n * sizeof(int))) == NULL)
        error("Neuspesna alokacija memorije\n");

    for(int i=0; i<n; i++)
        scanf("%d", &a[i]);

    int x;
    scanf("%d", &x);

    printf("%d\n", linear_search(a, n, x));
    
    free(a);
    return 0;
}