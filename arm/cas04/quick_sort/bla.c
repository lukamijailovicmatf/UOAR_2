void quick_sort(int* a, int l, int d){

    if(l>=d)
        return;

    int pivot = a[l];
    int mesto_pivota = l;
    
    for(int i=l+1; i<d; i++){
        if(a[i]<=pivot){
            mesto_pivota++;
            int tmp = a[mesto_pivota];
            a[mesto_pivota] = a[i];
            a[i] = tmp;
        }
    }
    a[l] = a[mesto_pivota];
    a[mesto_pivota] = pivot;
    quick_sort(a, l, mesto_pivota-1);
    quick_sort(a, mesto_pivota+1, d);
}