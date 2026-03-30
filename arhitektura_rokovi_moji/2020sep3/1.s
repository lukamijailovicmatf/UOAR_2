.text

.global izraz

.align 2

@ int izraz(int a, int b, int c)
@ r0         r0     r1     r2
izraz:
    push {fp, lr}
    mov fp, sp

    add r3, r0, r1
    add r3, r3, r2  @ r3 = a + b + c

    mov r4, r3
    mul r3, r4, r3  @ r3 = (a + b + c) ^ 2

    mov r4, #2
    mul r5, r4, r0  @ r5 = 2*a

    mov r4, #4
    mul r6, r4, r1  @ r6 = 4*b

    mov r4, #8
    mul r7, r4, r2  @ r7 = 8*c

    add r4, r5, r6
    add r4, r4, r7  @ r4 = 2*a + 4*b + 8*c

    add r3, r3, r4

    mov r0, r3

    mov sp, fp
    pop {fp, pc}
