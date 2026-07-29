.intel_syntax noprefix

.text

.global power
.global amstrong

# int power(int a, int b)
# eax        edi    esi
power:
    enter 0, 0

    cmp esi, 0
    je nula_stepen

    mov eax, edi   # eax - a_na_b
    mov ecx, 1     # ecx - i

for_petlja:
    cmp ecx, esi
    je kraj    

        cdq
        imul edi   # eax = a_na_b * a

    inc ecx
    jmp for_petlja

nula_stepen:
    mov eax, 1

kraj:
    leave
    ret


# int amstrong(unsigned n)
# eax             edi
amstrong:
    enter 0, 0

    mov esi, 0     # esi - suma
    mov eax, edi   # eax - n_kopija
    mov ecx, 0     # ecx - br_cifara

while_petlja:
    cmp eax, 0
    jbe nastavak

        xor edx, edx
        mov r8d, 10
        div r8d   # eax = n_kopija / 10

        inc ecx

    jmp while_petlja

nastavak:

    mov eax, edi   # eax - n_kopija
    mov r8d, 0     # r8d - i

for_petlja_amstrong:
    cmp r8d, ecx
    je for_petlja_amstrong_kraj

        xor edx, edx
        mov r9d, 10
        div r9d   # edx - cifra = n_kopija % 10

        push rdi
        push rsi
        push rcx
        push r8
        push r9
        push rax
        
        mov edi, edx
        mov esi, ecx
        call power
        mov edx, eax

        pop rax
        pop r9
        pop r8
        pop rcx
        pop rsi
        pop rdi

        add esi, edx
    
    inc r8d
    jmp for_petlja_amstrong
for_petlja_amstrong_kraj:

    cmp esi, edi
    je jeste_amstrong
        mov eax, -1
        jmp kraj_funkcije

jeste_amstrong:
    mov eax, 1

kraj_funkcije:
    leave
    ret
