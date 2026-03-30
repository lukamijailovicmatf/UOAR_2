.text

.global obrni

.align 2

@ unsigned obrni(unsigned n)
@    r0             r0
obrni:
    push {fp, lr}
    mov fp, sp

    and r1, r0, #1      @ r1 - y = n & 1
    mov r2, #1          @ r2 - i = 1

petlja:
    cmp r2, #32
    beq kraj

        mov r0, r0, lsr #1
        mov r1, r1, lsl #1

        and r3, r0, #1
        orr r1, r1, r3

    add r2, r2, #1
    b petlja
kraj:

    mov r0, r1

    mov sp, fp
    pop {fp, pc}
