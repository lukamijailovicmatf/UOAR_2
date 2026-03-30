.text

.global power
.global izracunaj

.align 2

@ int power(int a, int b)
@ r0         r0     r1
power:
    push {fp, lr}
    mov fp, sp

    cmp r1, #0
        moveq r0, #1
        beq kraj

    mov r2, r0   @ r2 - a_na_b
    mov r3, #1   @ r3 - i

for_petlja:
    cmp r3, r1
    beq for_petlja_kraj

        mul r2, r0, r2

    add r3, r3, #1
    b for_petlja
for_petlja_kraj:
    mov r0, r2

kraj:
    mov sp, fp
    pop {fp, pc}

@ int izracunaj(int a, int b, int c)
@ r0             r0     r1     r2
izracunaj:
    push {fp, lr}
    mov fp, sp

    push {r0-r2}
    bl power
    mov r3, r0    @ r3 - izraz_1 = power(a, b)
    pop {r0-r2}

    push {r0-r3}
    mov r1, r2
    bl power
    mov r4, r0    @ r4 - izraz_2 = power(a, c)
    pop {r0-r3}

    sub r3, r3, r4

    mul r5, r0, r2   @ r5 = a*c
    add r3, r3, r5

    mov r0, r3

    mov sp, fp
    pop {fp, pc}
