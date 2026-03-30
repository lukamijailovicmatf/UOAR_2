.intel_Syntax noprefix

.global armstrongovi

# int armstrongovi(unsigned *A, unsigned n)
# eax              rdi          esi

armstrongovi:
    enter 0, 0

    mov edx, 0          # edx - len = 0
    mov ecx, 0          # ecx - i = 0

petlja_armstrongovi:
    cmp ecx, esi
    je kraj_armstrongovi

        push rdi
        push rsi
        push rdx
        push rcx

        mov edi, [rdi + 4*rcx]      # edi - A[i]
        call armstrong              # eax - armstrong(A[i])

        pop rcx
        pop rdx
        pop rsi
        pop rdi

        cmp eax, 1
        jne nastavi_petlju

            mov r8d, [rdi + 4*rcx]
            mov [rdi + 4*rdx], r8d
            inc edx

nastavi_petlju:
    inc ecx
    jmp petlja_armstrongovi

kraj_armstrongovi:
    mov eax, edx
    leave
    ret
    