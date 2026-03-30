.text

.global izraz

.align 2

@ int izraz(int a, int b, int c)
@ r0        r0     r1     r2

izraz:
    push {fp, lr}
    mov fp, sp

    mov r4, #4
    mov r5, #1
    mla r3, r4, r0, r5      @ r3 - rez_1 = 4a+1

    sub r3, r3, r1

    push {r0-r2}
    mov r0, r3
    mov r1, #2
    bl __divsi3
    mov r3, r0              @ r3 - rez_1 / 2
    pop {r0-r2}

    mul r5, r2, r2
    mul r4, r5, r5          @ r4 - rez_2 = c^4

    add r3, r3, r4

    mov r0, r3

    mov sp, fp
    pop {fp, pc}
