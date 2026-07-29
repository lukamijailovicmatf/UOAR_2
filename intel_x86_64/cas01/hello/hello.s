.intel_syntax noprefix

.data

poruka: .asciz "Hello world!\n"

.text

.global main

main:
    push rbp
    mov rbp, rsp

    lea rdi, poruka
    call printf

    mov rsp, rbp
    pop rbp
    ret
