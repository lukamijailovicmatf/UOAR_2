.text

.global najcesci_karakter

.align 2

@ char najcesci_karakter(char* plast, char* igla);
@ r0                     r0              r1

najcesci_karakter:
    push {fp, lr}
    mov fp, sp

    sub sp, #1024

    push {r4-r7}

    sub r2, fp, #1024       @ r2 - brojaci[]
    mov r3, #0              @ r3 - i = 0
    mov r4, #0              @ r4 = 0

petlja_1:
    cmp r3, #256
    beq kraj_petlje_1

        str r4, [r2, r3, lsl #2]
    
    add r3, r3, #1
    b petlja_1

kraj_petlje_1:

    mov r3, #0              @ r3 - i = 0

petlja_2:
    ldrb r4, [r1, r3]       @ r4 - igla[i]
    cmp r4, #0
    beq kraj_petlje_2

        push {r0-r3}
        mov r1, r4
        bl broj_ponavljanja
        mov r5, r0
        pop {r0-r3}

        str r5, [r2, r4, lsl #2]

    add r3, r3, #1
    b petlja_2

kraj_petlje_2:

    mov r3, #0                  @ r3 - i = 0
    ldrb r4, [r1]               @ r4 - max_char
    ldr r5, [r2, r4, lsl #2]    @ r5 - max_pon

petlja_3:
    ldrb r6, [r1, r3] @r6 - needle[i]
    cmp r6, #0
    beq kraj_petlje_3

        ldr r7, [r2, r6, lsl #2]  @ r7 - brojaci[igla[i]]
        cmp r5, r7
            movlt r5, r7
            movlt r4, r6

    add r3, r3, #1
    b petlja_3

kraj_petlje_3:

    mov r0, r4
    pop {r4-r7}

    mov sp, fp
    pop {fp, pc}
