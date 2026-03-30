.intel_syntax noprefix

.text

.global niz_na_stepen

# unsigned niz_na_stepen(int *a, unsigned n, int b)
# eax                                   rdi           esi         edx

niz_na_stepen:
    enter 0, 0

    mov r8d, 0      # r8d - len = 0
    mov ecx, 0      # ecx - i = 0

petlja:
    cmp ecx, esi
    jae kraj_niz_na_stepen

        push rdi
        push rsi
        push rdx
        push r8
        push rcx
        push rcx

        mov edi, [rdi + 4*rcx] 
        mov esi, 3
        call stepen     # eax - rez

        pop rcx
        pop rcx
        pop r8
        pop rdx
        pop rsi
        pop rdi

        mov r9d, eax    # r9d - rez=stepen(a[i], 3)
        cmp r9d, edx
        jg nastavak
            mov [rdi + 4*r8], r9d
            inc r8d

nastavak:
    inc ecx
    jmp petlja

kraj_niz_na_stepen:
    mov eax, r8d
    leave
    ret
