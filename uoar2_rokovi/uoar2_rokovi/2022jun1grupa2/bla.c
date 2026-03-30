int suma_parnih(int n) {

    int suma = 0;

    if(n < 0)
        n = -n;

    while(n > 0) {
    
        int cifra = n % 10;
        
        if(cifra % 2 == 0) 
            suma += cifra;
            
        n /= 10;
    }
    return suma;
}

void izmeni_niz(int *a, unsigned n) {

    for (unsigned i = 0; i < n; i++) {
    
        if(a[i] % 2 == 0) {
            int posl_cifra = a[i] % 10;
            a[i] = posl_cifra;
        } else {
            a[i] = suma_parnih(a[i]);
        }
    }
}

int nzd(int a, int b) {

    while(b > 0) {
    
        int tmp = b;
        b = a % b;
        a = tmp;
    }	
    return a;
}

unsigned izbaci_uzajamno_proste_sa_b(int *a, unsigned n, int b) {

    unsigned len = 0;
    
    for (unsigned i = 0; i < n; i++) {
    	/* ako elementi a[i] nisu uzajamno prosti sa b onda ih ubacujemo u novi niz */
        if(nzd(a[i], b) != 1) {
            a[len] = a[i];
            len++;
        }
    }
    return len;
}
