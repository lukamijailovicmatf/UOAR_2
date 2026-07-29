.text

.global argmax

.align 2

@ int argmax(unsigned *a, int n)
@   r0         r0          r1

argmax:
	push {fp, lr}
	mov fp, sp
	push {r4-r5}
	
	mov r2, #0 @ r2 - max_i = 0
	ldr r3, [r0] @ r3 - max = a[0]
	
	mov r4, #1 @ r4 - i

for_loop:
	cmp r4, r1
	beq for_loop_end
	
		ldr r5, [r0, r4, lsl #2] @ r5 - a[i]
		
		cmp r5, r3
			movhi r3, r5
			movhi r2, r4
		
	add r4, r4, #1
	b for_loop
for_loop_end:
	mov r0, r2
	
	pop {r4-r5}
	mov sp, fp
	pop {fp, pc}
