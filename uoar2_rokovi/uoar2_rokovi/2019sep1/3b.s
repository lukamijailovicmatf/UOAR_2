.intel_syntax noprefix

.text

.global stranice

# int stranice(int *A, int *B, int *C, int n)
# eax           rdi     rsi     rdx     ecx

stranice:
    enter 0, 0

    mov r8d, 0          # r8d - br = 0
    mov r9d, 0          # r9d - i = 0

for_petlja_stranice:
    cmp r9d, ecx
    je kraj_petlje

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
        jne nastavak_for_petlje
            inc r8d
            
nastavak_for_petlje:

    inc r9d
    jmp for_petlja_stranice
kraj_petlje:
    mov eax, r8d
    leave
    ret
