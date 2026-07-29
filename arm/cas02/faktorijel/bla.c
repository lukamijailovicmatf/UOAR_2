unsigned faktorijel(unsigned n){

    unsigned prod = 1;
    for(unsigned i=2; i<=n; i++)
        prod *= i;
    
    return prod;
}

/* rekurzivna varijanta */
unsigned faktorijel(unsigned n){

    if(n == 0)
        return 1;

    return n * faktorijel(n-1);
}