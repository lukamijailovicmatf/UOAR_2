.intel_syntax noprefix

.text

.global suma

# unsigned suma(unsigned n)
#   eax            edi
suma:
    enter 0, 0

    mov eax, 0       # eax - trenutna_suma

    mov ecx, 1       # ecx - i

for_petlja:
    cmp ecx, edi
    ja for_petlja_kraj

    add eax, ecx

    add ecx, 1
    jmp for_petlja
for_petlja_kraj:

    leave
    ret
