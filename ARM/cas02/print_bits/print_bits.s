.text

.global print_bits

.align 2

@ void print_bits(unsigned n)
@   -                 r0
print_bits:
    push {fp, lr}
    mov fp, sp
    push {r4, r5}

    mov r4, r0             @ r4 - n
    mov r5, #1             @ r5 - mask
    mov r5, r5, lsl #31    @ mask = 1 << 31

petlja:
    cmp r5, #0
    beq kraj_petlje

        tst r4, r5
            moveq r0, #'0'
            movne r0, #'1'

        bl putchar
        mov r5, r5, lsr #1

    b petlja
kraj_petlje:

    pop {r4, r5}
    mov sp, fp
    pop {fp, pc}
