.intel_syntax noprefix

.text

.global suma_negativnih

# int suma_negativnih(int* a, int n)
# eax                  rdi     esi
suma_negativnih:
    enter 0, 0

    mov edx, 0   # edx - suma
    mov ecx, 0   # ecx - i

for_petlja:
    cmp ecx, esi
    je for_petlja_kraj

        mov r8d, [rdi + 4*rcx]  # r8d - a[i]

        cmp r8d, 0
        jge nastavak
            add edx, r8d

    nastavak:

    inc ecx
    jmp for_petlja
for_petlja_kraj:

    mov eax, edx

    leave
    ret
