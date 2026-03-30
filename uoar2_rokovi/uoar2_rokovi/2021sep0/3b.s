.intel_syntax noprefix

.text

.global zbir_prostih_delioca

# unsigned zbir_prostih_delioca(unsigned n)
# eax                              edi

zbir_prostih_delioca:
    enter 0, 0

    mov esi, 0          # esi - zbir
    mov ecx, 2          # ecx - i

petlja_zbir:
    cmp ecx, edi
    ja kraj_zbir

        push rdi
        push rsi
        push rcx
        push rcx

        mov edi, ecx
        call prost

        pop rcx
        pop rcx
        pop rsi
        pop rdi

        cmp eax, 1      # if(prost(i))
        jne nastavak
        
            mov eax, edi
            xor edx, edx
            div ecx     # edx = n % i

            cmp edx, 0
            jne nastavak

                add esi, ecx

nastavak:
    inc ecx
    jmp petlja_zbir

kraj_zbir:
    mov eax, esi
    leave
    ret
