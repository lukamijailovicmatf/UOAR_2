#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int count_n_gram(const char *word, const char *n_gram) {
    int n_gram_len = strlen(n_gram);
    int word_len = strlen(word);
    int count = 0;
    for (int i = 0; i <= word_len - n_gram_len; i++)
    {
        // int flag = 1;
        // for (int j = 0; n_gram[j]; j++)
        // {
        //     if (word[i + j] != n_gram[j])
        //     {
        //         flag = 0;
        //         break;
        //     }
        // }
        // count += flag;

        __asm__(
            "mov eax, 1 \n\t"           // eax - flag = 1
            "xor rcx, rcx \n\t"         // rcx - j = 0
            "for_petlja: \n\t"
            "mov sil, [%[n_gram] + rcx] \n\t"       // sil - n_gram[j]
            "cmp sil, 0 \n\t"
            "je kraj_for_petlje \n\t"
            "mov rdx, %[i] \n\t"
            "add rdx, rcx \n\t"
            "mov dil, [%[word] + rdx] \n\t"         // dil - word[i+j]
            "cmp dil, sil \n\t"
            "je nastavak \n\t"
            "xor eax, eax \n\t"
            "jmp kraj_for_petlje \n\t"
            "nastavak: \n\t"
            "inc rcx \n\t"
            "jmp for_petlja \n\t"
            "kraj_for_petlje: \n\t"
            "add %[count], eax\n\t"
            : [count] "+&r" (count)
            : [n_gram] "r" (n_gram), [i] "r" ((long) i), [word] "r" (word)
            : "eax", "rcx", "dil", "sil", "rdx"
        );
        
    }
    return count;
}

int main() {
    char *word;
    char *n_gram;
    scanf("%ms %ms", &word, &n_gram);
    printf("%d\n", count_n_gram(word, n_gram));

    free(word);
    free(n_gram);

    return 0;
}
