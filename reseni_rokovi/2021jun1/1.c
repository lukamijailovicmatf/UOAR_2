#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int palindrom(char *s) {
    int i = 0, j = strlen(s) - 1;

    // for(; i < j; i++, j--) {
    //     if(s[i] != s[j]) {
    //         return 0;
    //     }
    // }

    // return 1;

    __asm__(
        "for: \n\t"
            "cmp %[i], %[j] \n\t"
            "jge end_1 \n\t"
                "mov r8b, [%[s] + %[i]] \n\t"
                "mov r9b, [%[s] + %[j]] \n\t"
                "cmp r8b, r9b \n\t"
                "je continue \n\t"
                    "mov eax, 0 \n\t"
                    "jmp end \n\t"
        "continue: \n\t"
            "inc %[i] \n\t"
            "dec %[j] \n\t"
            "jmp for \n\t"
        "end_1: \n\t"
            "mov eax, 1 \n\t"
        "end: \n\t"
        : 
        : [s] "r" (s), [i] "r" ((long) i), [j] "r" ((long) j)
        :
    );

}

int main() {
    char *s;
    scanf("%ms", &s);
    printf("%d\n", palindrom(s));
    free(s);
    return 0;
}