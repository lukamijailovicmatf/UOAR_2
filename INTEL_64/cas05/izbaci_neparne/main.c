#include <stdio.h>
#include <stdlib.h>

void error(const char* msg)
{
    fprintf(stderr, "Error; %s", msg);
    exit(EXIT_FAILURE);
}

extern void izbaci_neparne(long* a, int *n);

int main(int argc, char const *argv[])
{
    int n;
    long *a;
    scanf("%d", &n);

    if((a = malloc(n * sizeof(long))) == NULL) error("neuspela alokacija");

    for (int i = 0; i < n; i++)
    {
        scanf("%ld", &a[i]);
    }
    

    izbaci_neparne(a, &n);
    for (int i = 0; i < n; i++)
    {
        printf("%ld ", a[i]);
    }
    printf("\n");

    free(a);
    return 0;
}