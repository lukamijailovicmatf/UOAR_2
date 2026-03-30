#include <stdio.h>
#include <stdlib.h>

void error(const char* msg)
{
    fprintf(stderr, "Error; %s", msg);
    exit(EXIT_FAILURE);
}

extern void fibonaci(int* a, int n);

int main(int argc, char const *argv[])
{
    int n;
    int *a;
    scanf("%d", &n);

    if((a = malloc(n * sizeof(int))) == NULL) error("neuspela alokacija");
    
    fibonaci(a, n);
    for (int i = 0; i < n; i++)
    {
        printf("%d ", a[i]);
    }
    printf("\n");

    free(a);
    return 0;
}