#include <stdio.h>
#include <stdlib.h>
#include <assert.h>

void error()
{
    fprintf(stderr, "-1");
    exit(EXIT_FAILURE);
}

/**
 * Funckija pronalazi k-ti najmanji element niza a
 * primenom algoritma quick select.
 * Funkcija menja redosled elemenata niza.
 *
 * Ocekivana vremneska slozenost algoritma je O(n)
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
    assert(0 < k && k <= n);

    // Bazni slucaj
    if (n == 1)
        return a[0];

    int mesto_pivota;

    // particionisanje niza
    // TODO zakomentarisani deo koda implementirati u inline asembleru
    int pivot = a[0];
    mesto_pivota = 1;
    // for (int i = 1; i < n; ++i)
    // {
    //     if (a[i] <= pivot)
    //     {
    //         int tmp = a[i];
    //         a[i] = a[mesto_pivota];
    //         a[mesto_pivota] = tmp;
    //         mesto_pivota++;
    //     }
    // }
    // a[0] = a[mesto_pivota - 1];
    // a[mesto_pivota - 1] = pivot;

    __asm__(
        "mov ecx, 1 \n\t"       // ecx - i
        "for: \n\t"
        "cmp ecx, %[n] \n\t"
        "jge end \n\t"
        "mov r8d, [%[a] + 4*rcx] \n\t"      // r8d - a[i] - tmp
        "cmp r8d, %[pivot] \n\t"
        "jg continue \n\t"
        "mov r9d, [%[a] + 4*rdi] \n\t"
        "mov [%[a] + 4*rcx], r9d \n\t"
        "mov [%[a] + 4*rdi], r8d \n\t"
        "inc rdi \n\t"
        "continue: \n\t"
        "inc ecx \n\t"
        "jmp for \n\t"
        "end: \n\t"
        "mov r8d, %[mesto_pivota] \n\t"
        "dec r8d \n\t"                          // r8d - mesto_pivota - 1
        "mov r9d, [%[a] + 4*r8] \n\t"           // r9d - a[mesto_pivota - 1]
        "mov [%[a]], r9d \n\t"
        "mov [%[a] + 4*r8], %[pivot] \n\t"
        : [mesto_pivota] "+&D" (mesto_pivota), [pivot] "+&r" (pivot)
        : [a] "r" (a), [n] "r" (n)
        : "ecx", "r8", "r9"
    );

    if (k == mesto_pivota)
    {
        return pivot;
    }
    else if (k < mesto_pivota)
    {
        return quick_select(a, mesto_pivota - 1, k);
    }
    else
    {
        return quick_select(a + mesto_pivota, n - mesto_pivota, k - mesto_pivota);
    }
}

int main()
{
    int n, *a, k;

    scanf("%d", &n);
    if (n <= 0)
    {
        error();
    }

    a = malloc(n * sizeof(int));
    if (a == NULL)
    {
        error();
    }

    for (int i = 0; i < n; ++i)
    {
        scanf("%d", &a[i]);
    }

    scanf("%d", &k);
    if (k <= 0 || k > n)
    {
        error();
    }

    printf("%d\n", quick_select(a, n, k));

    free(a);

    return 0;
}