.intel_syntax noprefix

.text

.global najcesca_cifra

# int najcesca_cifra(unsigned n)
# eax                   edi
najcesca_cifra:
    enter 40, 0    # zauzimamo 40 bajtova

    lea r8, [rbp-40]   # r8 - brojaci

    mov ecx, 0         # ecx - i

init_for_petlja:
    cmp ecx, 10
    je init_for_petlja_kraj

    mov dword ptr [r8+4*rcx], 0

    inc ecx
    jmp init_for_petlja
init_for_petlja_kraj:

prebroj_cifre:

        mov esi, 10
        mov eax, edi
        xor edx, edx
        div esi         # eax = n / 10   edx = n % 10

        add dword ptr [r8+4*rdx], 1   # brojaci[n % 10]++

        mov edi, eax      # n = n / 10

    cmp edi, 0
    jne prebroj_cifre

    mov r9d, 0       # r9d - max_c

    mov r10d, -1     # r10d - max_bp

    mov ecx, 0       # ecx - i
petlja_max:
    cmp ecx, 10
    je petlja_max_kraj

        mov eax, [r8+4*rcx]  # eax - brojaci[i]
        cmp eax, r10d
        jle manje_ili_jednako
            mov r10d, eax
            mov r9d, ecx

    manje_ili_jednako:

    inc ecx
    jmp petlja_max
petlja_max_kraj:

    mov eax, r9d

    leave
    ret
