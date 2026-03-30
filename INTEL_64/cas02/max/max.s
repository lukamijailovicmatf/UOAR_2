.intel_syntax noprefix

.text

.global max

# int max(int x, int y)
# eax      edi    esi
max:
    push rbp
    mov rbp. rsp

    cmp edi, esi
    jle else_grana

    mov eax, edi
    jmp kraj

else_grana:
    mov eax, esi

kraj:

    mov rsp, rbp
    pop rbp
    ret
