void longest(const char *s, int *pstart, int *plenght){

    int max_p = 0;
    int max_d = 0;

    int tr_p = 0;
    int tr_d = 0;
    char tr_c = s[0];

    for (int i=0; s[i]; i++){
        if(s[i] != tr_c){
            if(tr_d > max_d){
                max_d = tr_d;
                max_p = tr_p;
            } 
            tr_p = i;
            tr_c = s[i];
            tr_d = 0;
        }
        tr_d++;
    }
    if(tr_d > max_d){
        max_d = tr_d;
        max_p = tr_p;
    }
    *pstart = max_p;
    *plenght = max_d; 
}