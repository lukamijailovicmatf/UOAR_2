.text

.global izracunaj

.align 2

@ int izracunaj(unsigned n, int a, int b)
@ r0               r0        r1     r2
izracunaj:
    push {fp, lr}
    mov fp, sp

    push {r4-r6}

    mov r3, #31
    mul r4, r3, r1

    sub r4, r4, r2

    mov r3, #4
    sub r4, r4, r3   @ r4 - rez_2 = 31*a - b - 4

    cmp r0, #0
        moveq r0, r4
        beq kraj

    mov r3, #-2   @ r3 - osnova
    mov r5, #-2   @ r5 - rez_1
    mov r6, #1    @ r6 - i

for_petlja:
    cmp r6, r0
    beq for_petlja_kraj

        mul r5, r3, r5

    add r6, r6, #1
    b for_petlja
for_petlja_kraj:

    mul r5, r4, r5
    mov r0, r5

kraj:

    pop {r4-r6}

    mov sp, fp
    pop {fp, pc}
