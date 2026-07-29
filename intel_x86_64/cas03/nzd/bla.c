unsigned nzd(unsigned a, unsigned b){

    while(b != 0){
        unsigned tmp = a % b;
        a = b;
        b = tmp;
    }
    return a;
}