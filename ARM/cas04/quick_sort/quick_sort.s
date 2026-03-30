.text

.global quick_sort

.align 2

@ void quick_sort(int* a, int l, int d)
@   -               r0      r1     r2
quick_sort:

    push {fp, lr}
    mov fp, sp

    cmp r1, r2
    bge kraj

    push {r4-r7}

    ldr r3, [r0, r1, lsl #2]     @ r3 - pivot = a[l]
    mov r4, r1                   @ r4 - m_piv = l
    add r5, r1, #1               @ r5 - i = l+1

for_loop:
    cmp r5, r2
    bgt for_loop_end

        ldr r6, [r0, r5, lsl #2]     @ r6 - a[i]
        cmp r6, r3
        bgt dalje
            add r4, r4, #1
            ldr r7, [r0, r4, lsl #2]    @ r7 - tmp = a[m_piv]
            str r6, [r0, r4, lsl #2]
            str r7, [r0, r5, lsl #2]
    dalje:
    add r5, r5, #1
    b for_loop
for_loop_end:

    ldr r5, [r0, r4, lsl #2]        @ r5 - a[m_piv]
    str r5, [r0, r1, lsl #2]        @ a[l] = a[m_piv]
    str r3, [r0, r4, lsl #2]        @ a[m_piv] = pivot

    push {r0-r3}
    @ quick_sort(a, l, mesto_pivota-1)
    sub r2, r4, #1
    bl quick_sort
    pop {r0-r3}

    push {r0-r3}
    @ quick_sort(a, mesto_pivota+1, d)
    add r1, r4, #1
    bl quick_sort
    pop {r0-r3}

    pop {r4-r7}

kraj:

    mov sp, fp
    pop {fp, pc}
