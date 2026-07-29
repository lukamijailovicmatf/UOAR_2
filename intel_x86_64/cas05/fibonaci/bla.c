void fibonaci(int* a, int n){

    if(n == 0)
        return;

    a[0] = 1;

    if(n == 1)
        return;
    
    a[1] = 1;

    for(int i=2; i<n; i++)
        a[i] = a[i-1] + a[i-2];
}