unsigned suma(unsigned n){

    unsigned trenutna_suma = 0;
    for(unsigned i=1; i<=n; i++){
        if(i % 2 == 0)
            trenutna_suma += i;
    }
    return trenutna_suma;
}