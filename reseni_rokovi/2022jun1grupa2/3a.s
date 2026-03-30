.intel_syntax noprefix

.text

.global nzd

# int nzd(int a, int b)
# eax      edi    esi

nzd:
    enter 0, 0

while_petlja:
    cmp esi, 0
    je kraj_while_petlje

        mov ecx, esi        # ecx - tmp = b

        mov eax, edi
        cdq
        idiv esi            # edx = a % b

        mov esi, edx
        mov edi, ecx

    jmp while_petlja

kraj_while_petlje:

    mov eax, edi
    leave
    ret
