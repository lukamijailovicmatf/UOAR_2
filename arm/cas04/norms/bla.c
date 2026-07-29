void norms(int **a, int m, int n, int *h, int *v){

    /* setnja po vrstama */
    unsigned max_normi = 0;
    for(int i=0; i<m; i++){
        unsigned norma = 0;
        for(int j=0; j<n; j++){
            if(a[i][j] < 0)
                norma -= a[i][j];
            else
            norma += a[i][j];
        }
        if(norma > max_normi)
            max_normi = norma;
    }
    *h = max_normi;

    /* setnja po kolonama */
    max_normi = 0;
    for(int j=0; j<n; j++){
        unsigned norma = 0;
        for(int i=0; i<m; i++){
            if(a[i][j] < 0)
                norma -= a[i][j];
            else
            norma += a[i][j];
        }
        if(norma > max_normi)
            max_normi = norma;
    }
    *v = max_normi;
}