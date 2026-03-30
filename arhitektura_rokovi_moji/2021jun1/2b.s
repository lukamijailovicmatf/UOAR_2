.intel_syntax noprefix

.text

.global niz_na_stepen

# unsigned niz_na_stepen(int *a, unsigned n, int b)
#   eax                   rdi       esi       edx
niz_na_stepen:
    enter 0, 0

    mov r8d, 0   # r8d - len
    mov ecx, 0   # ecx - i

for_petlja:
    cmp ecx, esi
    je for_petlja_kraj

        push rdi
        push rsi
        push rdx
        push rcx
        push r8
        push r8

        mov edi, [rdi + 4*rcx]
        mov esi, 3
        call stepen   # eax - stepen(a[i], 3)
        mov r9d, eax  # r9d - rez

        pop r8
        pop r8
        pop rcx
        pop rdx
        pop rsi
        pop rdi

        cmp r9d, edx
        jg nastavak
            mov [rdi + 4*r8], r9d
            inc r8d

    nastavak:

    inc ecx
    jmp for_petlja
for_petlja_kraj:

    mov eax, r8d

    leave
    ret
