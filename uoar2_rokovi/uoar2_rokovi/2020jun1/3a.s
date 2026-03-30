.intel_syntax noprefix

.text

.global suma_negativnih

# int suma_negativnih(int *a, int n)
# eax                  rdi     esi

suma_negativnih:
    enter 0, 0

    mov edx, 0          # edx - suma = 0
    mov ecx, 0          # ecx - i = 0

petlja_suma_negativnih:
    cmp ecx, esi
    je kraj_suma_negativnih

        mov r8d, [rdi + 4*rcx]  # r8d - a[i]

        cmp r8d, 0
        jge nastavak_petlja     # vece ili jednako
            add edx, r8d

nastavak_petlja:

    inc ecx
    jmp petlja_suma_negativnih
kraj_suma_negativnih:

    mov eax, edx

    leave
    ret
