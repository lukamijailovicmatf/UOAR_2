.intel_syntax noprefix

.text

.global broj_pravih_delioca

# unsigned broj_pravih_delioca(unsigned n)
#   eax                           edi
broj_pravih_delioca:
    enter 0, 0

    mov esi, 0   # esi - broj
    mov ecx, 2   # ecx - i

for_petlja:
    cmp ecx, edi
    je for_petlja_kraj

        mov eax, edi
        xor edx, edx
        div ecx   # edx = n % i

        cmp edx, 0
        jne nastavak
            inc esi

    nastavak:

    inc ecx
    jmp for_petlja
for_petlja_kraj:

    mov eax, esi

    leave
    ret
