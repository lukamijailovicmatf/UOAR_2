.intel_syntax noprefix

.text

.global savrsen_stepen

# int savrsen_stepen(unsigned n, unsigned *pm, unsigned *pk)
# eax                   edi          rsi           rdx
savrsen_stepen:
    enter 0, 0

    mov ecx, 2       # ecx - m
    
    mov r10, rdx     # r10 - pk

for_petlja:
    cmp ecx, edi
    je for_petlja_kraj

        mov eax, ecx
        mul ecx                  # eax - stepen

        mov r8d, 2               # r8d - k

    petlja:
        cmp eax, edi
        ja petlja_kraj

            cmp eax, edi
            jne nisu_jednaki
                mov [rsi], ecx
                mov [r10], r8d
                mov eax, 1
                leave
                ret

        nisu_jednaki:

            mul ecx           # eax *= m
            inc r8d

    petlja_kraj:

    inc ecx
    jmp for_petlja
for_petlja_kraj:

    mov eax, 0

    leave
    ret
