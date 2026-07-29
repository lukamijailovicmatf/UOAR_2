.intel_syntax noprefix

.text

.global stepen

# int stepen(int n, unsigned s)
# eax         edi       esi
stepen:
    enter 0, 0

    cmp esi, 0
    je vrati_1

    mov r8d, edi   # r8d - rez
    mov ecx, 1     # ecx - i

for_petlja:
    cmp ecx, esi
    je vrati_rez

        mov eax, r8d
        imul edi     # eax = rez * n
        mov r8d, eax

    inc ecx
    jmp for_petlja

vrati_1:
    mov eax, 1
    jmp kraj

vrati_rez:
    mov eax, r8d

kraj:
    leave
    ret
