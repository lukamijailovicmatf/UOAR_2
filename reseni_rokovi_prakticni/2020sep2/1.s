.text

.global izraz

.align 2

@ int izraz(int a, int b, int c)
@ r0         r0     r1     r2
izraz:
    push {fp, lr}
    mov fp, sp

    push {r4-r6}

    mov r3, #4
    mul r4, r0, r3
    add r5, r4, #1  

    sub r5, r5, r1

    push {r0-r2}
    mov r0, r5
    mov r1, #2
    bl __divsi3
    mov r3, r0    @ r3 = (4*a - b + 1) / 2 
    pop {r0-r2}

    mul r5, r2, r2
    mul r6, r5, r5

    add r3, r3, r6

    mov r0, r3

    pop {r4-r6}

    mov sp, fp
    pop {fp, pc}
