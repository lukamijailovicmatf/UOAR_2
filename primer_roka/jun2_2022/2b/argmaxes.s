.text

.global argmaxes

.align 2

@ extern void argmaxes(unsigned **A, int n, int m, int *args)
@      -                                  r0                 r1      r2           r3

argmaxes:

	push {fp, lr}
	mov fp, sp
	push {r4-r5}
	
	mov r4, #0 @ r4 - i
	
for_loop:
	cmp r4, r1
	beq for_loop_end
	
		push {r0-r3}
			
		ldr r0, [r0, r4, lsl #2] @ r0 - A[i]
		mov r1, r2 @ r1 - m
		bl argmax @ r0 = argmax(A[i], m)
		mov r5, r0 @ r5 = argmax(A[i], m)
		
		pop {r0-r3}
	
		str r5, [r3, r4, lsl #2] @ args[i] = argmax(A[i], m)
	
	add r4, r4, #1
	b for_loop
for_loop_end:
	pop {r4-r5}	
	mov sp, fp
	pop {fp, pc}
