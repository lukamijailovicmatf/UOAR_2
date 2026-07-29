.intel_syntax noprefix

.text

.global prost

# unsigned prost(unsigned n)
#   eax             edi
prost:
    enter 0, 0

    cmp edi, 1
        mov eax, 0
        leave
        ret

    mov ecx, 2    # ecx - i

for_petlja:
    cmp ecx, edi
    ja for_petlja_kraj

        mov eax, edi
        xor edx, edx
        div ecx    # eax = n / i  edx = n % i

        cmp edx, 0
        jne nastavak
            mov eax, 0
            leave
            ret

    nastavak:

    inc ecx
    jmp for_petlja
for_petlja_kraj:

    mov eax, 1
    leave
    ret
