int palindrom(const char *s){

    char *l = s;
    char *d = s;
    while(*d != 0)
        d++;
    d--;

    while(l < d){
        if(*l != *d)
            return 0;
        l++;
        d--;
    }
    return 1;
}