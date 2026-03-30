.intel_syntax noprefix

.text

.global find_power

# int find_power(int n, int k, int *ms, int nm);
# eax            edi    esi    rdx      ecx

find_power:
    enter 0, 0

    mov r8d, 0      # r8d - i = 0

petlja:
    cmp r8d, ecx
    jge kraj

        push rdi
        push rsi
        push rdx
        push rcx
        push r8
        push r8

        call power

        pop r8
        pop r8
        pop rcx
        pop rdx
        pop rsi
        pop rdi

        mov r9d, [rdx + 4*r8]
        cmp eax, r9d
        jne nastavak

            mov eax, r8d
            leave
            ret

nastavak:
    inc r8d
    jmp petlja

kraj:
    mov eax, -1
    leave
    ret
