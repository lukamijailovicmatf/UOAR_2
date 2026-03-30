int linear_search(int* a, int n, int x){

    for(int i=0; i<n; i++){
        if(a[i] == x)
            return i;
    }
    return -1;
}

int linear_search(int *a, int n, int x){

    int i = 0;
    while(n > 0){
        if(a[i] == x)
            return i;
        n--;
        i++;
    }
    return -1;
}