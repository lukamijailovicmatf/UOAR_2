.text

.global argmax

.align 2

@ int argmax(unsigned *a, int n)
@ r0         r0           r1

argmax:
    push {fp, lr}
    mov fp, sp

    push {r4, r5}

    ldr r2, [r0]        @ r2 - max = a[0]
    mov r3, #0          @ r3 - max_i = 0
    mov r4, #1          @ r4 - i = 1

for_petlja_argmax:
    cmp r4, r1
    bge kraj_for_petlja_argmax

        ldr r5, [r0, r4, lsl #2]    @r5 - a[i]
        cmp r5, r2
            movgt r2, r5
            movgt r3, r4

    add r4, r4, #1
    b for_petlja_argmax

kraj_for_petlja_argmax:
    mov r0, r3

    pop {r4, r5}

    mov sp, fp
    pop {fp, pc}
