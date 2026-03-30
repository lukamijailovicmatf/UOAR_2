.intel_syntax noprefix

.text

.global prost

# int prost(unsigned n)
# eax            edi

prost:
    enter 0, 0

    cmp edi, 1
    je nije_prost

    mov esi, 2     # esi - i = 2

petlja:
    cmp esi, edi
    je jeste_prost

        mov eax, edi
        xor edx, edx
        div esi         # edx = n % i

        cmp edx, 0
        je nije_prost

    inc esi
    jmp petlja

nije_prost:
    mov eax, -1
    jmp kraj

jeste_prost:
    mov eax, 1

kraj:
    leave
    ret
