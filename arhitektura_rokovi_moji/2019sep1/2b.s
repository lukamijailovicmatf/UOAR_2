.intel_syntax noprefix

.text

.global stranice

# int stranice(int* A, int* B, int* C, int n)
# eax           rdi     rsi     rdx     ecx
stranice:
    enter 0, 0

    mov r8d, 0   # r8d - broj
    mov r9d, 0   # r9d - i

for_petlja:
    cmp r9d, ecx
    je for_petlja_kraj

        push rdi
        push rsi
        push rdx
        push rcx
        push r8
        push r9

        mov edi, [rdi + 4*r9]
        mov esi, [rsi + 4*r9]
        mov edx, [rdx + 4*r9]
        call trougao

        pop r9
        pop r8
        pop rcx
        pop rdx
        pop rsi
        pop rdi

        cmp eax, 1
        jne nastavak
            inc r8d

    nastavak:

    inc r9d
    jmp for_petlja
for_petlja_kraj:

    mov eax, r8d

    leave
    ret
