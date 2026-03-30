int najcesca_cifra(unsigned n){

    int brojaci[10];

    for(int i=0; i<10; i++){

        brojaci[i] = 0;
    }

    do{
        brojaci[n % 10]++;
        n /= 10;
    }while(n != 0);

    int max_c;
    int max_bp = -1;

    for(int i=0; i<10; i++){

        if(brojaci[i] > max_bp){
            max_bp = brojaci[i];
            max_c = i;
        }
    }
    return max_c;
}