// C implementacija
int power(int n, int m) {
	int p = 1;

	for(int i = 0; i < m; i++)
		p *= n;

	return p;
}	
