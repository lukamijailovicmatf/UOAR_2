.text

.global minimax

.align 2

@ void minimax(int* a, int n, int* pmin, int* pmax)
@  -             r0     r1       r2          r3
minimax:
    push {fp, lr}
    mov fp, sp

    push {r4-r6}

    ldr r4, [r0], #4        @ r4 - min = a[0]
    mov r5, r4              @ r5 - max = min

petlja:
    cmp r1, #1
    beq petlja_kraj

        ldr r6, [r0], #4    @ r6 - tmp = *a

        cmp r6, r5
            movgt r5, r6

        cmp r6, r4
            movlt r4, r6

        sub r1, r1, #1

    b petlja
petlja_kraj:

    str r4, [r2]
    str r5, [r3]

    pop {r4-r6}

    mov sp, fp
    pop {fp, pc}
