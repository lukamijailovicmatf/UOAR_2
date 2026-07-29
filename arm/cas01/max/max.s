.text

.global max

.align 2

@ int max(int x, int y)
@  r0       r0     r1
max:

    push {fp, lr}
    mov fp, sp

    cmp r0, r1
    	movlt r0, r1

    mov sp, fp
    pop {fp, pc}
