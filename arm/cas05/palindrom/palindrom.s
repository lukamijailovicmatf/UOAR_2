.text

.global palindrom

.align 2

@ int palindrom(const char *s)
@ r0                  r0
palindrom:
    push {fp, lr}
    mov fp, sp

                       @ r0 - l = s
    mov r1, r0         @ r1 - d = s

petlja_1:
    ldrb r2, [r1]
    cmp r2, #0
    beq petlja_1_kraj
        addne r1, r1, #1

    b petlja_1
petlja_1_kraj:

    sub r1, r1, #1

petlja:
    cmp r0, r1
    bhs kraj_petlje

        ldrb r2, [r0], #1
        ldrb r3, [r1], #-1
        cmp r2, r3
            movne r0, #0
            bne kraj

    b petlja
kraj_petlje:
    mov r0, #1

kraj:
    mov sp, fp
    pop {fp, pc}
