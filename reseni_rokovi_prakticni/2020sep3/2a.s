.intel_syntax noprefix

.text

.global uzastopni

# void uzastopni(int *A, int *B, int *C, unsigned n)
#  -              rdi     rsi     rdx       ecx
uzastopni:
    enter 0, 0

    mov r8d, 0   # r8d - i

for_petlja:
    cmp r8d, ecx
    je for_petlja_kraj

        mov r9d, [rdi + 4*r8]  # r9d - A[i]
        mov r10d, [rdi + 4*r8 + 4]  # r10d - A[i+1]

        add r9d, r10d  # r9d = A[i] + A[i+1]

        mov r10d, [rsi + 4*r8]  # r10d - B[i]
        mov r11d, [rsi + 4*r8 + 4]  #  r11d - B[i+1]

        add r10d, r11d  # r10d = B[i] + B[i+1]

        cmp r9d, r10d
        jle else_grana
            mov [rdx + 4*r8], r9d
            jmp nastavak

    else_grana:
        mov [rdx + 4*r8], r10d

    nastavak:

    inc r8d
    jmp for_petlja
for_petlja_kraj:

    leave
    ret
