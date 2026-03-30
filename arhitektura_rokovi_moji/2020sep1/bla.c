int power(int a, int b){

    if(b == 0)
        return 1;

    int a_na_b = a;

    for(int i=1; i<b; i++){
        a_na_b = a_na_b * a;
    }
    return a_na_b;
}

int izracunaj(int a, int b, int c){

    int izraz_1 = power(a, b);  // a^b
    int izraz_2 = power(a, c);  // a^c

    izraz_1 = izraz_1 - izraz_2;  // a^b - a^c
    izraz_1 = izraz_1 + a*c;

    return izraz_1;
}

int amstrong(unsigned n){

    unsigned suma = 0;
    int n_kopija = n;
    unsigned br_cifara = 0;

    while(n_kopija > 0){
        n_kopija = n_kopija / 10;
        br_cifara++;
    }

    n_kopija = n;

    for(unsigned i=0; i<br_cifara; i++){
        unsigned cifra = n_kopija % 10;
        suma = suma + power(cifra, br_cifara);
        n_kopija = n_kopija / 10;
    }

    if(suma == n){
        return 1;
    }else{
        return -1;
    }
}