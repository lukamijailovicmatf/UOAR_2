unsigned secret(unsigned n){

    while(n >= 10){

        int suma_c = 0;
        while(n != 0){
            suma_c += n % 10;
            n = n / 10;
        }
        n = suma_c;
    }
    return n;
}
