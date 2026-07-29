.text

.global max_element

.align 2

@ int max_element(int* a, int n)
@ r0                r0     r1
max_element:
    push {fp, lr}
    mov fp, sp

    push {r4}

    ldr r2, [r0]           @ r2 - max = a[0]
    mov r3, #1             @ r3 - i = 1

for_loop:
    cmp r3, r1
    beq for_loop_end

        ldr r4, [r0, r3, lsl #2]     @ r4 = a[i]
        cmp r4, r2
            movgt r2, r4 

    add r3, r3, #1
    b for_loop
for_loop_end:

    mov r0, r2

    pop {r4}

    mov sp, fp
    pop {fp, pc}
