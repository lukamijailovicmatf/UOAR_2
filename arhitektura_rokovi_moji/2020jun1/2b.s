.intel_syntax noprefix

.text

.global suma

# int suma(int* A, int na, int* B, int nb)
# eax       rdi     esi     rdx     ecx
suma:
    enter 0, 0

    push rdi
    push rsi
    push rdx
    push rcx

    call suma_negativnih

    pop rcx
    pop rdx
    pop rsi
    pop rdi

    mov r8d, eax   # r8d - suma_A

    push rdi
    push rsi
    push rdx
    push rcx
    push r8
    push r8

    mov rdi, rdx
    mov esi, ecx
    call suma_negativnih

    pop r8
    pop r8
    pop rcx
    pop rdx
    pop rsi
    pop rdi

    add r8d, eax

    neg r8d

    mov eax, r8d    

    leave
    ret
