.text

.global secret

.align 2

@ unsigned secret(unsigned n)
@    r0              r0
secret:
    push {fp, lr}
    mov fp, sp
    push {r4, r5}

    mov r4, r0        @ r4 - n
petlja:
    cmp r4, #10
    blo kraj_petlje

        mov r5, #0    @ r5 - suma_c
    unutrasnja_petlja:
        cmp r4, #0
        beq unutrasnja_petlja_kraj

            mov r0, r4
            mov r1, #10
            bl __umodsi3     @ r0 = n % 10

            add r5, r5, r0

            mov r0, r4
            mov r1, #10
            bl __udivsi3     @ r0 = n / 10

            mov r4, r0

        b unutrasnja_petlja
    unutrasnja_petlja_kraj:
            
            mov r4, r5

    b petlja
kraj_petlje:

    mov r0, r4

    pop {r4, r5}
    mov sp, fp
    pop {fp, pc}
