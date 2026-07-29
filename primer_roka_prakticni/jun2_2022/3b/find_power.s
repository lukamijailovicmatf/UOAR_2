.intel_syntax noprefix

.text

.global find_power

# int find_power(int n, int k, int *ms, int nm)
#     eax                edi    esi     rdx      ecx

find_power:
	enter 0, 0
	
	mov r8d , ecx               # r8d - nm
	mov ecx, 0                   # ecx - i
	
for_petlja:	
	cmp ecx, r8d
	je for_petlja_kraj

	                mov r9d, [rdx + 4*rcx]                  # r9d - ms[i]
		
		push rdi
		push rsi
		push rdx
		push rcx
		push r8
		push r9
		
		# edi - n
		mov esi, r9d                # esi - ms[i] 
		call power                   # eax = power(n, ms[i])
		inc eax                        # eax += 1

		pop r9
		pop r8
		pop rcx
		pop rdx
		pop rsi
		pop rdi
		
		cmp esi, eax 
		jne nastavak
	                     mov eax, ecx
		      jmp kraj
		
	nastavak:
	inc ecx
	jmp for_petlja
for_petlja_kraj:
	mov eax, -1
kraj:
	leave
	ret
