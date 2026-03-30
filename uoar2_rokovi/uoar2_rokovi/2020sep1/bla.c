int power(int a, int b) {

    if(b == 0) 
        return 1;
        
    int a_na_b = a;
    for(int i = 1; i < b; i++) 
        a_na_b *= a;
    
    return a_na_b;
}

int izracunaj(int a, int b, int c) {

    // a^b - a^c + a*c
    int rez_1 = power(a, b);
    int rez_2 = power(a, c);
    
    rez_1 -= rez_2;
    rez_1 = rez_1 + a*c;
    
    return rez_1;
}

int armstrong(unsigned n) {

    unsigned n_kopija = n;
    unsigned br_cif = 0;
    
    while(n_kopija > 0) {
        br_cif++;
        n_kopija /= 10;
    }

    unsigned suma = 0;
    n_kopija = n;
    
    for(unsigned i = 0; i < br_cif; i++) {
        unsigned cifra = n_kopija % 10;
        suma += power(cifra, br_cif);
        n_kopija /= 10;
    }
    
    if(suma == n)
        return 1;
    else
        return -1;
}

int armstrongovi(unsigned *A, unsigned n) {
    unsigned len = 0;
    for(unsigned i = 0; i < n; i++) {
        if(armstrong(A[i]) == 1) {
            A[len] = A[i];
            len++;
        }
    }
    return len;
}
