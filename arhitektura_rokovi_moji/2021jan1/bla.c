int izracunaj(unsigned n, int a, int b){

    // (-2)^n * (31*a - b - 4)
    int rez_2 = 31*a - b - 4;

    if(n == 0)
        return rez_2;

    int osnova = -2;
    int rez_1 = -2;

    for(unsigned i=1; i<n; i++){
        rez_1 = rez_1 * osnova;
    }
    return rez_1 * rez_2;
}

int prost(unsigned n){

    if(n == 1)
        return -1;

    for(unsigned i=2; i<n; i++){
        if(n % i == 0)
            return -1;
    }
    return 1;
}

unsigned izbaci_proste(unsigned *A, unsigned n){

    unsigned len = 0;

    for(unsigned i=0; i<n; i++){
        if(prost(A[i]) != 1){
            A[len] = A[i];
            len++;
        }
    }
    return len;
}