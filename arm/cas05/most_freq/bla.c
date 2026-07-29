void most_freq(const char *s, char *pc, unsigned *pf){

    /* niz brojaca za svaki karakter */
    unsigned brojaci[256];

    /* inicijalizacija niza brojaca */
    for(int i=0; i<256; i++){
        brojaci[i] = 0;
    }

    /* prolazak kroz nisku s i uvecavanje odgovarajucih
       brojaca */
    for(int i=0; s[i] != 0; i++){
        brojaci[s[i]] = brojaci[s[i]] + 1;
    }
    char najcesci = max_id(brojaci, 256);
    *pc = najcesci;
    *pf = brojaci[najcesci];
}

int max_id(unsigned a[], int n){

    int max_i = 0;
    unsigned max = a[0];

    for(int i=0; i<n; i++){
        if(a[i] > max){
            max = a[i];
            max_i = i;
        }
    }
    return max_i;
}
