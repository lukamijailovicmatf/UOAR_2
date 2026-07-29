#include<stdio.h>

extern int power(int n, int m);

int main() {

	int n, m;
	scanf("%d%d", &n, &m);
	
	printf("%d\n", power(n, m));

	return 0;

}
