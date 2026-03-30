int sve_jedinice(unsigned n) {

  unsigned mask = 1 << 31; /* 1000...0000 */

  /* zbog vodecih nula, da bi maska prosetala do prvog pojavljivanja 1 */
  while((mask & n) == 0)
    mask >>= 1;
  

  while(mask) {
    if((mask & n) == 0)
      return 0;
    
      mask >>= 1;
  }
  return 1;
}