.text

.global add

.align 2

@ int add(int x, int y)
@ r0        r0    r1
add:
    push {fp, lr}
    mov fp, sp

    add r0, r0, r1

    mov sp, fp
    pop {fp, pc}
