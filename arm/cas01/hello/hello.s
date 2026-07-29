.text

poruka: .asciz "Hello world!\n"

.global main

.align 2
main:
    push {fp,lr}
    mov fp, sp

    adr r0, poruka
    bl printf
    mov r0, #0

    mov sp, fp
    pop {fp, pc}
