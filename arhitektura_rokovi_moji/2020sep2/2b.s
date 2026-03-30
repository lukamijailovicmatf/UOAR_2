.intel_syntax noprefix

.text

.global saberi_neparne

# void saberi_neparne(unsigned *A, unsigned *B, unsigned *C, unsigned n)
#  -                     rdi          rsi          rdx          ecx
saberi_neparne:
    enter 0, 0

    mov r8d, 0    # r8d - i
    mov r11, rdx  # cuvamo rdx

for_petlja:
    cmp r8d, ecx
    je for_petlja_kraj

        mov r9d, [rdi + 4*r8]  # r9d - A[i]

        mov eax, r9d
        mov r10d, 2
        xor edx, edx
        div r10d   # edx = A[i] % 2

        cmp edx, 0
        je drugi_if
            mov r10d, 0
            mov [rdi + 4*r8], r10d

    drugi_if:

        mov r9d, [rsi + 4*r8]  # r9d - B[i]

        mov eax, r9d
        mov r10d, 2
        xor edx, edx
        div r10d   # edx = B[i] % 2

        cmp edx, 0
        je nastavak
            mov r10d, 0
            mov [rsi + 4*r8], r10d

    nastavak:

    inc r8d
    jmp for_petlja
for_petlja_kraj:

    mov rdx, r11

    push rdi
    push rsi
    push rdx
    push rcx

    mov r8, rdx
    mov rdx, rcx
    mov rcx, r8
    call saberi

    pop rcx
    pop rdx
    pop rsi
    pop rdi

    leave
    ret

