#include<stdio.h>
#include<stdlib.h>

void error(const char* msg)
{
    fprintf(stderr, "Error; %s", msg);
    exit(EXIT_FAILURE);
}

extern int argmax(unsigned *a, int n);

int main() {

	int n;
    unsigned *a;
    scanf("%d", &n);

    if((a = malloc(n * sizeof(unsigned))) == NULL) error("neuspela alokacija");

    for (int i = 0; i < n; i++)
    {
        scanf("%u", &a[i]);
    }
    

    int max_i = argmax(a, n);
    printf("%d\n", max_i);

    free(a);
    return 0;
}
