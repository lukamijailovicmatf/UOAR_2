.text

.global izmeni_niz

.align 2

@ void izmeni_niz(int *a, unsigned n);
@ -               r0      r1

izmeni_niz:
    push {fp, lr}
    mov fp, sp

    push {r4}

    mov r2, #0          @ r2 - i = 0

for_petlja:
    cmp r2, r1
    beq kraj_for_petlje

        ldr r3, [r0, r2, lsl #2]   @ r3 - a[i]
        
        push {r0-r3}
        mov r0, r3
        mov r1, #2
        bl __modsi3
        mov r4, r0      @ r4 - a[i] % 2
        pop {r0-r3}

        cmp r4, #0
        bne else_grana

            push {r0-r3}
            mov r0, r3
            mov r1, #10
            bl __modsi3
            mov r4, r0      @ r4 - a[i] % 10
            pop {r0-r3}

            str r4, [r0, r2, lsl #2]

            b nastavak_for_petlje


        else_grana:
            
            push {r0-r3}
            mov r0, r3
            bl suma_parnih
            mov r4, r0      @ r4 - suma_parnih(a[i])
            pop {r0-r3}

            str r4, [r0, r2, lsl #2]

nastavak_for_petlje:
    add r2, r2, #1
    b for_petlja

kraj_for_petlje:
    pop {r4}

    mov sp, fp
    pop {fp, pc}
