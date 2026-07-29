.intel_syntax noprefix

.text

.global suma

# unsigned suma(unsigned n)
#   eax            edi
suma:
    enter 0, 0

    mov r9d, 0        # r9d - trenutna_suma

    mov ecx, 1        # ecx - i

for_petlja:
    cmp ecx, edi
    ja for_petlja_kraj

        mov eax, ecx
        mov esi, 2
        xor edx, edx
        div esi       # eax = i / 2   edx = i % 2

        cmp edx, 0
        jne i_nije_parno
            add r9d, ecx 

i_nije_parno:

    inc ecx
    jmp for_petlja
for_petlja_kraj:
    mov eax, r9d

    leave
    ret
  