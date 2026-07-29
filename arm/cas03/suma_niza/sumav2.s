.text

.global suma

.align 2

@ int suma(int* a, int n)
@ r0         r0      r1
suma:
    push {fp, lr}
    mov fp, sp

    push {r4}

    mov r2, #0           @ r2 - s = 0
    mov r3, #0           @ r3 - i = 0

for_loop:
    cmp r3, r1
    beq for_loop_end

        ldr r4, [r0, r3, lsl #2]     @ r4 - a[i]
        add r2, r2, r4               @ r2 - s = s + a[i]

    add r3, r3, #1
    b for_loop
for_loop_end:

    mov r0, r2

    pop {r4}

    mov sp, fp
    pop {fp, pc}
