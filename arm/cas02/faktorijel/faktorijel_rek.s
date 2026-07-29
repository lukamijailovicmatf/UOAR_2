.text

.global faktorijel

.align 2

@ unsigned faktorijel(unsigned n)
@    r0                  r0
faktorijel:

    push {fp, lr}
    mov fp, sp

    cmp r0, #0
        moveq r0, #1
        beq kraj

    push {r0}  @ cuvamo n na steku da ne bi f-ja izmenila
    sub r0, r0, #1
    bl faktorijel      @ r0 - faktorijel(n-1)
    pop {r1}           @ r1 = n

    mul r0, r1, r0     @ n * faktorijel(n-1)

kraj:
    mov sp, fp
    pop {fp, pc}
