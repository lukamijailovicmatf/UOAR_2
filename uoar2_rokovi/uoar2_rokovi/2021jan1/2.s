.text

.global izracunaj

.align 2

@ int izracunaj(unsigned n, int a, int b)
@ r0            r0          r1     r2

izracunaj:
    push {fp, lr}
    mov fp, sp

    push {r4-r6}

    mov r4, #31
    mov r5, #-4
    mla r3, r1, r4, r5
    sub r3, r3, r2      @ r3 - rez_2 = 31*a - b - 4

    cmp r0, #0
        moveq r0, r3
        beq kraj
    
    mov r4, #-2             @ r4 - osnova = -2
    mov r5, #-2             @ r5 - rez_1 = -2
    mov r6, #1              @ r6 - i = 1

petlja:
    cmp r6, r0
    beq kraj_petlje

        mul r5, r4, r5

    add r6, r6, #1
    b petlja

kraj_petlje:
    mul r5, r3, r5
    mov r0, r5

kraj:
    pop {r4-r6}

    mov sp, fp
    pop {fp, pc}
