.text

.global trag

.align 2

@ int trag(int **A, int n);
@ r0       r0       r1

trag:
    push {fp, lr}
    mov fp, sp

    push {r4-r6}

    mov r2, #0      @ r2 - zbir
    mov r3, #0      @ r3 - i

petlja_1:
    cmp r3, r1
    beq kraj_petlje_1

        mov r4, #0      @ r4 - j
        petlja_2:
            cmp r4, r1
            beq kraj_petlje_2

                cmp r3, r4
                    ldreq r5, [r0, r3, lsl #2]  @ r5 - A[i]
                    ldreq r6, [r5, r4, lsl #2]  @ r6 - A[i][j]
                    addeq r2, r2, r6

            add r4, r4, #1
            b petlja_2

kraj_petlje_2:
    add r3, r3, #1
    b petlja_1

kraj_petlje_1:

    mov r0, r2

    pop {r4-r6}

    mov sp, fp
    pop {fp, pc}
