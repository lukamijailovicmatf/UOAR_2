.intel_syntax noprefix

.text

.global saberi

# int saberi(int x, int y)
# eax         edi    esi
saberi:
    push rbp
    mov rbp, rsp

    add edi, esi     # edi = edi + esi
    mov eax, edi     # eax = edi

    mov rsp, rbp
    pop rbp
    ret
