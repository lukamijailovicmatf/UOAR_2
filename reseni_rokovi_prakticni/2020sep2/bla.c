int izraz(int a, int b, int c){

    // (4*a - b + 1) / 2 + c^4
    int rez_1 = 4*a + 1;
    rez_1 = rez_1 - b;
    rez_1 = rez_1 / 2;

    int rez_2 = c*c*c*c;
    rez_1 = rez_1 + rez_2;

    return rez_1;
}

void saberi(unsigned *A, unsigned *B, unsigned n, unsigned *C){

    for(unsigned i=0; i<n; i++){
        C[i] = A[i] + B[i];
    }
}

void saberi_neparne(unsigned *A, unsigned *B, unsigned *C, unsigned n){

    for(unsigned i=0; i<n; i++){

        if(A[i] % 2 != 0)
            A[i] = 0;

        if(B[i] % 2 != 0)
            B[i] = 0;
    }
    saberi(A, B, n, C);
}