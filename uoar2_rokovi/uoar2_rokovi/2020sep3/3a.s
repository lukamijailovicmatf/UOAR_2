.intel_syntax noprefix

.text

.global uzastopni

# void uzastopni(int *A, int *B, int *C, unsigned n)
# -              rdi     rsi     rdx     ecx

uzastopni:
    enter 0, 0

    mov r8d, 0      # r8d - i = 0
    dec ecx

for_petlja:
    cmp r8d, ecx
    je kraj_for_petlje

        mov r9d, [rdi + 4*r8]
        mov r10d, [rdi + 4*r8 + 4]
        add r9d, r10d                   #r9d - A[i] + A[i+1]

        mov r10d, [rsi + 4*r8]
        mov r11d, [rsi + 4*r8 + 4]
        add r10d, r11d                  #r10d - B[i] + B[i+1]

        cmp r9d, r10d
        jle zameni_sa_b
            mov [rdx + 4*r8], r9d      #C[i] = A[i] + A[i+1]
            jmp nastavak_petlje

        zameni_sa_b:
            mov [rdx + 4*r8], r10d      #C[i] = B[i] + B[i+1]

nastavak_petlje:
    inc r8d
    jmp for_petlja

kraj_for_petlje:
    leave
    ret
