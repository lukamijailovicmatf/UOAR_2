.intel_syntax noprefix

.text

.global deljiv_4

# int deljiv_4(int x)
# eax           edi
deljiv_4:
    push rbp
    mov rbp, rsp

    mov esi, 4

    mov eax, edi
    cdq
    idiv esi      # eax = edi / 4   edx = edi % 4

    cmp edx, 0 
    jne else_grana

    mov eax, 1
    jmp kraj

else_grana:
    mov eax, 0

kraj:

    mov rsp, rbp
    pop rbp
    ret
