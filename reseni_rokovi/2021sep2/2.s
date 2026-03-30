.text

.global mala_u_velika

.align 2

@ void mala_u_velika(char *s) 
@ -                     r0

@ ldrb!!!!!!! - ZBOG KARAKTERAAAA

mala_u_velika:
    push {fp, lr}
    mov fp, sp

    mov r1, #0          @ r1 - i = 0

petlja:
    ldrb r2, [r0, r1]       @ r2 - s[i]
    cmp r2, #0
    beq kraj_petlje

        cmp r2, #'a'
        blt nastavak_petlje

            cmp r2, #'z'
            bgt nastavak_petlje

                sub r2, r2, #'a'
                add r2, r2, #'A'
                strb r2, [r0, r1]

nastavak_petlje:
    add r1, r1, #1
    b petlja

kraj_petlje:
    mov sp, fp
    pop {fp, pc}
