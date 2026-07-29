unsigned ojler(unsigned n){

    unsigned broj_up = 0;
    for(unsigned i=1; i<n; i++){
        if(nzd(i, n) == 1)
            broj_up++;
    }
    return broj_up;
}