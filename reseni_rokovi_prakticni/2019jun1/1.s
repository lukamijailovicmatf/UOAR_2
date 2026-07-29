.intel_syntax noprefix

.text

.global sve_jedinice

# int sve_jedinice(unsigned n)
# eax                 edi
sve_jedinice:
    enter 0, 0

    mov esi, 1
    shl esi, 31   # esi - maska

while_1:
    test edi, esi
    jnz while_2
        shr esi, 1
    
    jmp while_1

while_2:
    cmp esi, 0
    je kraj

    test edi, esi
    jnz nastavak
        mov eax, 0
        leave
        ret

nastavak:
    shr esi, 1
    jmp while_2

kraj:

    mov eax, 1
    leave
    ret
