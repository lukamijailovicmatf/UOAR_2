#include <stdio.h>
#include <stdlib.h>

void error(const char* msg);

extern void quick_sort(int* a, int l, int d);

int main(){

    int* a;
    int n;
    scanf("%d", &n);

    if((a = malloc(n * sizeof(int))) == NULL)
        error("Neuspesna alokacija memorije\n");

    for(int i=0; i<n; i++)
        scanf("%d", &a[i]);

    quick_sort(a, 0, n-1);

    for(int i=0; i<n; i++)
        printf("%d ", a[i]);
    printf("\n");
    
    free(a);
    return 0;
}