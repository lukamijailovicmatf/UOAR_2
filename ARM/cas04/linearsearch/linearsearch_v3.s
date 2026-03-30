.text

.global linear_search

.align 2

@ int linear_search(int* a, int n, int x)
@  r0                r0      r1      r2
linear_search:
    push {fp, lr}
    mov fp, sp

    mov r3, #0        @ r3 - i = 0

loop:
    cmp r1, #0
    beq loop_end

        ldr r4, [r0, r3, lsl #2]    @ r4 - a[i]
        cmp r4, r2
            moveq r0, r3
            beq kraj

    sub r1, r1, #1
    add r3, r3, #1
    b loop
loop_end:
    mov r0, #-1

kraj:

    mov sp, fp
    pop {fp, pc}
