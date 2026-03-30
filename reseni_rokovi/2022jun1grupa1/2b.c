#include <stdio.h>
#include <stdlib.h>

extern char najcesci_karakter(char* haystack, char* needle);

int main() {
    char *haystack, *needle;
    scanf("%ms%ms", &haystack, &needle);
    printf("%c\n", najcesci_karakter(haystack, needle));
    free(haystack);
    free(needle);
    return 0;
}