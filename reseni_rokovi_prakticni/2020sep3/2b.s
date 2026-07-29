.intel_syntax noprefix

.text

.global minus1

# void minus1(int *A, int *B, int *C, unsigned n)
#  -           rdi     rsi     rdx       ecx
minus1:
    enter 0, 0

    mov r8d, 0   # r8d - i

for_petlja:
    cmp r8d, ecx
    je for_petlja_kraj

        mov r9d, [rdi + 4*r8]  # r9d - A[i]
        neg r9d
        mov [rdi + 4*r8], r9d

    inc r8d
    jmp for_petlja
for_petlja_kraj:

    push rdi
    push rsi
    push rdx
    push rcx
    # push r8
    # push r9

    call uzastopni

    # pop r9
    # pop r8
    pop rcx
    pop rdx
    pop rsi
    pop rdi

    leave
    ret
