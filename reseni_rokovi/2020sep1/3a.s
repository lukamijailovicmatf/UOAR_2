.intel_syntax noprefix

.global power
.global armstrong

# int power(int a, int b)
# eax        edi    esi

power:
    enter 0, 0

    cmp esi, 0
    je nula_eksponent

    mov eax, edi        # eax - a_na_b
    mov r8d, 1          # r8d - i = 1

petlja_power:
    cmp r8d, esi
    je kraj_power

        cdq
        imul edi

    inc r8d
    jmp petlja_power

nula_eksponent:
    mov eax, 1
    jmp kraj_power

kraj_power:
    leave
    ret

# int armstrong(unsigned n)
# eax              edi

armstrong:
    enter 0, 0

    mov eax, edi        # eax - n_kopija = n
    mov ecx, 0          # ecx - br_cifara

while_petlja:
    cmp eax, 0
    jle nastavak

        inc ecx

        xor edx, edx
        mov r8d, 10
        div r8d         # eax = n_kopija / 10

    jmp while_petlja

nastavak:

    mov r8d, 0          # r8d - suma = 0
    mov eax, edi        # eax - n_kopija

    mov r9d, 0          # r9d - i = 0

for_petlja:
    cmp r9d, ecx
    je nastavi_armstrong

        xor edx, edx
        mov r10d, 10
        div r10d        # edx - cifra = n_kopija % 10

        push rdi
        push rsi
        push rcx
        push r8
        push rax
        push r9
        
        mov edi, edx
        mov esi, ecx
        call power
        mov edx, eax    # edx - power(cifra, br_cif)

        pop r9
        pop rax
        pop r8
        pop rcx
        pop rsi
        pop rdi

        add r8d, edx

    inc r9d
    jmp for_petlja

nastavi_armstrong:
    cmp r8d, edi
    je jeste_armstrong
        mov eax, -1
        jmp kraj_funkcije

jeste_armstrong:
    mov eax, 1
    
kraj_funkcije:
    leave
    ret
