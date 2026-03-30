.text

.global faktorijel

.align 2

@ long faktorijel(long n);
@  r0              r0

faktorijel:
    push {fp, lr}
    mov fp, sp

    mov r1, #1          @ r1 - f = 1
    mov r2, #2          @ r2 - i = 2

for_petlja:
    cmp r2, r0
    bgt kraj

        mul r1, r2, r1

    add r2, r2, #1
    b for_petlja
for_petlja_kraj:

    mov r0, r1

    mov sp, fp
    pop {fp, pc}
