.intel_syntax noprefix

.text

.global ojler

# unsigned ojler(unsigned n)
#   eax             edi
ojler:
    enter 0, 0

    mov r11d, 0           # r11d - broj_up

    mov ecx, 1            # ecx - i

for_petlja:
    cmp ecx, edi
    je for_petlja_kraj
        push rdi
        push rcx
        push r11
        push r11

# unsigned nzd(unsigned a, unsigned b)
#   eax           edi          esi
        
        mov esi, edi
        mov edi, ecx
        call nzd       # eax - nzd(i,n)

        pop r11
        pop r11
        pop rcx
        pop rdi

        cmp eax, 1
        jne nisu_uzajamno_prosti
            inc r11d

nisu_uzajamno_prosti:

    inc ecx
    jmp for_petlja
for_petlja_kraj:

    mov eax, r11d

    leave
    ret
