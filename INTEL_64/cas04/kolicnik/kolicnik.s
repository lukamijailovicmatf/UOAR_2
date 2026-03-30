.intel_syntax noprefix

.text

.global kolicnik

# void kolicnik(int x, int y, int* k, int* o)
#  -             edi    esi    rdx      rcx
kolicnik:
    enter 0, 0

    mov r8, rdx         # r8 - cuvamo vrednost k

    mov eax, edi
    cdq
    idiv esi       # eax = x / y   edx = x % y

    mov [r8], eax
    mov [rcx], edx

    leave
    ret
