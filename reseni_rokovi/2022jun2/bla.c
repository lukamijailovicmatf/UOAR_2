int argmax(unsigned *a, int n) {

    unsigned max = a[0];
    int max_i = 0;
    
    for(int i = 1; i < n; i++) {
        if(a[i] > max) {
            max = a[i];
            max_i = i;
        }
    }
    return max_i;
}

void argmaxes(unsigned **A, int n, int m, int *args) {

    for(int i = 0; i < n; i++) {
        args[i] = argmax(A[i], m);
    }  
}

int power(int n, int m) {

    if(m == 0) 
        return 1;
    
    int m_kopija = m;
    
    if(m < 0) 
        m = -m;
        
    int proizvod = n;
    
    for(int i = 1; i < m; i++) 
        proizvod *= n;
    
    if(m_kopija < 0) 
        return 1 / proizvod;
    else 
        return proizvod;
    
}

int find_power(int n, int k, int *ms, int nm) {

    for(int i = 0; i < nm; i++) {
        if(power(n, k) == ms[i]) {
            return i;
        }
    }
    return -1;
}
