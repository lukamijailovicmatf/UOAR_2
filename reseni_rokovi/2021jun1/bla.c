int transformisi(int n) {

    int novi_broj = 0;
    int dekada = 1;

    int kopija_n = n;
    
    if(n < 0)
        n = -n;
    
    while(n > 0){
    
        int cifra = n % 10;
        
        if(cifra % 2 != 0){
            novi_broj += cifra*dekada;
            dekada *= 10;
        }
        n /= 10;
    }
    
    if(kopija_n < 0) 
        return -novi_broj;
    else 
        return novi_broj;
}

int stepen(int n, unsigned s) {

    if(s == 0)
        return 1;

    int proizvod = n;
    for (unsigned i = 1; i < s; i++)
        proizvod = proizvod * n;
        
    return proizvod;
}

unsigned niz_na_stepen(int *a, unsigned n, int b) {

    unsigned len = 0; /* duzina novog niza */

    for(unsigned i = 0; i < n; i++) {
    
        int rez = stepen(a[i], 3);
        if(rez <= b) {
            a[len] = rez;
            len++;
        }
    }
    return len;
}
