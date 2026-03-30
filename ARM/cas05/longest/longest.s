.text

.global longest

.align 2

@ void longest(const char *s, int *pstart, int *plenght)
@  -                  r0          r1            r2
longest:
    push {fp, lr}
    mov fp, sp

    push {r4-r9}

    mov r3, #0            @ r3 - max_p
    mov r4, #0            @ r4 - max_d

    mov r5, #0            @ r5 - tr_p
    mov r6, #0            @ r6 - tr_d

    ldrb r7, [r0]         @ r7 - tr_c

    mov r8, #0            @ r8 - i

for_loop:
    ldrb r9, [r0, r8]     @ r9 - s[i]
    cmp r9, #0
    beq for_loop_end

        cmp r9, r7
        beq nastavak
            cmp r6, r4
                movgt r4, r6
                movgt r3, r5
            mov r5, r8
            mov r7, r9
            mov r6, #0
    nastavak:
        add r6, r6, #1

    add r8, r8, #1
    b for_loop
for_loop_end:
    
    cmp r6, r4
        movgt r4, r6
        movgt r3, r5

    str r3, [r1]
    str r4, [r2]
    
    pop {r4-r9}

    mov sp, fp
    pop {fp, pc}
