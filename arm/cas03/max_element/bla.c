int max_element(int* a, int n){

    int max = a[0];
    for(int i=1; i<n; i++){
        if(max < a[i])
            max = a[i];
    }
    return max;
}