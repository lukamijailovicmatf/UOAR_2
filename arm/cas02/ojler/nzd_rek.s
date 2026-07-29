.text

.global nzd

.align 2

@ unsigned nzd(unsigned x, unsigned y)
@    r0            r0          r1
nzd:
    push {fp, lr}
    mov fp, sp

    cmp r1, #0
    beq kraj

    push {r1}      @ moramo da sacuvamo y na steku
    bl __umodsi3   @ r0 = x % y
    
    mov r1, r0
    pop {r0}       @ skini 4 bajta sa steka i upisi u r0
    bl nzd         @ r0 = nzd(y, x % y)

kraj:
    mov sp, fp
    pop {fp, pc}
