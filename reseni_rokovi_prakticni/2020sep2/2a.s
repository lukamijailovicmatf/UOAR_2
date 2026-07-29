.intel_syntax noprefix

.text

.global saberi

# void saberi(unsigned *A, unsigned *B, unsigned n, unsigned *C)
#  -             rdi          rsi           edx        rcx
saberi:
    enter 0, 0

    mov r8d, 0   # r8d - i

for_petlja:
    cmp r8d, edx
    je for_petlja_kraj

        mov r9d, [rdi + 4*r8]   # r9d - A[i]
        mov r10d, [rsi + 4*r8]  # r10d - B[i]

        add r9d, r10d
        mov [rcx + 4*r8], r9d 

    inc r8d
    jmp for_petlja
for_petlja_kraj:

    leave
    ret
     