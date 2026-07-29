void izbaci_neparne(long* a, int *pn){

    int novo_n = 0;
    int n = *pn;

    for(int i=0; i<n; i++){
        
        if(a[i] % 2 == 0){
            a[novo_n] = a[i];
            novo_n++;
        }
    }
    *pn = novo_n;
}