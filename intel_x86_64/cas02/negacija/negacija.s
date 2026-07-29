.intel_syntax noprefix

.text

.global negacija

# unsigned negacija(unsigned x)
#    eax               edi
negacija:
    push rbp
    mov rbp, rsp

    not edi        # edi = ~edi
    mov eax, edi

    mov rsp, rbp
    pop rbp
    ret

