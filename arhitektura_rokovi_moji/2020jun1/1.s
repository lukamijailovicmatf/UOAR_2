.text

.global obrni

.align 2

@ unsigned obrni(unsigned n)
@   r0              r0
obrni:
    push {fp, lr}
    mov fp, sp

    and r1, r0, #1   @ r1 - y
    mov r2, #1       @ r2 - i

for_petlja:
    cmp r2, #32
    beq for_petlja_kraj

        lsr r0, r0, #1
        lsl r1, r1, #1

        and r3, r1, #1
        orr r1, r1, r3

    add r2, r2, #1
    b for_petlja
for_petlja_kraj:

    mov r0, r1

    mov sp, fp
    pop {fp, pc}
