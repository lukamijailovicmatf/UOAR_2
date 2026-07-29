int izraz(int a, int b, int c){

    int rez_1 = a + b + c;
    rez_1 = rez_1 * rez_1;

    int rez_2 = 2*a + 4*b + 8*c;
    rez_1 = rez_1 + rez_2;

    return rez_1;
}

void uzastopni(int *A, int *B, int *C, unsigned n){

    for(unsigned i=0; i<n; i++){
        if((A[i] + A[i+1]) > (B[i] + B[i+1]))
            C[i] = A[i] + A[i+1];
        else
            C[i] = B[i] + B[i+1];
    }
}

void minus1(int *A, int *B, int *C, unsigned n){

    for(unsigned i=0; i<n; i++){
        A[i] = -A[i];
    }
    uzastopni(A, B, C, n);
}