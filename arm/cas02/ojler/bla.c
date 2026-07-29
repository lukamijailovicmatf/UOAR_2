/* iterativna funkcija za nzd */
unsigned nzd(unsigned x, unsigned y){

    while(y != 0){
        unsigned tmp = x % y;
        x = y;
        y = tmp;
    }
    return x;
}

/* rekurzivna funkcija za nzd */
unsigned nzd(unsigned x, unsigned y){
	
    if(y == 0)
      return x;
	  
    return nzd(y, x % y);
}
