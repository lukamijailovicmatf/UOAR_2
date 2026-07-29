#include<stdio.h>
#include<stdlib.h>

void error(const char* msg)
{
    fprintf(stderr, "Error; %s", msg);
    exit(EXIT_FAILURE);
}

extern int find_power(int n, int k, int *ms, int nm);

int main() {

	int n, k;
	scanf("%d%d", &n, &k);

    int nm;
    int *ms;
    scanf("%d", &nm);

    if((ms = malloc(nm * sizeof(int))) == NULL) error("neuspela alokacija");

    for (int i = 0; i < nm; i++)
    {
        scanf("%d", &ms[i]);
    }
    
	int index = find_power(n, k, ms, nm);
	
	printf("%d\n", index);   

    free(ms);
    return 0;
}
