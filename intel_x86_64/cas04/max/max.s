.intel_syntax noprefix

.text

.global max

# int max(int* a, int n)
# eax      rdi     esi
max:
    enter 0, 0

    mov eax, [rdi]     # eax - m = a[0]

    mov ecx, 1         # ecx - i

for_petlja:
    cmp ecx, esi
    je for_petlja_kraj

        mov r8d, [rdi + 4*rcx]  # r8d - a[i]
        cmp eax, r8d
        jge nastavak
            mov eax, r8d
nastavak:

    inc ecx
    jmp for_petlja
for_petlja_kraj:

    leave
    ret
