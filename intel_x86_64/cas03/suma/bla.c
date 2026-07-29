unsigned suma(unsigned n){

    unsigned trenutna_suma = 0;
    for(unsigned i=1; i<=n; i++)
        trenutna_suma += i;

    return trenutna_suma;
}

unsigned suma(unsigned n){

    return n * (n+1) / 2;
}