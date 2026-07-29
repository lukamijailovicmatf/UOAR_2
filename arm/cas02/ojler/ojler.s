.text

.global ojler

.align 2

@ unsigned ojler(unsigned n)
@    r0              r0
ojler:
    push {fp, lr}
    mov fp, sp
    push {r4, r5, r6}    @ push-ujemo zbog poziva f-je

    mov r4, r0           @ r4 - n
    mov r5, #0           @ r5 - br_up
    mov r6, #1           @ r6 - i

for_loop:
    cmp r6, r4
    beq for_loop_end

        mov r0, r4
        mov r1, r6
        bl nzd           @ r0 = nzd(n, i)

        cmp r0, #1
            addeq r5, r5, #1

    add r6, r6, #1
    b for_loop
for_loop_end:
    mov r0, r5

    pop {r4, r5, r6}
    mov sp, fp
    pop {fp, pc}

