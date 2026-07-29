int transformisi(int n){

    int n_kopija = n;
    int dekada = 1;
    int novi_broj = 0;

    if(n < 0)
        n = -n;

    while(n > 0){
        int cifra = n % 10;
        if(cifra % 2 != 0){
            novi_broj = novi_broj + cifra * dekada;
            dekada = dekada * 10;
        }
        n = n / 10;
    }

    if(n_kopija < 0)
        return -novi_broj;
    else
        return novi_broj;
}

int stepen(int n, unsigned s){

    if(s == 0)
        return 1;

    int rez = n;

    for(unsigned i=1; i<s; i++){
        rez = rez * n;
    }
    return rez;
}

unsigned niz_na_stepen(int *a, unsigned n, int b){

    unsigned len = 0;

    for(unsigned i=0; i<n; i++){
        int rez = stepen(a[i], 3);
        if(rez <= b){
            a[len] = rez;
            len++;
        }
    }
    return len;
}