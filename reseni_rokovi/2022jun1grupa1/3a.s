.intel_syntax noprefix

.text

.global skalarni_proizvod
# int skalarni_proizvod(int* a, int* b, int n)
# eax                   rdi     rsi     edx

skalarni_proizvod:
    enter 0, 0

    mov r8d, edx    # edx - n
    xor ecx, ecx    # ecx - i = 0
    xor r9d, r9d    # r9d - suma = 0

petlja:
    cmp ecx, r8d
    je kraj

    mov eax, [rdi + 4*rcx]
    mov r10d, [rsi + 4*rcx]
    imul r10d
    add r9d, eax

    inc ecx
    jmp petlja

kraj:
    mov eax, r9d
    leave
    ret
