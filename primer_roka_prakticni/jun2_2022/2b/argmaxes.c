// C implementacija
extern int argmax(unsigned *a, int n);

extern void argmaxes(unsigned **A, int n, int m, int *args) {

	for(int i = 0; i < n; i++)
		args[i] = argmax(A[i], m);
}
