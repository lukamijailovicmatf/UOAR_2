int izraz(int a, int b, int c) {

    // (a+b+c)^2 + (2a+4b+8c)
    int rez_1 = a + b + c;
    rez_1 *= rez_1;
    int rez_2 = 2*a + 4*b + 8*c;
    rez_1 += rez_2;
    
    return rez_1;
}

// test primeri: 3 2 1 ---> 58
// -3 -1 -5 ---> 31
// 2 4 -10 --> -44

void uzastopni(int *A, int *B, int *C, unsigned n) {
    for (unsigned i = 0; i < n-1; i++) {
        if((A[i] + A[i+1]) > (B[i] + B[i+1])) 
            C[i] = A[i] + A[i+1];
        else 
            C[i] = B[i] + B[i+1];
    }
}
// 4   1 7 -1 4    4 3 2 5 --> 8 6 7
// 3  -10 -20 30   20 -30 10 --> -10 10
// 5   1 2 3 4 5     6 7 8 9 10 --> 13 15 17 19

void minus1(int *A, int *B, int *C, unsigned n) {
    for (unsigned i = 0; i < n; i++)
        A[i] = -A[i];
 
    uzastopni(A, B, C, n);
}
// 4   1 7 -1 4    4 3 2 5 --> 7 5 7
// 3  -10 -20 30   20 -30 10 --> 30 -10
// 5   1 2 3 4 5     6 7 8 9 10 --> 13 15 17 19
