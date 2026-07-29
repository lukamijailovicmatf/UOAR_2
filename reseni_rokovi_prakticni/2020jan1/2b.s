.intel_syntax noprefix

.text

.global transformisi_niz

# unsigned transformisi_niz(int niz[], int n)
#   eax                       rdi       esi
transformisi_niz:
    enter 0, 0

    mov edx, 0   # edx - len
    mov ecx, 0   # ecx - i

for_petlja:
    cmp ecx, esi
    je for_petlja_kraj

        push rdi
        push rsi
        push rdx
        push rcx

        mov edi, [rdi + 4*rcx]
        call prost   # eax - prost(niz[i])

        pop rcx
        pop rdx
        pop rsi
        pop rdi

        cmp eax, 1
        jne nastavak
            mov r8d, [rdi + 4*rcx]  # r8d - niz[i]
            mov [rdi + 4*rdx], r8d
            inc edx

    nastavak:

    inc ecx
    jmp for_petlja
for_petlja_kraj:

    mov eax, edx

    leave
    ret
