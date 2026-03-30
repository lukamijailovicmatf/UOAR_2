unsigned ojler(unsigned n){

    unsigned br_up = 0;
    for(int i=1; i<n; i++){
        if(nzd(i, n) == 1)
            br_up++;
    }
    return br_up;
}
