.intel_syntax noprefix

.text

.global najduzi_vektor
# int najduzi_vektor(int** vektori, int n, int m)
# eax                    rdi         esi    edx

najduzi_vektor:
    enter 0, 0

    xor r8d, r8d    # r8d - max
    xor r9d, r9d    # r9d - max_indeks
    xor ecx, ecx    # ecx - i = 0

petlja:
    cmp ecx, edx
    je kraj

        push rdi
        push rsi
        push rdx
        push rcx
        push r8
        push r9

        mov edx, esi
        mov rsi, [rdi + 8*rcx]
        mov rdi, [rdi + 8*rcx]
        call skalarni_proizvod

        pop r9
        pop r8
        pop rcx
        pop rdx
        pop rsi
        pop rdi

        cmp eax, r8d
        jle nastavak

            mov r8d, eax
            mov r9d, ecx


nastavak:
    inc ecx
    jmp petlja

kraj:
    mov eax, r9d
    leave
    ret
    
