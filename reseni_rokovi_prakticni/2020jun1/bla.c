unsigned obrni(unsigned n){

    unsigned y = n & 1;

    for(int i=1; i<32; i++){
        n >>= 1;
        y <<= 1;
        y = y | (n & 1);
    }
    return y;
}

int suma_negativnih(int* a, int n){

    int suma = 0;

    for(int i=0; i<n; i++){
        if(a[i] < 0){
            suma = suma + a[i];
        }
    }
    return suma;
}

int suma(int* A, int na, int* B, int nb){

    suma_A = suma_negativnih(A, na);
    suma_B = suma_negativnih(B, nb);

    suma_A = suma_A + suma_B;
    suma_A = -suma_A;

    return suma_A;
}