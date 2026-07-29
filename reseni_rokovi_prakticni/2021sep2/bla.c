void mala_u_velika(char *s){

    for(unsigned i=0; s[i]; i++){
        if(s[i] >= 'a'){
            if(s[i] <= 'z'){
                s[i] = s[i] + ('A' - 'a');
            }
        }
    }
}

unsigned broj_pravih_delioca(unsigned n){

    unsigned broj = 0;

    for(unsigned i=2; i<n; i++){
        if(n % i == 0){
            broj++;
        }
    }
    return broj;
}

void transformisi(unsigned *a, int n){

    for(int i=0; i<n; i++){
        if(a[i] == 1){
            a[i] = 0;
        }else{
            unsigned br = broj_pravih_delioca(a[i]);
            if(br != 0)
                a[i] = br;
        }
    }
}