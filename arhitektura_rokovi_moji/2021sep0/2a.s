.intel_syntax noprefix

.text

.global prost

# unsigned prost(unsigned n)
#   eax             edi
prost:
    enter 0, 0

    cmp edi, 1
    je nije_prost

    mov ecx, 2   # ecx - i

for_petlja:
    cmp ecx, edi
    je jeste_prost

        mov eax, edi
        xor edx, edx
        div ecx   # edx = n % i

        cmp edx, 0
        je nije_prost

    inc ecx
    jmp for_petlja

nije_prost:
    mov eax, 0
    jmp kraj

jeste_prost:
    mov eax, 1

kraj:
    leave
    ret
