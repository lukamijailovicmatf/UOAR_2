.text

.global broj_ponavljanja

.align 2

@ int broj_ponavljanja(char* str, char c)
@ r0                   r0         r1

broj_ponavljanja:
    push {fp, lr}
    mov fp, sp

    push {r4}

    mov r2, #0      @ r2 - s = 0
    mov r3, #0      @ r3 - i = 0

petlja:
    ldrb r4, [r0, r3]       @ r4 - str[i]
    cmp r4, #0
    beq kraj

        cmp r4, r1
            addeq r2, r2, #1

    add r3, r3, #1
    b petlja

kraj:
    mov r0, r2
    
    pop {r4}

    mov sp, fp
    pop {fp, pc}
