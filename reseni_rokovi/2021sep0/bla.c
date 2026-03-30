unsigned prost(unsigned n) {

    if(n == 1)
        return 0;  /* nije */
    
    for (unsigned i = 2; i < n; i++) {
        if(n % i == 0) 
            return 0;  /* nije */
        
    }
    return 1; /* jeste */
}

unsigned zbir_prostih_delioca(unsigned n) {

    unsigned zbir = 0;
    
    for (unsigned i = 2; i <= n; i++) {
        if(prost(i)) {
            if(n % i == 0) 
                zbir += i;    
        }
    }
    return zbir;
}
