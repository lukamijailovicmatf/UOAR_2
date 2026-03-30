.text

.global norms

.align 2

@ void norms(int **a, int m, int n, int *h, int *v)
@   -           r0      r1    r2      r3      ???
norms:
    push {fp, lr}
    mov fp, sp

    push {r4-r9}

    mov r4, #0               @ r4 - max_normi
    mov r5, #0               @ r5 - i
for_loop_1:
    cmp r5, r1
    beq for_loop_1_end

        mov r6, #0           @ r6 - norma
        mov r7, #0           @ r7 - j
    for_loop_1_u:
        cmp r7, r2
        beq for_loop_1_u_end

            ldr r8, [r0, r5, lsl #2]      @ r8 - a[i]
            ldr r9, [r8, r7, lsl #2]      @ r9 - a[i][j]
            cmp r9, #0
                sublt r6, r6, r9
                addgt r6, r6, r9

        add r7, r7, #1
        b for_loop_1_u
    for_loop_1_u_end:

    cmp r6, r4
        movhi r4, r6

    add r5, r5, #1
    b for_loop_1
for_loop_1_end:

    str r4, [r3]                    @ *h = max_normi

    @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

    mov r4, #0             @ r4 - max_normi
    mov r7, #0             @ r7 - j
for_loop_2:
    cmp r7, r2
    beq for_loop_2_end

        mov r6, #0         @ r6 - norma
        mov r5, #0         @ r5 - i
    for_loop_2_u:
        cmp r5, r1
        beq for_loop_2_u_end

            ldr r8, [r0, r5, lsl #2]      @ r8 - a[i]
            ldr r9, [r8, r7, lsl #2]      @ r9 - a[i][j]
            cmp r9, #0
                sublt r6, r6, r9
                addgt r6, r6, r9


        add r5, r5, #1
        b for_loop_2_u
    for_loop_2_u_end:

    cmp r6, r4
        movhi r4, r6

    add r7, r7, #1
    b for_loop_2
for_loop_2_end:

    ldr r3, [fp, #8]        @ r3 - v
    str r4, [r3]            @ *v = max_normi
    pop {r4-r9}


    mov sp, fp
    pop {fp, pc}
    