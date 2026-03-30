.text

.global argmaxes

.align 2

@ void argmaxes(unsigned **A, int n, int m, int *args)
@ -             r0           r1     r2     r3

argmaxes:
    push {fp, lr}
    mov fp, sp

    push {r4-r6}

    mov r4, #0          @ r4 - i = 0

for_petlja:
    cmp r4, r1
    bge kraj

        push {r0-r5}
            mov r1, r2
            ldr r5, [r0, r4, lsl #2] @ r5 - a[i]
            mov r0, r5
            bl argmax
            mov r6, r0      @ obavezno ovako!!! a ne odmah str r0, [r3, r4, lsl #2] -- SEG FAULT jer je sve promenjeno posle poziva f-je
        pop {r0-r5}

        str r6, [r3, r4, lsl #2]

    add r4, r4, #1
    b for_petlja

kraj:
    pop {r4-r6}

    mov sp, fp
    pop {fp, pc}
