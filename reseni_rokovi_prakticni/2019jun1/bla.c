int sve_jedinice(unsigned n){

    unsigned maska = 1 << 31;

    while((n & maska) == 0)
        maska >>= 1;

    while(maska){
        if((n & maska) == 0)
            return 0;

        maska >>= 1;
    }
    return 1;
}

unsigned polukvadrat(unsigned x){

    unsigned kvadrat = x*x;

    return kvadrat / 2;
}

void filtriraj(unsigned* a, unsigned* b, unsigned n, unsigned* c, unsigned* m){

    *m = 0;
    for(unsigned i=0; i<n; i++){
        if(b[i] == 1){
            c[m] = polukvadrat(a[i]);
            (*m)++;
        }
    }
}