// C implementacija
extern int power(int n, int m);

int find_power(int n, int k, int *ms, int nm) {
	
	for(int i = 0; i < nm; i++) {
		int vr = power(n, ms[i]) + 1;
		if (k == vr)
			return i;
	}
	
	return -1;
}
