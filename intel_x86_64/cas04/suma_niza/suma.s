.intel_syntax noprefix

.text

.global suma

# int suma(int* a, int n)
# eax       rdi     esi
suma:
    enter 0, 0

    mov eax, 0      # eax - s

    mov ecx, 0      # ecx - i

for_petlja:
    cmp ecx, esi
    je for_petlja_kraj

        add eax, [rdi + 4*rcx]   # s += a[i]

    inc ecx
    jmp for_petlja
for_petlja_kraj:

    leave
    ret
