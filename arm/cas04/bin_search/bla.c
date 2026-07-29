int binary_search(int* a, int n, int x){

    int l = 0;
    int d = n-1;

    while(l <= d){
        int s = (l + d)/2;

        if(a[s] == x){
            return s;
        }else if(a[s] < x){
            l = s + 1;
        }else if(a[s] > x){
            d = s - 1;
        }
    }
    return -1;
}