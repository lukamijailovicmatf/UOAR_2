.intel_syntax noprefix

.text

.global izbaci_uzajamno_proste_sa_b

# int izbaci...(int *a, unsigned n, int b);
# eax           rdi     esi         edx

izbaci_uzajamno_proste_sa_b:
    enter 0, 0

    mov r8d, 0         # r8d - len = 0
    mov ecx, 0         # ecx - i = 0

for_petlja:
    cmp ecx, esi
    je kraj_for_petlje

    mov r9d, [rdi + 4*rcx]      # r9d - a[i]

    push rdi
    push rsi
    push rdx
    push r8
    push rcx
    push r9

    mov edi, r9d
    mov esi, edx
    call nzd

    pop r9
    pop rcx
    pop r8
    pop rdx
    pop rsi
    pop rdi

    cmp eax, 1
    je nastavak_for_petlje

        mov [rdi + 4*r8], r9d
        inc r8d

nastavak_for_petlje:
    inc ecx
    jmp for_petlja

kraj_for_petlje:
    mov eax, r8d
    leave
    ret
