.intel_syntax noprefix

.text

.global power

# int power(int n, int m)
#   eax      edi    esi

power:
	enter 0, 0
	
	mov eax, 1 # eax - p
	mov ecx, 0 # ecx - i
	
for_petlja:
	cmp ecx, esi
	je for_petlja_kraj
		
		imul edi
						
	inc ecx
	jmp for_petlja

for_petlja_kraj:
	leave
	ret	
