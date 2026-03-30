char najcesci_karakter(char* plast, char* igla) {

    unsigned brojaci[256];
    
    for(int i = 0; i < 256; i++)
        brojaci[i] = 0;

    for(int i = 0; igla[i]; i++) {
        brojaci[igla[i]] = broj_ponavljanja(plast, igla[i]);
    }

    char max_char = igla[0];
    int max_pon = brojaci[igla[0]];


    for(int i = 0; igla[i]; i++) {
        if(max_pon < brojaci[igla[i]]) {
            max_pon = brojaci[igla[i]];
            max_char = igla[i];
        }
    }
    return max_char;
}

int broj_ponavljanja(char* str, char c) {

    int s = 0;
    for(int i = 0; str[i]; i++) {
        if(str[i] == c) 
            s++;  
    }
    return s;
}
