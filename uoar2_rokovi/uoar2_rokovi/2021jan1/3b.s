.intel_syntax noprefix

.text

.global izbaci_proste

# unsigned izbaci_proste(unsigned *A, unsigned n)
# eax                    rdi          esi

izbaci_proste:
    enter 0, 0

    mov edx, 0          # edx - len = 0
    mov ecx, 0          # ecx - i = 0

for_petlja:
    cmp ecx, esi
    je kraj_petlje

        push rdi
        push rsi
        push rdx
        push rcx

        mov edi, [rdi + 4*rcx]
        call prost      # eax - prost(A[i])

        pop rcx
        pop rdx
        pop rsi
        pop rdi

        cmp eax, 1
        je nastavak

            mov r8d, [rdi + 4*rcx]
            mov [rdi + 4*rdx], r8d
            inc edx

nastavak:
    inc ecx
    jmp for_petlja

kraj_petlje:
    mov eax, edx
    leave
    ret
