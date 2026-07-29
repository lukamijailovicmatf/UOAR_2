.intel_syntax noprefix

.text

.global izbaci_neparne

# void izbaci_neparne(long* a, int *pn)
#  -                    rdi      rsi
izbaci_neparne:
    enter 0, 0

    mov r10d, 0        # r10d - novo_n

    mov r9d, [rsi]     # r9d - n

    mov ecx, 0         # ecx - i

for_petlja:
    cmp ecx, r9d
    je for_petlja_kraj

        mov r8, [rdi+8*rcx]   # r8 - a[i]

        test r8, 1
        jnz nije_parno
            mov [rdi+8*r10], r8
            inc r10d

    nije_parno:

    inc ecx
    jmp for_petlja
for_petlja_kraj:

    mov [rsi], r10d

    leave
    ret
