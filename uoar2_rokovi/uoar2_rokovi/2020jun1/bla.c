unsigned obrni(unsigned n) {

    unsigned y = n & 1; /* upisemo poslednji bit iz n */
    
    for(unsigned i = 1; i < 32; i++) {
        n >>= 1;
        y <<= 1;
        y |= n & 1;
    }
    return y;
}

int suma_negativnih(int *a, int n) {

    int suma = 0;
    for(int i = 0; i < n; i++) {
        if(a[i] < 0) {
            suma += a[i];
        }
    }
    return suma;
}

int suma(int *A, int na, int *B, int nb) {

    int suma_A = suma_negativnih(A, na);
    int suma_B = suma_negativnih(B, nb);
    suma_A += suma_B;
    suma_A = -suma_A;
    
    return suma_A;
}
