int arm_strlen(const char *s){

    int duzina = 0;
    while(s[duzina])
        duzina++;
        
    return duzina;
}