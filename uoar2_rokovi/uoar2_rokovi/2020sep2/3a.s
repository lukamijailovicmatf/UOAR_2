.intel_syntax noprefix

.text

.global saberi

# void saberi(unsigned *A, unsigned *B, unsigned n, unsigned *C)
# -           rdi          rsi          edx         rcx

saberi:
    enter 0, 0

    mov r8d, 0

for_petlja:
    cmp r8d, edx
    je kraj

    mov r9d, [rdi + 4*r8]
    mov r10d, [rsi + 4*r8]
    
    add r9d, r10d
    mov [rcx + 4*r8], r9d

    inc r8d
    jmp for_petlja

kraj:
    leave
    ret
