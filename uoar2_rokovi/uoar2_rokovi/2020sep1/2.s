.text

.global power
.global izracunaj

.align 2

@ int power(int a, int b)
@ r0        r0     r1

power:
    push {fp, lr}
    mov fp, sp

    cmp r1, #0
        moveq r0, #1
        beq kraj

    mov r2, r0          @ r2 - a_na_b
    mov r3, #1          @ r3 - i = 1

for_petlja:
    cmp r3, r1
    	moveq r0, r2
    	beq kraj

        mul r2, r0, r2

    add r3, r3, #1
    b for_petlja

kraj:
    mov sp, fp
    pop {fp, pc}

@ int izracunaj(int a, int b, int c)
@ r0            r0     r1     r2

izracunaj:
    push {fp, lr}
    mov fp, sp

    push {r4}

    push {r0-r2}
    bl power
    mov r3, r0          @ r3 - a^b
    pop {r0-r2}

    push {r0-r3}
    mov r1, r2
    bl power
    mov r4, r0          @ r4 - a^c
    pop {r0-r3}

    sub r3, r3, r4
    mla r3, r0, r2, r3

    mov r0, r3

    pop {r4}

    mov sp, fp
    pop {fp, pc}
