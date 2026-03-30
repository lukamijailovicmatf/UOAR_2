.text

.global arm_strlen

.align 2

@ int arm_strlen(const char *s)
@ r0                  r0
arm_strlen:
    push {fp, lr}
    mov fp, sp

    mov r1, #0                @ r1 - duzina

petlja:
    ldrb r2, [r0, r1]         @ r2 - s[duzina]
    cmp r2, #0
    beq kraj_petlje
        add r1, r1, #1

    b petlja
kraj_petlje:

    mov r0, r1

    mov sp, fp
    pop {fp, pc}
