.text

.global stepen

.align 2

@ unsigned stepen(unsigned n);
@    r0              r0
stepen:
    push {fp, lr}
    mov fp, sp

    mov r1, #1      @ r1 - proizvod = 1
    mov r2, #2

while:
    cmp r1, r0
    bgt kraj

        mul r1, r2, r1

    b while
while_kraj:

    mov r0, r1
    
    mov sp, fp
    pop {fp, pc}
