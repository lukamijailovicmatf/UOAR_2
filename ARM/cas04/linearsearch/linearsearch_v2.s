.text

.global linear_search

.align 2

@ int linear_search(int* a, int n, int x)
@  r0                r0      r1      r2
linear_search:
    push {fp, lr}
    mov fp, sp

    push {r4}

    mov r3, #0        @ r3 - i = 0

for_loop:
    cmp r3, r1
    beq for_loop_end

        ldr r4, [r0, r3, lsl #2]    @ r4 - a[i]
        cmp r4, r2
            moveq r0, r3
            beq kraj

    add r3, r3, #1
    b for_loop
for_loop_end:
    mov r0, #-1

kraj:
    pop {r4}

    mov sp, fp
    pop {fp, pc}
