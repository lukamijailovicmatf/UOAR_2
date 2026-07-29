int izdvoj_proste(int* a, int n, int* b){

    int n_b = 0;

    for(int i=0; i<n; i++){
        if(prost(a[i])){
            b[n_b] = a[i];
            n_b++;
        }
    }
    return n_b;
}

int prost(int n){

    if(n == 1)
        return 0;

    for(int i=2; i<n; i++){
        if(n % i == 0)
            return 0;
    }
    return 1;
}