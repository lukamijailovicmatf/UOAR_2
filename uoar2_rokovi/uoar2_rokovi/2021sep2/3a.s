.intel_syntax noprefix

.text

.global broj_pravih_delioca

# unsigned broj_pravih_delioca(unsigned n)
# eax                          edi

broj_pravih_delioca:
    enter 0, 0

    mov esi, 0          # esi - br = 0
    mov ecx, 2          # ecx - i = 2

for_petlja_broj_pravih:
    cmp ecx, edi
    jae kraj_petlja_broj_pravih

        mov eax, edi
        xor edx, edx
        div ecx         # edx - n % i

        cmp edx, 0
        jne nastavak_for_petlje

            inc esi

nastavak_for_petlje:
    inc ecx
    jmp for_petlja_broj_pravih

kraj_petlja_broj_pravih:
    mov eax, esi
    leave
    ret
