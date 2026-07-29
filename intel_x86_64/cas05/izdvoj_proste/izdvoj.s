.intel_syntax noprefix

.text

.global prost
.global izdvoj_proste

# int prost(int n)
# eax        edi
prost:
    enter 0, 0

    cmp edi, 1
    jne nije_jedan
        mov eax, 0
        leave
        ret

nije_jedan:

    mov ecx, 2         # ecx - i

for_petlja_prost:
    cmp ecx, edi
    jge for_petlja_prost_kraj

        mov eax, edi
        cdq
        idiv ecx     # eax = n / i   edx = n % i

        cmp edx, 0
        jne nije_deljiv
            mov eax, 0
            leave
            ret

    nije_deljiv:

    inc ecx
    jmp for_petlja_prost
for_petlja_prost_kraj:

    mov eax, 1

    leave
    ret

# int izdvoj_proste(int* a, int n, int* b)
# eax                rdi     esi     rdx
izdvoj_proste:
    enter 0, 0

    mov r10d, 0        # r10d - n_b

    mov ecx, 0         # ecx - i
for_petlja_izdvoj_proste:
    cmp ecx, esi
    je for_petlja_izdvoj_proste_kraj

        mov r8d, [rdi+4*rcx]   # r8d - a[i]

        push rdi
        push rsi
        push rdx
        push r10
        push rcx
        push r8

        mov edi, r8d
        call prost           # eax - prost(a[i])

        pop r8
        pop rcx
        pop r10
        pop rdx
        pop rsi
        pop rdi

        cmp eax, 0
        je nije_prost
            mov [rdx+4*r10], r8d
            inc r10d

    nije_prost:

    inc ecx
    jmp for_petlja_izdvoj_proste
for_petlja_izdvoj_proste_kraj:

    mov eax, r10d

    leave
    ret

