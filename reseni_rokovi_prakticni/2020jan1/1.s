.intel_syntax noprefix

.text

.global stepen

# unsigned stepen(unsigned n)
#    eax              edi
stepen:
    enter 0, 0

    mov esi, 1   # esi - rez

petlja:
    cmp esi, edi
    jg petlja_kraj

        mov eax, esi
        mov ecx, 2
        mul ecx      # eax = rez*2

        mov esi, eax

    jmp petlja
petlja_kraj:

    mov eax, esi

    leave
    ret
