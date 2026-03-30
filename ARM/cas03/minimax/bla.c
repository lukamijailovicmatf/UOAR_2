void minimax(int* a, int n, int* pmin, int* pmax){

    int min, max;
    min = max = a[0];
    a++;

    while(n > 1){
        int tmp = *a;
        a++;
        
        if(tmp > max)
            max = tmp

        if(tmp < min)
            min = tmp;
        
        n--;
    }
    *pmin = min;
    *pmax = max;
}
