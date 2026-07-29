// C implementacija
int argmax(unsigned *a, int n) {
	
	int max_i = 0;
	unsigned max = a[0];
	
	for(int i = 1; i < n; i++) {
		if(a[i] > max) {
			max = a[i];
			max_i = i;
		}
	}

	return max_i;
}
