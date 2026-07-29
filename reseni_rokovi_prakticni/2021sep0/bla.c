int trag(int **A, int n){

    int suma = 0;

    for(int i=0; i<n; i++){
        for(int j=0; j<n; j++){
            if(i == j){
                suma = suma + A[i][j];
            }
        }
    }
    return suma;
}

unsigned prost(unsigned n){

    if(n == 1)
        return 0;

    for(unsigned i=2; i<n; i++){
        if(n % i == 0)
            return 0;
    }
    return 1;
}

unsigned zbir_prostih_delioca(unsigned n){

    unsigned zbir = 0;

    for(unsigned i=2; i<=n; i++){
        if(prost(i)){
            if(n % i == 0){
                zbir = zbir + i;
            }
        }
    }
    return zbir;
}