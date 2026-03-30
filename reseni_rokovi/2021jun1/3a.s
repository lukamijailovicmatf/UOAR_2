.intel_syntax noprefix

.text

.global stepen

# int stepen(int n, unsigned s)
# eax         edi       esi

stepen:
    enter 0, 0
    
    cmp esi, 0
    je vrati_1

    mov r8d, edi                  # r8d - proizvod
    mov ecx, 1                    # ecx - i = 1

for_petlja:
    cmp ecx, esi
    je vrati_proizvod

        mov eax, r8d              # eax - proizvod
        imul edi                  # eax - proizvod*n
        mov r8d, eax              # r8d - prozvod*n

    inc ecx
    jmp for_petlja

vrati_1:
    mov eax, 1
    jmp kraj

vrati_proizvod:
    mov eax, r8d

kraj:
    leave
    ret
