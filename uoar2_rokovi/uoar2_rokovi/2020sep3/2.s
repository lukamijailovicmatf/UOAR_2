.text

.global izraz

.align 2

@ int izraz(int a, int b, int c)
@ r0        r0     r1     r2

izraz:
    push {fp, lr}
    mov fp, sp

    push {r4-r5}

    add r3, r0, r1
    add r3, r2, r3      @ r3 - rez_1 = a + b + c
    mov r4, r3
    mul r3, r4, r3      @ r3 - rez_1=(a+b+c)^2

    mov r4, #2
    mul r5, r4, r0      @ r5 - rez_2 = 2a
    
    mov r4, #4
    mla r5, r1, r4, r5  @ r5 - rez_2 = 2a+4b
    
    mov r4, #8
    mla r5, r2, r4, r5  @ r5 - rez_2 = 2a+4b+8c

    add r3, r3, r5
    mov r0, r3

    pop {r4-r5}

    mov sp, fp
    pop {fp, pc}
