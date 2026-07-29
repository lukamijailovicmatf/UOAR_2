#include <stdio.h>
#include <stdlib.h>

extern void most_freq(const char *s, char *pc, unsigned *pf);

int main(){

    char *s;
    scanf("%ms", &s);
    char c;
    unsigned f;
    most_freq(s, &c, &f);

    printf("'%c': %d\n", c, f);

    free(s);
    return 0;
}
