.intel_syntax noprefix

.text

.global sve_jedinice

# int sve_jedinice(unsigned n)
# eax                 edi
sve_jedinice:
    enter 0, 0

    mov ecx, 1      # ecx - mask
    shl ecx, 31     # siftuj u levo ecx za 31 poziciju

while_1:
    test ecx, edi
    jnz while_2
        shr ecx, 1
    jmp while_1
    
while_2:
    cmp ecx, 0
    je kraj

    test ecx, edi
    jnz continue
        mov eax, 0
        leave
        ret

continue:
    shr ecx, 1
    jmp while_2

kraj:
    mov eax, 1
    leave
    ret
