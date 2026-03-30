.text

.global transformisi

.align 2

@ int transformisi(int n);
@ r0                r0

transformisi:
    push {fp, lr}
    mov fp, sp

    push {r4-r7}

    mov r2, #0      @ r2 - novi_broj = 0
    mov r3, #1      @ r3 - dekada = 1
    mov r4, r0      @ r4 - kopija_n
    
    cmp r0, #0
        neglt r0, r0

while_petlja:
    cmp r0, #0
    ble kraj_petlje

        push {r0-r4}
        mov r1, #10
        bl __modsi3     @ r0 = n % 10
        mov r5, r0      @ r5 - cifra
        pop {r0-r4}

        push {r0-r5}
        mov r0, r5
        mov r1, #2
        bl __modsi3     @ r0 = cifra % 2
        mov r6, r0      @ r6 = cifra % 2
        pop {r0-r5}

        cmp r6, #0
            mlane r2, r5, r3, r2  @r2 += r5 * r3
            movne r7, #10
            mulne r3, r7, r3

    push {r0-r6}
    mov r1, #10
    bl __divsi3     @ n = n / 10
    mov r7, r0
    pop {r0-r6}

    mov r0, r7
    b while_petlja

kraj_petlje:

    cmp r4, #0
        neglt r2, r2

    mov r0, r2
    pop {r4-r7}

    mov sp, fp
    pop {fp, pc}
