.text

.global binary_search

.align 2

@ int binary_search(int* a, int n, int x)
@  r0                r0       r1    r2
binary_search:
    push {fp, lr}
    mov fp, sp

    push {r4-r5}

    mov r3, #0          @ r3 - l = 0
    sub r1, r1, #1      @ r1 - d = n-1
    
loop:
    cmp r3, r1
    beq loop_end

        add r4, r3, r1          @ r4 = l + d

        @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
        @ push {r0-r3}
        @ mov r0, r4          @ r0 = l + d
        @ mov r1, #2          @ r1 = 2
        @ bl __divsi3         @ r0 = r0 / r1 -> r0 = (l + d)/2
        @ pop {r0-r3}
        @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
        
        mov r4, r4, lsr #1      @ r4 - s = (l + d)/2

        ldr r5, [r0, r4, lsl #2]   @ r5 - a[s]
        cmp r5, r2
        @ a[s] == x
            moveq r0, r4
            beq kraj
        @ a[s] < x
            addlt r3, r4, #1
        @ a[s] > x
            subgt r1, r4, #1

    b loop
loop_end:
    mov r0, #-1

kraj:
    pop {r4-r5}

    mov sp, fp
    pop {fp, pc}
