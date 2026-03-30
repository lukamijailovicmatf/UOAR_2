#include <stdio.h>
#include <stdlib.h>
#include <assert.h>



void error() {
    fprintf(stderr, "-1");
    exit(EXIT_FAILURE);
}

/**
 * Funckija pronalazi k-ti najmanji element niza a
 * primenom algoritma quick select.
 * Funkcija menja redosled elemenata niza.
 *
 * Ocekivana vremenska slozenost algoritma je O(n)
 * Vremenska slozenost najgoreg slucaja O(n^2)
 *
 *
 * @param a Niz u kome trazimo vrednost
 * @param n Velicna niza
 * @param k Redni broj elementa u nizu sortiranom opadajuce
 * @returns Element a[k] kada bi a bio soritran niz
 *
 * @warning Za ispravan rad algoritma neophodno je da vazi 0 < k <= n
 */
int quick_select(int *a, int n, int k)
{
    //assert(0 < k && k <= n);

    // Bazni slucaj
    if (n == 1) {
        return a[0];
    }

    int mesto_pivota;
    int pivot = a[0];

    // particionisanje niza
    // TODO zakomentarisani deo koda implementirati u inline asembleru

    /* mesto_pivota = 1; */
    /* for (int i = 1; i < n; ++i) { */
    /*     if (a[i] <= pivot) { */
    /*         int tmp = a[i]; */
    /*         a[i] = a[mesto_pivota]; */
    /*         a[mesto_pivota] = tmp; */
    /*         mesto_pivota++; */
    /*     } */
    /* } */
    /* a[0] = a[mesto_pivota - 1]; */
    /* a[mesto_pivota - 1] = pivot; */

    __asm__(
        "mov %[mesto_pivota], 1 \n\t"
        "mov r10, 1 \n\t"               // r10d - i = 1

        "for_petlja: \n\t"
        "cmp r10, %[n] \n\t"
        "jge kraj_petlje \n\t"
        "mov r8d, [%[a] + 4*r10] \n\t"      // r8d - a[i] - tmp
        //"mov edx, %[mesto_pivota] \n\t"
        "mov r9d, [%[a] + 4*rdx] \n\t"      // r9d - a[mesto_pivota]
        "cmp r8d, %[pivot] \n\t"
        "jg nastavak \n\t"       
        "mov [%[a] + 4*r10], r9d \n\t"
        "mov [%[a] + 4*rdx], r8d \n\t"
        "inc %[mesto_pivota] \n\t" 

        "nastavak: \n\t"
        "inc r10 \n\t"
        "jmp for_petlja \n\t"

        "kraj_petlje: \n\t"
        "mov r8d, %[mesto_pivota] \n\t"
        "dec r8d \n\t"                   // r8 - mesto_pivota-1
        "mov r9d, [%[a] + r8] \n\t"
        "mov [%[a]], r9d \n\t"
        "mov [%[a] + r8], %[pivot] \n\t"
        : [mesto_pivota] "+&d" (mesto_pivota), [pivot] "+&r" (pivot)
        : [n] "r" ((long) n), [a] "r" (a)
        : "r10", "r8", "r9"
    );




































    // __asm__ volatile (
    //     "mov eax, 1\n"
    //     "for: \n"
    //     "   cmp [%[a] + 4 * rax], %[pivot]\n"
    //     "   jg continue\n"
    //     "   mov r12d, [%[a] + 4 * rax]\n"
    //     "   mov ecx, [%[a] + 4 * rdx]\n"
    //     "   mov [%[a] + 4 * rax], ecx\n"
    //     "   mov [%[a] + 4 * rdx], r12d\n"
    //     "   inc %[mesto_pivota]\n"
    //     "   continue:\n"
    //     "   inc eax\n"
    //     "   cmp eax, %[n]\n"
    //     "   jl for\n"
    //     "for_end:\n" 
    //     "mov eax, %[mesto_pivota]\n"
    //     "dec eax\n"
    //     "mov r12d, [%[a] + 4 * rax]\n"
    //     "mov [%[a]], r12d\n"
    //     "mov [%[a] + 4 * rax], %[pivot]\n" :
    //     [mesto_pivota] "=&r" (mesto_pivota), [pivot] "=&r" (pivot) :
    //     "0" (1), "1" (a[0]), [a] "r" (a), [n] "r" (n) :
    //     "eax", "r12", "ecx", "rdx"
    // );

    if (k == mesto_pivota) {
        return pivot;
    } else if (k < mesto_pivota) {
        return quick_select(a, mesto_pivota - 1, k);
    } else {
        return quick_select(a + mesto_pivota, n - mesto_pivota, k - mesto_pivota);
    }
}

int main()
{
    int n, *a, k;

    scanf("%d", &n);
    if (n <= 0) {
        error();
    }

    a = malloc(n * sizeof(int));
    if (a == NULL) {
        error();
    }

    for (int i = 0; i < n; ++i) {
        scanf("%d", &a[i]);
    }

    scanf("%d", &k);
    if (k <= 0 || k > n) {
        error();
    }

    printf("%d\n", quick_select(a, n, k));

    free(a);

    return 0;
}