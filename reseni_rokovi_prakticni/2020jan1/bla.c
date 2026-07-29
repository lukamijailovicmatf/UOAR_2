unsigned stepen(unsigned n){

    unsigned rez = 1;

    while(rez <= n){
        rez = rez*2;
    }
    return rez;
}

unsigned prost(unsigned n){

    if(n == 1)
        return 0;

    for(unsigned i=2; i<=n; i++){
        if(n % i == 0)
            return 0;
    }
    return 1;
}

unsigned transformisi_niz(int niz[], int n){

    unsigned len = 0;

    for(int i=0; i<n; i++){
        if(prost(niz[i]) == 1){
            niz[len] = niz[i];
            len++;
        }
    }
    return len;
}