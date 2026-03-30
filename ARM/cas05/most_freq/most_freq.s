.text

.global most_freq

.align 2

@ void most_freq(const char *s, char *pc, unsigned *pf)
@  -                  r0           r1           r2
most_freq:
    push {fp, lr}
    mov fp, sp

    sub sp, #1024

    sub r3, fp, #1024    @ r3 - brojaci[256]

    push {r4-r6}

    mov r4, #0           @ r4 - i
    mov r5, #0

init_for_loop:
    cmp r4, #256
    beq init_for_loop_end

        str r5, [r3, r4, lsl #2]

    add r4, r4, #1
    b init_for_loop
init_for_loop_end:

    mov r4, #0            @ r4 - i

for_loop:
    ldrb r5, [r0, r4]     @ r5 - s[i]
    cmp r5, #0
    beq for_loop_end

        ldr r6, [r3, r5, lsl #2]   @ r6 - brojaci[s[i]]
        add r6, r6, #1
        str r6, [r3, r5, lsl #2]

    add r4, r4, #1
    b for_loop
for_loop_end:

    push {r0-r3}
    mov r0, r3
    mov r1, #256
    bl max_id       @ r0 - najcesci
    mov r4, r0      @ r4 - najcesci
    pop {r0-r3}

    str r4, [r1]
    ldr r5, [r3, r4, lsl #2]   @ r5 - brojaci[najcesci]
    str r5, [r2]

    pop {r4-r6}

    mov sp, fp
    pop {fp, pc}
