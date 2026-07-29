long faktorijel(long n){

    long f = 1;

    for(long i=2; i<=n; i++)
        f = f*i;

    return f;
}

int trougao(int a, int b, int c){

    if(a > 0){
        if(b > 0){
            if(c > 0){
                if(a + b > c){
                    if(a + c > b){
                        if(b + c > a){
                            return 1;
                        }else{
                            return 0;
                        }
                    }else{
                        return 0;
                    }
                }else{
                    return 0;
                }
            }else{
                return 0;
            }
        }else{
            return 0;
        }
    }else{
        return 0;
    }
}

int stranice(int* A, int* B, int* C, int n){

    int broj = 0;

    for(int i=0; i<n; i++){
        if(trougao(A[i], B[i], C[i]))
            broj++;
    }
    return broj;
}