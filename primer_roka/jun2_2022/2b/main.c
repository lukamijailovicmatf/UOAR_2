#include <stdio.h>
#include <assert.h>
#include <stdlib.h>

extern void argmaxes(unsigned **A, int n, int m, int *args);

int main()
{
    unsigned **a;
    int *args;
    int n, m;
    int i, j;

    assert(scanf("%d%d", &n, &m) == 2);
    assert(n > 0);
    assert(m > 0);

    assert((a = malloc(sizeof(unsigned *) * n)) != NULL);
    for (i = 0; i < n; i++)
        assert((a[i] = malloc(sizeof(unsigned) * m)) != NULL);

    for (i = 0; i < n; i++)
        for (j = 0; j < m; j++)
            scanf("%u", &a[i][j]);

	assert((args = malloc(sizeof(int) * n)) != NULL);

    argmaxes(a, n, m, args);

	for (i = 0; i < n; i++)
    	printf("%d ", args[i]);
  	printf("\n");  
  
    for (i = 0; i < n; i++)
        free(a[i]);
    free(a);
	
	free(args);

    return 0;
}
