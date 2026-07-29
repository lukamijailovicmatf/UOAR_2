int savrsen_stepen(unsigned n, unsigned *pm, unsigned *pk){

    for(unsigned m=2; m<n; m++){
        unsigned stepen = m * m;
        unsigned k = 2;

        while(stepen <= n){
            if(stepen == n){
                *pm = m;
                *pk = k;
                return 1;
            }
            stepen *= m;
            k++;
        }
    }
    return 0;
}