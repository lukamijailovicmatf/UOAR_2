.text

.global transformisi

.align 2

@ int transformisi(int n)
@ r0                r0
transformisi:
    push {fp, lr}
    mov fp, sp

    mov r2, #0   @ r2 - novi_broj
    mov r3, #1   @ r3 - dekada
    mov r4, r0   @ r4 - n_kopija

    cmp r0, #0
        neglt r0, r0

while_petlja:
    cmp r0, #0
    beq while_petlja_kraj

        push {r0-r4}
        mov r1, #10
        bl __modsi3  @ r0 = n % 10
        mov r5, r0   @ r5 - cifra = n % 10
        pop {r0-r4}

        push {r0-r5}
        mov r0, r5
        mov r1, #2
        bl __modsi3  @ r0 = cifra % 2
        mov r6, r0   @ r6 = cifra % 2
        pop {r0-r5}

        cmp r6, #0
            mulne r7, r5, r3
            addne r2, r2, r7
            movne r8, #10
            mulne r3, r8, r3

        push {r0-r7}
        mov r1, #10
        bl __divsi3
        mov r8, r0   @ r8 = n / 10
        pop {r0-r7}

        mov r0, r8

    b while_petlja
while_petlja_kraj:

    cmp r4, #0
        neglt r2, r2

    mov r0, r2

    mov sp, fp
    pop {fp, pc}
