.intel_syntax noprefix

.text

.global nzd

# unsigned nzd(unsigned a, unsigned b)
#   eax           edi          esi
nzd:
    enter 0, 0

petlja:
    cmp esi, 0
    je petlja_kraj

    mov eax, edi
    xor edx, edx
    div esi         # eax = a / b   edx = a % b

    mov edi, esi    # a = b
    mov esi, edx    # b = a % b

    jmp petlja
petlja_kraj:
    mov eax, edi

    leave
    ret
