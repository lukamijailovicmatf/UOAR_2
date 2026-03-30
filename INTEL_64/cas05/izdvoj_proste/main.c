#include <stdio.h>
#include <stdlib.h>

void error(const char* msg)
{
    fprintf(stderr, "Error; %s", msg);
    exit(EXIT_FAILURE);
}

extern int izdvoj_proste(int* a, int n, int* b);

int main(int argc, char const *argv[])
{
    int n;
    int *a;
    int *b;
    scanf("%d", &n);

    if((a = malloc(n * sizeof(int))) == NULL) 
        error("neuspela alokacija");

    if((b = malloc(n * sizeof(int))) == NULL) 
        error("neuspela alokacija");

    for (int i = 0; i < n; i++)
    {
        scanf("%d", &a[i]);
    }
    
    int n_b = izdvoj_proste(a, n, b);

    for (int i = 0; i < n_b; i++)
    {
        printf("%d ", b[i]);
    }
    printf("\n");

    free(a);
    free(b);
    return 0;
}