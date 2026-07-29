.text

.global mala_u_velika

.align 2

@ void mala_u_velika(char *s)
@  -                    r0
mala_u_velika:
    push {fp, lr}
    mov fp, sp

    mov r1, #0   @ r1 - i

for_petlja:
    ldrb r2, [r0, r1]  @ r2 - s[i]
    cmp r2, #0
    beq for_petlja_kraj

        cmp r2, #'a'
        blt nastavak

            cmp r2, #'z'
            bgt nastavak

                sub r2, r2, #'a'
                add r2, r2, #'A'
                strb r2, [r0, r1] @ OBAVEZNOOO !!!

    nastavak:

    add r1, r1, #1
    b for_petlja
for_petlja_kraj:

    mov r0, r2

    mov sp, fp
    pop {fp, pc}
