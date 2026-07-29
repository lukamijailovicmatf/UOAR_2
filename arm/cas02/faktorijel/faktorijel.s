.text

.global faktorijel

.align 2

@ unsigned faktorijel(unsigned n)
@   r0                    r0
faktorijel:

    push {fp, lr}
    mov fp, sp

    mov r1, #1        @ r1 - prod
    mov r2, #2        @ r2 - i

for_loop:
    cmp r2, r0
    bhi for_loop_end

        mul r1, r2, r1

    add r2, r2, #1
    b for_loop
for_loop_end:
    mov r0, r1

    mov sp, fp
    pop {fp, pc}
