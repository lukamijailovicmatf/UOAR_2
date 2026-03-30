.text

.global nzd

.align 2

@ unsigned nzd(unsigned x, unsigned y)
@   r0            r0           r1
nzd:
    push {fp, lr}
    mov fp, sp
    push {r4, r5}
    
@ zbog poziva funkcije __umodsi3 koristimo registre r4 i r5
    mov r4, r0          @ r4 - x
    mov r5, r1          @ r5 - y

petlja:
    cmp r5, #0
    beq kraj_petlje

        mov r0, r4
        mov r1, r5
        bl __umodsi3    @ r0 - tmp = x % y
        
        mov r4, r5      @ x = y
        mov r5, r0      @ y = tmp

    b petlja
kraj_petlje:
    mov r0, r4

    pop {r4, r5}
    mov sp, fp
    pop {fp, pc}
