void print_bits(unsigned n){

    unsigned mask = 1 << 31;
    while(mask != 0){
        char arg;
        if(mask & n == 1)
            arg = '1';
        else
            arg = '0';
        putchar(arg);

        mask >>= 1;
    }
}