.text

.global trag

.align 2

@ int trag(int **A, int n)
@ r0         r0      r1
trag:
    push {fp, lr}
    mov fp, sp

    push {r4-r6} @ OBAVEZNOOO !!!

    mov r2, #0   @ r2 - suma
    mov r3, #0   @ r3 - i

for_petlja_1:
    cmp r3, r1
    beq for_petlja_1_kraj

        mov r4, #0   @ r4 - j

    for_petlja_2:
        cmp r4, r1
        beq for_petlja_2_kraj

            cmp r3, r4
                ldreq r5, [r0, r3, lsl #2] @ r5 - A[i]
                ldreq r6, [r5, r4, lsl #2] @ r6 - A[i][j]
                addeq r2, r2, r6

        add r4, r4, #1
        b for_petlja_2
    for_petlja_2_kraj:

    add r3, r3, #1
    b for_petlja_1
for_petlja_1_kraj:

    mov r0, r2

    pop {r4-r6} @ OBAVEZNOOO !!!

    mov sp, fp
    pop {fp, pc}
