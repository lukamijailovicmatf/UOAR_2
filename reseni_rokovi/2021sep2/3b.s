.intel_syntax noprefix

.text

.global transformisi

# void transformisi(unsigned *a, int n)
# -                    rdi        esi

transformisi:
    enter 0, 0

    mov ecx, 0          # ecx - i = 0

for_petlja:
    cmp ecx, esi
    je kraj

        mov r8d, [rdi + 4*rcx]   # r8d - a[i]
        
        cmp r8d, 1
        jne drugi_deo

            mov r8d, 0
            mov [rdi + 4*rcx], r8d
            jmp nastavak

    drugi_deo:
    
        push rdi
        push rsi
        push rcx
        push rcx

        mov edi, [rdi + 4*rcx]
        call broj_pravih_delioca  # eax - broj...(a[i])

        pop rcx
        pop rcx
        pop rsi
        pop rdi

        cmp eax, 0
        je nastavak
            mov [rdi + 4*rcx], eax

nastavak:
    inc ecx
    jmp for_petlja

kraj:
    leave
    ret
