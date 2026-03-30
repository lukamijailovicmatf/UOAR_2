void zameni(int* px, int* py){

    int vx = *px; /* *px sadrzaj na adresi px */
    int vy = *py; /* *py sadrzaj na adresi py */
    *px = vy;
    *py = vx;
}